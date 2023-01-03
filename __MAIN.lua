--[[// MixedMitches 

    3:03pm
    
    Fri, 17 June 2022]]

local newCore = {}


function newCore.wait(seconds)
    if seconds == nil or type(seconds) == "string" then
        print("Error while running wait() function because of wait() variable being nil or a string!")
        else
            if seconds > 0 then
                local start = os.time()
                repeat until os.time() > start + seconds
        end
    end
end


function newCore.warn(text)
    if text == nil then
        return false
        else
            print(text.." | Warning")
    end
end


function newCore.InstanceNew(name, typeOFile, ToWrite, useWplus)
    if name and typeOFile and ToWrite then
        local filenameCombined = name..typeOFile
        local strdom = "."
        local useOfnew = false --default
        if string.find(typeOFile, ".") then
            useOfnew = true
        end
        if useOfnew == true then
            print("Building a file named "..name.." as a "..typeOFile)
            elseif useOfnew == false then
                print("Building a file named "..name.." as a ."..typeOFile.." file")
            end

            print(filenameCombined)
            if useWplus == true then 
               file = io.open(filenameCombined, "w+")
                io.input(file)
                io.output(file)
                io.write(ToWrite)
                io.close(file)
                print("Success")
                else
                    
            
            file1 = io.open(filenameCombined, "w")
            io.input(file1)
            io.output(file1)
            io.write(ToWrite) 
            io.close()
            print("Success")
            end
        else
                return false
    end
end


function newCore.Join(value, value1)
    if value == true or false then 
        return false
    end
    if value  then
       local newValue = print(value..value1)
       return newValue 
    end
end

function newCore.ReturnUpdateInt()
    return 0.2
end


function newCore.GetARandomNumber(from,to)
    return math.rad(from,to)
end


function newCore.GenerateRandomString(length)
    if  length > 4 then
        local RandomGenerated = ""
        for i = 1, length do
            RandomGenerated = RandomGenerated .. string.char(math.random(97, 122))
            if #RandomGenerated == length then
                return RandomGenerated
            end
        end
    end
end


function newCore.GenerateRandomizedKeyCodes()
    print("WIP")
end


function newCore.GetTotalValueLenght(type1, value)
    if type1 == "string" and value then
        return #value
        else
            return false
        end
end


function newCore.RetrieveLuaVersion()
    return _VERSION
end


function newCore.CleanTable(TableVariable, safeMode)
    if safeMode == true then
        for p in pairs(TableVariable)do
            newCore.wait(0.2)
            TableVariable[p] = nil
        end
    end
    if safeMode == false then
    for k in pairs (TableVariable) do
        TableVariable[k] = nil
        print("Successfully cleaned the table")
    end
    end
end

return newCore


