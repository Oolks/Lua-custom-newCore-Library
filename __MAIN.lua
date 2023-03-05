--[[// Oolks 

    3:03pm
    
    Fri, 17 June 2022]]

local newCore = {}

function newCore.wait(seconds)
    if type(seconds) ~= "number" or seconds <= 0 then
        return false
    end
    
    local start = os.time()
    repeat until os.time() > start + seconds
end

function newCore.InstanceNew(name, typeOFile, ToWrite, useWplus)
    if not name or not typeOFile or not ToWrite then
        return false
    end
    
    if not string.find(typeOFile, "%.") then
        typeOFile = "." .. typeOFile
    end
    
    print("Building a file named " .. name .. " as a " .. typeOFile)
    
    local mode = useWplus and "w+" or "w"
    local file = io.open(name .. typeOFile, mode)
    if not file then
        return false
    end
    
    io.write(file, ToWrite)
    io.close(file)
    
    return true
end

function newCore.Join(value, value1)
    if type(value) ~= "string" or type(value1) ~= "string" then
        return false
    end
    
    print(value .. value1)
    return true
end

function newCore.ReturnUpdateInt()
    return 0.2
end

function newCore.GetARandomNumber(from, to)
    return math.random(from, to)
end

function newCore.GenerateRandomString(length)
    if length < 5 then
        return false
    end
    
    local chars = {}
    for i = 97, 122 do
        chars[#chars + 1] = string.char(i)
    end
    
    local randomStr = ""
    for i = 1, length do
        randomStr = randomStr .. chars[math.random(#chars)]
    end
    
    return randomStr
end

function newCore.GenerateRandomizedKeyCodes()
    return string.format("%04x%04x-%04x-%04x-%04x-%04x%04x%04x",
        math.random(0, 0xffff), math.random(0, 0xffff),
        math.random(0, 0xffff), math.random(0, 0xfff) + 0x4000,
        math.random(0, 0x3fff) + 0x8000, math.random(0, 0xffff), math.random(0, 0xffff))
end

function newCore.GetTotalValueLength(value)
    if type(value) ~= "string" then
        return false
    end
    
    return #value
end

function newCore.RetrieveLuaVersion()
    return _VERSION
end

function newCore.CleanTable(TableVariable, safeMode)
    if type(TableVariable) ~= "table" then
        return false
    end
    
    if safeMode then
        for k in pairs(TableVariable) do
            newCore.wait(0.2)
            TableVariable[k] = nil
        end
    else
        for k in pairs(TableVariable) do
            TableVariable[k] = nil
        end
    end
    
    return true
end

return newCore

