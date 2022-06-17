            -- // ABOUT \\ --
newCore is a lua module library made to make your
work easy and reduce time. newCore also contains some
functions ported from RBX lua (Modified lua by roblox aka luau)
such as the "wait()" more info is in the functions info section.


            -- // Functions Info \\ --
• newCore.wait()
        ~ This function is used to stop a sector of code from running. The function 
          needs one variable which must be a int (Number) value, if the variable 
          inputed is another then a int value then it would simply throw up a print 
          in the console telling issue which interrupted while running.
          
        
• newCore.warn()
        ~ This function is used to throwup a custom print but with a " | warning" pretty useless while 
          very useful while trying to debug or tell a issue which might interrupt a piece of code. This 
          function needs 1 string which would be needed to be displayed such as " newCore.warn("Jeff ate a burger") "
          
          
• newCore.InstanceNew()
        ~ This function is used to create a file with custom name and a custom format such as .css or .txt. This function
          needs four variables; including "name, typeOFile, ToWrite, useWplus".The first variable needed should make you understood
          by its name becuase it just needs a string with the name of file to be.The second variable needs the format as if you are 
          trying to make a .txt file, you would input a string with the format name inside it such as ".txt" or any another. The function
          would compile the name and format by itself.The third variable, ToWrite is needed for the thing to write inside the file you made! [MAKE SURE ITS A STRING]
          The last variable is the "useWplus". It is used to specify if a file made would be open to write and after 1st save when the file is opened the second.0
          time, it would be removed/deleted. (Recommended to set to false! Only accepts bool statements; true and false)
          

• newCore.Join()
        ~ This function is useful to combine two strings or even int files ( NOT +) such as : newCore.Join("I am ","a human") and when executed it would return the new value! and also
          print just for debugging. Hopefully in next update it would be made optional. In terms of int values in form of strings such as ("2", "2") would return "22".
          
          
• newCore.RetunUpdateInt()
        ~ This function would basically just return the version of newCore being used.
        
• newCore.GetARandomNumber()
        ~ This function would just retrirve a random number chosen such as newCore.GetARandomNumber(1,20).First variable is the start and 2nd the ending.
        
• newCore.GenerateRandomString()
        ~ This function is the best for making keys and passing through server amd clients.The function requires only a single variable which is "length". It is used to specify how long
          the string must be such as newCore.GenerateRandomString(5). This would generate a 5 length random variable. Only numbers greater then 4 are allowed! 
          
          
• newCore.GetTotalValueLenght()
        ~ This function is used to get a total value length which could be a string or a int value.
        
        
• newCore.RetrieveLuaVersion()
        ~ This function is used to retrieve the lua of version used by your code editor or a compiler.
        
        
• newCore.CleanTable()
        ~ This function is used to clean a variable table and requires a total of 2 function variables.In the first, the variable must be the table and the second is the safeMode.
          safeMode requires true or false. SafeMode is used to prevent any issues in terms of crashing when compiling by slowing down the process. 
          


            -- // How To Use newCore \\ --
newCore is used to be imported as a lua module is imported by using
require "__MAIN" or local newCore = require "__MAIN". And used as 
newCore.wait(2) or __MAIN.wait(4)



            -- // Use of all functions in code \\ --
• newCore.wait() 
        ~ while true do 
              newCore.wait(2)
              print("Hiii")
          end
          
          
• newCore.warn()
        ~ local string
          if string == nil then
            newCore.warn("String must contain something!")
          end
          
          
• newCore.InstanceNew()
        ~ newCore.InstanceNew("information", ".txt", "I like burgers", false) --creates a file in the dir where the lua file executing is
        
        
• newCore.Join()
        ~ newCore.Join("I like ", "pizza")
        
        
• newCore.GetARandomNumber()
        ~ newCore.wait(newCore.GetARandomNumber(1,5))
        
        
• newCore.GenerateRandomString()
        ~ local key = newCore.GenerateRandomString(5)
        
        
• newCore.GetTotalValueLenght()
        ~ local lengthunknown = "iejieiejejeiieieiieieieie"
          newCore.GetTotalValueLenght(lengthunknown)
        
    
• newCore.CleanTable()
        ~ local Table = {"a","b","h","u")
          newCore.CleanTable(Table, true)


            -- // END \\--