local next,type=next,type
local TABLE={}

--Get a new filled table
function TABLE.new(val,count)
	local L={}
	for i=1,count do
		L[i]=val
	end
	return L
end

--Get a copy of [1~#] elements
function TABLE.shift(org)
	local L={}
	for i=1,#org do
		if type(org[i])~='table'then
			L[i]=org[i]
		else
			L[i]=TABLE.shift(org[i])
		end
	end
	return L
end

--Get a full copy of a table
function TABLE.copy(org)
	local L={}
	for k,v in next,org do
		if type(v)~='table'then
			L[k]=v
		else
			L[k]=TABLE.copy(v)
		end
	end
	return L
end

--For all things in new if same type in base, push to old
function TABLE.update(new,old)
	for k,v in next,new do
		if type(v)==type(old[k])then
			if type(v)=='table'then
				TABLE.update(v,old[k])
			else
				old[k]=v
			end
		end
	end
end

--For all things in new if no val in base, push to old
function TABLE.complete(new,old)
	for k,v in next,new do
		if type(v)=='table'then
			if old[k]==nil then old[k]={}end
			TABLE.complete(v,old[k])
		elseif old[k]==nil then
			old[k]=v
		end
	end
end

--Remove positive integer index of table
function TABLE.cut(G)
	for i=#G,1,-1 do
		G[i]=nil
	end
end

--Clear table
function TABLE.clear(G)
	for k in next,G do
		G[k]=nil
	end
end

--Find value in [1~#]
function TABLE.find(t,val)
	for i=1,#t do if t[i]==val then return i end end
end

--Find value in whole table
function TABLE.search(t,val)
	for k,v in next,t do if v==val then return k end end
end

--Re-index string value of a table
function TABLE.reIndex(org)
	for k,v in next,org do
		if type(v)=='string'then
			org[k]=org[v]
		end
	end
end

--Dump a simple lua table
do--function TABLE.dump(L,t)
	local find=string.find
	local tabs={
		[0]="",
		"\t",
		"\t\t",
		"\t\t\t",
		"\t\t\t\t",
		"\t\t\t\t\t",
	}
	local function dump(L,t)
		local s
		if t then
			s="{\n"
		else
			s="return{\n"
			t=1
			if type(L)~='table'then
				return
			end
		end
		local count=1
		for k,v in next,L do
			local T=type(k)
			if T=='number'then
				if k==count then
					k=""
					count=count+1
				else
					k="["..k.."]="
				end
			elseif T=='string'then
				if find(k,"[^0-9a-zA-Z_]")then
					k="[\""..k.."\"]="
				else
					k=k.."="
				end
			elseif T=='boolean'then k="["..k.."]="
			else error("Error key type!")
			end
			T=type(v)
			if T=='number'then v=tostring(v)
			elseif T=='string'then v="\""..v.."\""
			elseif T=='table'then v=dump(v,t+1)
			elseif T=='boolean'then v=tostring(v)
			else error("Error data type!")
			end
			s=s..tabs[t]..k..v..",\n"
		end
		return s..tabs[t-1].."}"
	end
	TABLE.dump=dump
end

return TABLE