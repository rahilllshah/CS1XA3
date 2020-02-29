
# CS 1XA3 Project01 - shahr39

## Usage 

### Feature 01 [6.1] | Script Input

Access and make the script executable: 
*chmod +x CS1XA3/Project01/project_analyze.sh*

**Execution**
- ./CS1XA3/Project01/project_analyze.sh *argument*
> The possible *arguments* that execute the respective features are as follows:
>> feature02
>>feature03 
>> feature04 
>> feature05 
>> feature06 
>> feature07 
>> custom01 
>> custom02 

**References**
- https://www.devdungeon.com/content/taking-command-line-arguments-bash	
	> Creating an interactive script through arguments
##

### Feature 02 [6.2] | FIXME Log

**Description**
- This feature will find and document all the file names that contain "#FIXME" on the last line
	> The list of the files will be located in *CS1XA3/Project01/fixme.log*
	
**Execution**
If in Project01 directory:
- ./project_analyze.sh feature02

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh feature02
	
**References**
- https://unix.stackexchange.com/questions/286544/how-to-extract-first-and-last-lines-in-a-file
	> Extracting the last line of a file using "tail"
- https://unix.stackexchange.com/questions/370889/test-if-a-string-contains-a-substring
	> How to check if a line contains "#FIXME"

### Feature 03 [6.3] | Checkout Latest Merge

**Description**
- This feature will checkout the most recent merge that consisted of the word "merge" in its commit message. If there are files not staged for commit, the feature will not be executed.
	
**Execution**
If in Project01 directory:
- ./project_analyze.sh feature03

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh feature03
	
**References**
- https://stackoverflow.com/questions/7124914/how-to-search-a-git-repository-by-commit-message
	> Searching git repository for a specific word in commit history
	
### Feature 04 [6.4] | File Size List

**Description**
- This feature will list all the files (including hidden) in the repository as well as their respective sizes, outputted in a human readable format
	
**Execution**
If in Project01 directory:
- ./project_analyze.sh feature04

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh feature04
	
**References**
- https://linuxconfig.org/learning-linux-commands-ls
	> The breadth of commands you are able to implement with -ls

### Feature 05 [6.5] | File Type Count

**Description**
- This feature will ask the user for a file extension and use the read command to save the user's prompt. **cd** to the parent directory and output the number of files using **wc -l**, the output (through piping) of **ls**.
	
**Execution**
If in Project01 directory:
- ./project_analyze.sh feature05

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh feature05

Write your "File Extension"
	
**References**
- https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwj8hZbD-_XnAhVpg-AKHTUjDdgQFjAAegQICRAC&url=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F1447625%2Flist-files-with-certain-extensions-with-ls-and-grep&usg=AOvVaw3PdDSToFvruhueLDBjc7vD

### Feature 06 [6.6] | Find Tag

**Description**
- This feature will use ask the user for a "Tag" and use the read command to save the user's prompt. A for loop is then initiated in the parent directory looking for files ending in .py. And as it goes through each file, **grep** will look for lines that start with "#" due to the "*" AND contain the "Tag" and append it to the Tag.log file previously created.
	
**Execution**
If in Project01 directory:
- ./project_analyze.sh feature06

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh feature06
	
Write your "Tag"

**References**
- https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=2ahUKEwjD5qmu-_XnAhUiTd8KHVV9DqEQFjACegQIDRAH&url=https%3A%2F%2Fwww.cyberciti.biz%2Ffaq%2Fsearching-multiple-words-string-using-grep%2F&usg=AOvVaw3jBHRbCYehx1mvP4eHPZUv

### Feature 07 [6.8] | Backup and Delete / Restore

**Description**
- This feature will ask the user to choose between Backup or Restore. 

- If they choose Backup, an if statement will check if the backup directory exists. If it does, **rm -rf** will erase all of its contents and continue on with the code. If it doesn't exist, the backup directory will be created. Then, the the for loop will look for all files that end in the .tmp extension and using **pwd**, append their file paths to the restore.log, creating the file in the process while also copying and removing the file to the new respective location. 
- If they choose Restore, an if statement will check if restore.log exists. If it doesn't, then an error message will appear. If it does, a for loop will look for every file with the .tmp extension in the backup directory. And using a counter, register the corresponding path from the file to a variable. Then, restoring the file back using that very variable the path was stored in. 

	
**Execution**
If in Project01 directory:
- ./project_analyze.sh feature07

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh feature07

