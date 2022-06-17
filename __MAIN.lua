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
        return print("The text in warn() is nil or contains a int (number) value")
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
                print("Recheck the given values in InstanceNew() function and make sure it is not empty or nil")
    end
end


function newCore.Join(value, value1)
    if value == true or false then 
        return print("Cannot Join Bool Statements")
    end
    if value  then
       local newValue = print(value..value1)
       print(newValue)
       return newValue 
    end
end

function newCore.ReturnUpdateInt()
    local updateverison = 0.1
    return print(updateverison.." version currently in use")
end


function newCore.GetARandomNumber(from,to)
    local numberchosen = math.rad(from,to)
    print(numberchosen)
end


function newCore.GenerateRandomString(length)
    if  length > 4 then
        local RandomGenerated = ""
        for i = 1, length do
            RandomGenerated = RandomGenerated .. string.char(math.random(97, 122))
            if #RandomGenerated == length then
                print(RandomGenerated)
                return RandomGenerated
            end
        end
    end
end


function newCore.GenerateRandomizedKeyCodes()
    print("WIP")
end


function newCore.GetTotalValueLenght(type1, value)
    local retrievedValue
    if type1 == "string" and value then
        retrievedValue = #value
        print(retrievedValue)
        else
            newCore.warn("Make sure your value is a string!")
        end
end


function newCore.RetrieveLuaVersion()
    print("Current Lua Version: ".._VERSION)
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


