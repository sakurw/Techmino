local host=
    -- '127.0.0.1'
    -- '192.168.114.102'
    'game.techmino.org'
local port='10026'
local path='/tech/socket/v1'
local seckey="osT3F7mvlojIvf3/8uIsJQ=="

local Sock do
    --[[
        websocket client pure lua implement for love2d
        by flaribbit, editted by MrZ
        usage:
            local client=require("websocket").new("127.0.0.1",5000)
            function client:onmessage(s)print(s)end
            function client:onopen()self:send("hello from love2d")end
            function client:onclose()print("closed")end
            function love.update()
                client:update()
            end
    ]]
    local socket=require"socket"
    local char,byte=string.char,string.byte
    local band,bor,bxor=bit.band,bit.bor,bit.bxor
    local shl,shr=bit.lshift,bit.rshift

    ---@class wsclient
    ---@field socket table
    ---@field url table
    ---@field _head integer|nil
    Sock={}

    Sock.__index=Sock
    function Sock:onopen()end
    function Sock:onmessage(message)end
    function Sock:onerror(error)end
    function Sock:onclose(code,reason)end

    ---create websocket connection
    ---@return wsclient
    function Sock.new(_host,_port,_path,_body,_timeout)
        local m={
            socket=socket.tcp(),
            _host=_host,
            _port=_port,
            _path=_path,
            _body=_body,
            _timeout=_timeout,

            _continue="",
            _buffer="",
            _length=2,
            _head=nil,

            errMes=false,
            errCode=false,

            status='tcpopening',--'tcpopening','connecting','open','closed','closing'
        }
        m.socket:settimeout(0)
        m.socket:connect(host,port)
        setmetatable(m,Sock)
        return m
    end

    local mask_key={1,14,5,14}
    local function send(sock,opcode,message)
        -- message type
        sock:send(char(bor(0x80,opcode)))

        -- empty message
        if not message then
            sock:send(char(0x80,unpack(mask_key)))
            return 0
        end

        -- message length
        local length=#message
        if length>65535 then
            sock:send(char(bor(127,0x80),
                0,0,0,0,
                band(shr(length,24),0xff),
                band(shr(length,16),0xff),
                band(shr(length,8),0xff),
                band(length,0xff)))
        elseif length>125 then
            sock:send(char(bor(126,0x80),
                band(shr(length,8),0xff),
                band(length,0xff)))
        else
            sock:send(char(bor(length,0x80)))
        end

        -- message
        sock:send(char(unpack(mask_key)))
        local msgbyte={byte(message,1,length)}
        for i=1,length do
            msgbyte[i]=bxor(msgbyte[i],mask_key[(i-1)%4+1])
        end
        return sock:send(char(unpack(msgbyte)))
    end

    ---read a message
    ---@return string|nil res message
    ---@return number|nil head websocket frame header
    ---@return string|nil err error message
    function Sock:read()
        local res,err,part
        ::AGAIN_RECIEVE::
        res,err,part=self.socket:receive(self._length-#self._buffer)
        if err=="closed"then
            return nil,nil,err
        end
        if part or res then
            self._buffer=self._buffer..(part or res)
        else
            return nil,nil,nil
        end
        if not self._head then
            if #self._buffer<2 then
                return nil,nil,"buffer length less than 2"
            end
            local length=band(byte(self._buffer,2),0x7f)
            if length==126 then
                if self._length==2 then
                    self._length=4 goto AGAIN_RECIEVE
                end
                if #self._buffer<4 then
                    return nil,nil,"buffer length less than 4"
                end
                local b1,b2=byte(self._buffer,3,4)
                self._length=shl(b1,8)+b2
            elseif length==127 then
                if self._length==2 then
                    self._length=10
                    goto AGAIN_RECIEVE
                end
                if #self._buffer<10 then
                    return nil,nil,"buffer length less than 10"
                end
                local b5,b6,b7,b8=byte(self._buffer,7,10)
                self._length=shl(b5,24)+shl(b6,16)+shl(b7,8)+b8
            else
                self._length=length
            end
            self._head,self._buffer=byte(self._buffer,1),""
            goto AGAIN_RECIEVE
        end
        if #self._buffer>=self._length then
            local ret,head=self._buffer,self._head
            self._length,self._buffer,self._head=2,"",nil
            return ret,head,nil
        else
            return nil,nil,"buffer length less than "..self._length
        end
    end

    ---send a message
    ---@param message string
    function Sock:send(message,op)
        send(self.socket,message,op)
    end

    ---send a ping message
    ---@param message string
    function Sock:ping(message)
        send(self.socket,1--[[ping]],message)
    end

    ---send a pong message (no need)
    ---@param message any
    function Sock:pong(message)
        send(self.socket,101--[[pong]],message)
    end

    ---update client status
    function Sock:update()
        local sock=self.socket
        if self.status=='tcpopening'then
            local _,err=sock:connect("",0)
            if err=="already connected"then
                sock:send(
                    "GET "..(self._path or"/").." HTTP/1.1\r\n"..
                    "Host: "..self._host..":"..self._port.."\r\n"..
                    "Connection: Upgrade\r\n"..
                    "Upgrade: websocket\r\n"..
                    "Sec-WebSocket-Version: 13\r\n"..
                    "Sec-WebSocket-Key: "..seckey.."\r\n\r\n"
                )
                self.status='connecting'
            elseif err=="Cannot assign requested address"then
                self.errMes="TCP connection failed."
                self:onerror(self.errMes)
                self.status='closed'
            end
        elseif self.status=='connecting'then
            local res=sock:receive("*l")
            if res then
                repeat res=sock:receive("*l")until res==""
                self:onopen()
                self.status='open'
            end
        elseif self.status=='open'or self.status=='closing'then
            while true do
                local res,head,err=self:read()
                if err=="closed"then
                    self.errMes="Closed"
                    self.status='closed'
                    return
                elseif res==nil then
                    return
                end
                local opcode=band(head,0x0f)
                local fin=band(head,0x80)==0x80
                if opcode==8--[[close]]then
                    if res~=""then
                        self.errCode=shl(byte(res,1),8)+byte(res,2)
                        self.errMes=res:sub(3)
                        self:onclose(self.errCode,self.errMes)
                    else
                        self:onclose(1005,"")
                    end
                    sock:close()
                    self.status='closed'
                elseif opcode==9--[[ping]]then
                    self:pong(res)
                elseif opcode==0--[[continue]]then
                    self._continue=self._continue..res
                    if fin then self:onmessage(self._continue)end
                else
                    if fin then self:onmessage(res)else self._continue=res end
                end
            end
        end
    end

    ---close websocket connection
    ---@param code integer|nil
    ---@param message string|nil
    function Sock:close(code,message)
        if code and message then
            send(self.socket,8--[[close]],char(shr(code,8),band(code,0xff))..message)
        else
            send(self.socket,8--[[close]],nil)
        end
        self.status='closing'
    end
end

local type=type
local timer=love.timer.getTime

local WS={}
local wsList=setmetatable({},{
    __index=function(l,k)
        local ws={
            sock=nil,
            real=false,
            status='dead',
            lastPongTime=timer(),
            sendTimer=0,
            alertTimer=0,
            pongTimer=0,
        }
        l[k]=ws
        return ws
    end
})

function WS.switchHost(_1,_2,_3)
    for k in next,wsList do
        WS.close(k)
    end
    host=_1
    port=_2 or port
    path=_3 or path
end

function WS.connect(name,subPath,body,timeout)
    local ws={
        real=true,
        sock=Sock.new(host,port,path..subPath,body or"",timeout or 2.6),
        lastPingTime=0,
        lastPongTime=timer(),
        pingInterval=6,
        status='connecting',--'connecting', 'running', 'dead'
        sendTimer=0,
        alertTimer=0,
        pongTimer=0,
    }
    wsList[name]=ws
end

function WS.status(name)
    local ws=wsList[name]
    return ws.status
end

function WS.getTimers(name)
    local ws=wsList[name]
    return ws.pongTimer,ws.sendTimer,ws.alertTimer
end

function WS.setPingInterval(name,time)
    local ws=wsList[name]
    ws.pingInterval=math.max(time or 2.6,2.6)
end

function WS.alert(name)
    local ws=wsList[name]
    ws.alertTimer=2.6
end

local OPcode={
    continue=0,
    text=1,
    binary=2,
    close=8,
    ping=9,
    pong=10,
}
function WS.send(name,message,op)
    if type(message)=='string'then
        local ws=wsList[name]
        if ws.real and ws.status=='running'then
            ws.sock:send(message,op and OPcode[op]or 2)
            ws.lastPingTime=timer()
            ws.sendTimer=1
        end
    else
        MES.new('error',"Attempt to send non-string value!")
        MES.traceback()
    end
end

function WS.read(name)
    local ws=wsList[name]
    if ws.real and ws.status~='connecting'then
        local message=ws.sock:read()
        if message then
            ws.lastPongTime=timer()
            ws.pongTimer=1
            return message
        end
    end
end

function WS.close(name)
    local ws=wsList[name]
    if ws.real then
        ws.sock:close()
        ws.status='dead'
    end
end

function WS.update(dt)
    local time=timer()
    for name,ws in next,wsList do
        if ws.real and ws.status~='dead'then
            if ws.sock.status=='tcpopening'then
                ws.sock:update()
                if ws.sock.status=='closed'then
                    ws.status='dead'
                    MES.new('warn',text.wsFailed)
                end
            elseif ws.sock.status=='connecting'then
                ws.sock:update()
                if ws.sock.status=='open'then
                    ws.status='running'
                    ws.lastPingTime=time
                    ws.lastPongTime=time
                    ws.pongTimer=1
                end
            elseif ws.sock.status=='open'or ws.sock.status=='closing'then
                ws.sock:update()
                if ws.sock.status=='closed'then
                    ws.status='dead'
                    MES.new('warn',text.wsClose..(ws.sock.errMes or"Closed"))
                    WS.alert(name)
                end
            end
            if ws.sendTimer>0 then ws.sendTimer=ws.sendTimer-dt end
            if ws.pongTimer>0 then ws.pongTimer=ws.pongTimer-dt end
            if ws.alertTimer>0 then ws.alertTimer=ws.alertTimer-dt end
        end
    end
end

return WS
