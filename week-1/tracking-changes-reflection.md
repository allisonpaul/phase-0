# 1.5 Tracking Changes Reflection
How does tracking and adding changes make developers' lives easier?
Tracking and adding changes both allow developers to see who made what changes, revert back to previous versions of the document, keep a progress report of sorts of the document, save new versions without getting rid of the old ones and having multiple files, test out the work and kinks without merging into the master branch, and just generally have a better file system of the work.

What is a commit?
A commit is a save point.  Git keeps track of when you alter files but does not save them for you automatically.You tell your machine via command line to commit a file, make sure to add a commit message.

What are the best practices for commit messages?
When writing a commmit message always start with a capital letter.  Use imperative instead of past tense. They should be short, less than 50 characters, but descriptive.

What does the HEAD^ argument mean?
HEAD is the commit you are already on, and HEAD^ is the previous commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of git change are
-working/editing: where you are still modifying files in your working directory. Git will keep track of all the changes you make here but won't save or commit anything for you.
-staged: This is basically where you prepare the files to be commited.
-commit: This takes the files as they are in the staging and stores them to the git directory. If you made changes to the file since it has been staged, these changes will not be commited unless you restage. These files are local until you are ready to push to Github.
In summary, you work on your files in the working directory. If you want to keep your changes you stage them with git add. If you want to commit the files you use git commit -m "add a message".  Then your file has walked the three stages of git change!

Write a handy cheatsheet of the commands you need to commit your changes.
create a branch to work on your files with
-git checkout -b name-of-branch-here
-git status checks the status of all the files, telling you if you have any modifications that have not been staged or are ready to be committed, or if you have no changes at all.
-git add  will stage the files
-git commit -m will commit your files and create a message
-git log will pull up of a log of all commits.
-git checkout will navigate between branches.

What is a pull request and how do you create and merge one?
Pull requests are a way to merge code into the master branch from different branches. To create a pull request you need to push your feature branch up to Github. Before you do this make sure all updates made on the master are included in your feature branch. Use git push origin name_of_your_branch to push a copy of your branch up to Github. Then via github you will see a "compare and pull request" button.  Click that and fill in the title and description of your request. Then click "create pull request button" and you - or other developers- are ready to merge the changes. Click "merge pull request",confirm the merge, and then be sure to clean up your branches and delete the feature branch you just merged.  You also need to delete the branch locally, so in your command line type
git branch -d name_of_your_branch.
You also need to update your master branch locally, so use git pull origin master to sync back with the repo on github.


Why are pull requests preferred when working with teams?
Pull requestes are prefered because you do not want to add code to the master branch and end up messing up the code. It's a really good way to build upon code, since it is easy to add just a bit at a time. All members of the team can view the proposed changes because implementing into the the master code.