Write either, "Backup" or "Restore"
	
**References**
- [https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/](https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/)

- [https://unix.stackexchange.com/questions/12593/how-to-remove-all-the-files-in-a-directory](https://unix.stackexchange.com/questions/12593/how-to-remove-all-the-files-in-a-directory)

- [https://askubuntu.com/questions/60228/how-to-remove-all-files-from-a-directory](https://askubuntu.com/questions/60228/how-to-remove-all-files-from-a-directory)

- [https://stackoverflow.com/questions/8845891/what-is-the-command-for-cut-copy-paste-a-file-from-one-directory-to-other-direct](https://stackoverflow.com/questions/8845891/what-is-the-command-for-cut-copy-paste-a-file-from-one-directory-to-other-direct)
	
## Custom Features

### Custom Feature 01 | Large/Small File Size Management

**Description [PART 1]**
- This feature will list all the files (possibly only one at a time) that are larger than a certain size (5MB for example) in the repository. Can be done vice-versa with files that are smaller than a certain size.
- It will give the user the option to delete or potentially compress them into a zip file
- Their decision, or just the name of the files they deleted will write to a logfile along with the time of the prompt 

**Description [PART 2]**
- The custom feature works exactly like how I described it in part one. The feature will put all the files that are bigger or smaller than 1MB in the repository in a folder and also put them in a log file (ziplog.log) with the date of the action. The user will then be asked if they want to compress the file. (Files are currently copied using **cp**, for deletion sake. **mv** can be used as well). They are compressed at a scale of 9 which is the highest possible compression factor.

**Execution**
If in Project01 directory:
- ./project_analyze.sh custom01

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh custom01

Write either, "Bigger" or "Smaller" than the desired file size (i.e. 1MB)
	
**References**
- [https://www.youtube.com/watch?v=fmMg6cyww14](https://www.youtube.com/watch?v=fmMg6cyww14)
- https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwjYuf_n-vXnAhWsmuAKHQcrAyEQFjAAegQIAhAB&url=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F46824020%2Fhow-to-check-if-a-files-size-is-greater-than-a-certain-value-in-bash&usg=AOvVaw3iBA-ht2lMCEXujSycGeZW
- https://unix.stackexchange.com/questions/57013/zip-all-files-in-directory

- https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=2ahUKEwi7rvSP-_XnAhWwd98KHWf-DdgQFjACegQIDBAH&url=https%3A%2F%2Fwww.cyberciti.biz%2Ffaq%2Funix-linux-getting-current-date-in-bash-ksh-shell-script%2F&usg=AOvVaw1dGKwmwN2SMWyw2dn9mgTk
### Custom Feature 02 | Grocery Store

**Description**
- This feature will act as a 'grocery store'
- The user will get to choose from several grocery items that will be in respective directories
- The items they choose will be written into a file with the prices (acting as their cart)
- They will then be able to checkout at the cashier
- The cashier will execute the most efficient way to give change for any amount
**Description [PART 2]**
- The custom feature works exactly like how I described it in part one. Check the execution section for further specifications.
	
***BASH DOESNT SUPPORT FLOATS***. But I didn't want to give up so I found a solution that would atleast not defeat the purpose of change as it could be done in dollars. So I multipied everything by 100, making everything relative and doable. 

**Execution**
If in Project01 directory:
- ./project_analyze.sh custom02

Otherwise:
- ./CS1XA3/Project01/project_analyze.sh custom02

Write "Shop" to start shopping and select your items using numbers 1-9. The total price of your cart will appear each time after you add an item. Every item will also be added to a log file (cart). Once you are done shopping, write "Checkout" and the minimal number of coins in dollars, quarters, and cents (i.e. change) will be outputted for your transaction.
	
**References**
- [https://unix.stackexchange.com/questions/288521/with-the-linux-cat-command-how-do-i-show-only-certain-lines-by-number](https://unix.stackexchange.com/questions/288521/with-the-linux-cat-command-how-do-i-show-only-certain-lines-by-number)

- [https://serverfault.com/questions/310098/how-to-add-a-timestamp-to-bash-script-log](https://serverfault.com/questions/310098/how-to-add-a-timestamp-to-bash-script-log)

- https://stackoverflow.com/questions/35050100/zip-9-compression-isnt-reducing-file-size

