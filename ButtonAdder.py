
def main():
    width = 0
    index = -1
    firstButtonIndex = 0
    lastButtonIndex = 0
    buttonArea = false
    f = open("TouchKey.ahk", "rt")
    contents = f.readlines()
    f.close()
    for line in contents:
        index += 1
        if ";;;;" in line:
            if buttonArea:
                firstButtonIndex = index
            buttonArea = !buttonArea
           
        if "Show" in line:
            for word in line.split():
                if "w" in word:
                    width = int(word[1:])
        if buttonArea:
            if "\n" in line:
                lastButtonIndex = index - 1
                
            
    value = input("Do you want to add a button(Y/N)?\n")
    if value == "Y":
        
        contents.insert
    
    
if __name__=="__main__":
	main()