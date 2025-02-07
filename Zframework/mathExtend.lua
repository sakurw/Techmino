local MATH={}for k,v in next,math do MATH[k]=v end

local rnd=math.random

MATH.tau=2*math.pi

function MATH.sign(a)
    return a>0 and 1 or a<0 and -1 or 0
end

function MATH.roll(chance)
    return rnd()<(chance or .5)
end

function MATH.coin(a,b)
    if rnd()<.5 then
        return a
    else
        return b
    end
end

function MATH.interval(v,low,high)
    if v<=low then
        return low
    elseif v>=high then
        return high
    else
        return v
    end
end

function MATH.expApproach(a,b,k)
    return b+(a-b)*2.718281828459045^-k
end

return MATH