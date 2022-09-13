#### What is Git?
================
The world most popular Version Control System.

#### What is Version Control System?
==============================
Version Control System is a software of a website that tracks and manages changes to our files over time.

#### Why Using Version Control System?
===============================
Version control systems allows users to keep various versions of there files and revisit earlier versions of the files, compare changes between versions, undo changes and many more

#### Are there alternative to Git?
===================================
Yes. There are multiple version control out there. There is Bit-Bucket, CVS, Subversion and Mercurial. Git is their leader with over 88.4% market-share as at 2018

#### How easy is it to learn?
======================================
Git is so powerful yet easy to learn. I bet you can learn git within 20 minutes and you will be comfortable using it.

#### So what is the Different between git and github?
==================================
Git is a version control software or system that run locally on your machine. You don't need an account or internet to run git.

GitHub is a website that help you to keep your file instead of storing you file locally, you push it to github so that you team member or other public user can have access to it. It encourage collaboration.

#### hmmm I fill confident that I know git and github now. Congrat!!!
=====================================

I
#### Oh wait how do we install Git and Github
=======================================
To install git hub, follow this link https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

or do the following for Linux

1. Determine the type of OS that you run on your machine
2. For Ubuntu, run sudo apt install git-all
2. For RedHat Family(Centos) run sudo dnf install git-all
 then run git --version.

Or Follow the following for Window

1. Go to that https://git-scm.com/download/win
2. Download 64-bit Git for window setup
3. Double click the downloaded package to run it.
4. run git --version

That is all.

#### Can I start to use git now? 
==============================
Yes but wait, one more thing to do. Configuration. So this process let git know that you are an authenticated and authorized user. All you need is your name and your email.

Follow these steps to config git

git config --global user.name <"your name">
git config --global user.email <"your email">

### To get a copy of exiting project
==================================
Git clone http://something.com/[username]/[repository_name].git

#### So what are the common terminology in git
=================================
Oh good question. The following are mostly use in git world.

a. Repository : A git Repository is a workspace which tracks and manages files within folder.
Tip: Always create a new repository for any new project.

#### What are the most common basic command that I need to know for git?
==================================

* 1. git --version : show you the version of git you are running on your system and it tell you if you download git or not.
* 2. git init: This is use to initialize a new repository. If you start a new project, you need to cd into that repository and run "git init" it is at this point onward that git will start monitoring your file. One hidden folder is created once you run git init. The folder is called .git. Remember you only run git init once you start a new project. 

# Hey Yemi wait, Quick Question. If I already run git init from a folder,if I create another folder inside that parent folder, can i run git init again?

Nice question, You only need to run git init once at the top folder, any subfolder or directory inside that main folder would be automatically track with by the git at the parent level.

# Oh! Thanks Yemi

No Problem

# git status 
3. Git status: This is use to see if your current file or the state of your file is tracked or not. If it is not track, it shows in red and if the file are tracked or added to the stage, it show in color green. 

# git add . or git add [branch-name]
4. Git add: This is how you add changes to your file to the staging area so that git can track it. 

# git commit -m "commit message"
5. Git commit: This help you to send the codes or files that you created and/or changed to the local repository. It add the changes you made to a file to the repository


# git log
6. Git log: Is use to retrieved the logs of all your commit. You can also retrieve only one line of log information or just the log numbers.
Now let's answer your question.

# git ignore
7. git ignore:  This is the command that you use to prevent some file from been sent to the remote repository. Yes, there are some files that should never make public or sent remotely because they have some 


### Are there any intermediate commands?
=======================================

# 8. git branch
 Git branch is to list the branches that you have. Master or main is the default branch and is always present amount the listed branches

# 9. Git branch [branch-name]
Git branch <branch-name> is a command that create a branch with branch name specified. For example, git branch US37433 will create a branch with the name US37433

# 10. git checkout [branch-name]
Git checkout <branch-name> is a command that you will use to check into the branch that you created or an existing branch. Example, git checkout US37433 will check us into the branch with the name US37433.

# 11. git checkout -b [branch-name]
Git checkout -b <branch-name> will create the branch and check into in automatically. So this command do the work of git branch <branch-name> and git checkout [branch-name]

# 12. git branch -d [branch-name]
Git branch -d [branch-name] Delete a specific local branch

# 13. git branch -b [branch-name]
Git push origin -d [branch-name] Delete a specific local branch

# 14. git merges [branch-name]
Git merge command combines specified branch content together with current branch.

# 15. git stash: 
Use git stash when you want to record the current state of the working directory and the index, but want to go back to a clean working directory.The command saves your local modifications away and reverts the working directory to match the HEAD commit.

# git diff: 
Git diff: As the name suggests, this command is used to display all the differences between the files until the changes have not yet been staged.

# git reset [filename] 
Git reset [file-name], is a command used to unstage a file. Even though it unstages the file, still the contents of the file have stayed intact.

# 16. Git push
Git Push command push your 
 pushing entire local repository data to remote, but do not need to mention the branch name, it will pick up branch name directly from the last remembered branch.

# git push origin [branch-name]
Git push origin [branch-name] is a command that helps for pushing one of the created branches in your local environment to the [branch-name] remote directory or repository

# Git push -u origin [branch-name]
Git push -u origin [branch-name] does a similar task like above, pushing entire local repository branch to the remote repository, extra utility of using this command is also remembered for this specific branch for future reference. 

# Git push 
Git push is a command that push the entire local directory data to remote  but do not need to mention the branch, it will pick up 



























# git push
7. Git push: This command send your committed files that you have saved on the local repository(committed files) to the remote repository.


There are three places where we can save our files. 

1. The Working Directory
2. Staging Area
3. Repository

### The Working Directory
The Working Directory is the folder or directory that you created on your system. It is from this directory that your git init. Is it always the parent folder. To move files from this stage to the next stage is "git add"

### Staging Area

Staging Area as the name implies is use to store file that had already been track. If is at this stage that git started monitoring you file.

### Repository
I know you might be thinking Repository again!!!. Yes is repository, This folder stores your committed directory before being move to the remote repository.


