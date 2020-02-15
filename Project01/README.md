# CS 1XA3 Project01 - shahr39

## Usage 

### Feature 01 [6.1] | Script Input

Access and make the script executable: 
*chmod +x CS1XA3/Project01/project_analyze.sh*

**Execution**
- ./CS1XA3/Project01/project_analyze.sh *argument*
> The possible *arguments* that execute the respective features are as follows:
feature02
feature03
feature04 

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
	
## Custom Features

### Custom Feature 01 | Large/Small File Size Management

**Description**
- This feature will list all the files (possibly only one at a time) that are larger than a certain size (5MB for example) in the repository. Can be done vice-versa with files that are smaller than a certain size.
- It will give the user the option to delete or potentially compress them into a zip file
- Their decision, or just the name of the files they deleted will write to a logfile along with the time of the prompt 

### Custom Feature 02 | Grocery Store

**Description**
- This feature will act as a 'grocery store'
- The user will get to choose from several grocery items that will be in respective directories
- The items they choose will be written into a file with the prices (acting as their cart)
- They will then be able to checkout at the cashier
- The cashier will execute the most efficient way to give change for any amount
