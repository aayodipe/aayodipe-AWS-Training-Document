Linux
========

Introduction to Linux
File System
Navigation in Linux
Common Commands in Linux
User Management
Permission in Linux
Package Management



Class 1 
===========================================
Introduction to Linux Operating System (OS)
===========================================
Let's talk about Linux. Before we go deep about linux, let's take a step back and talk about computer as a whole. 

Computer is made up of multiple parts. 
	* The Hardware
	* The Software
	

The Hardware comprise of the 
	- The CPU - 
			* Control Unit
			* Arithmetic Logic Unit
			* The Cache
			* The Buses
			* Registers 
			* Storage Units
	- RAM 
	- Hard Drive
	- Solid-State Drive(SSD) * 
	- Network Interface card 
	- ETC
The Software comprise 
	- The Operating System(OS)	
	- Device Drivers
	- Utilities
	- Application or User Downloaded Softwares such as Microsoft WOrd, Spreadsheet, Graphics applications  
	- Etc


The part of the computer that is available to the end-user is the Applications, or users downloaded software such as  word, spread sheet, google chrome. The Application needs the physical component of the computer to perform whatever task you ask them to do, But they can not communicate directly with this physical component, so then need interpreter or thing that speaks both the language of the user's application and the computer hardware, and that is where the OS comes in.


The OS manages all of the software and hardware on the computer. Most of the time, there are multiple or different computer programs running at the same time and they all need to access your computer CPU, Memory  and storage. The OS coordinates all of this to make sure each program gets what it needs.

Type of OS
============
There are multiple OS out there.The Window, Mac OS and Linux are the most popular.

For this course, we are going to be looking at the Linux Operating System.


LINUX OPERATING SYSTEM
========================

There are multiple type(distribution) of Linux OS. 
 
	* The Debian ( Ubuntu and Linux Mint)
	* Red Hat Enterprise ( RHEL) - Santo/7, Fedora
    * SUSE such as Opensuse


Every Linux distribution installs and manages package differently. And they use different package management tools.


REDHAT Distribution
===================
 Common Commands  
==============

Pwd - Current Working Directory
cd - Change Directory
ls


#### Sample command line 
# date - Show current date and time
# 
# cal - show current month calender
#
# cal year - will show you the full calendar for that year
#
# free - to see the current amount of free memory on your disk
#
# df - to see th current amount of free space in the drive
#
# pwd - current working directory
#
# cd - change directory
#
# ls - list directory
#
# mkdir - make directory
#
# touch - create file
#
# cat - view the content of a file
#
# less - 
#
# cp - copy
#
# mv - move
#
# rm - Remove
#
#
# ========================
#  STANDARD OUT (STDOUT)
# ======================
# example of standard out is  
#
# 1. echo Hello world
# 2. echo Hello World > file.txt
# 3. echo Hello World >> file.txt
#
# ========================
#  STANDARD In (STDIN) 
# ======================
#
# 1. input from keyboard
# 2. input from files
# 3. input from other processes
#
# e.g cat  < in-file.txt > out-file.txt
#
# ========================
#  STANDARD Error (STDERR)
# ======================
# You get error message when you try to list the content of a directory that is not available or exist.
# 
# e. g 
# ls /error/nothing-here  ==> You get error message on the screen when you try to run this command. But inside of print the error message on the screen you may want to save it in a file, such as file.txt
#  NOTE : DISCRIPTOR FOR STDIN, STDOUT AND STDERR ARE 0,1 AND 2 RESPECTIVELY
# ls /error/nothing-here 2> file.txt
#
# =============================================
#  # pipe i.e | :  Pipe allow you to get the output of a command and make the the input of another command
#    
# e.g ls -al /etc/ | grep passwd
#
#
#  ========================================
#   ENVIRONMENT(var)
#  ========================================
#  
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

















