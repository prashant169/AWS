 ------------------------------Shell-----------------------------------------------------
-shell is program takes input frome the keyboard and gives o.s to perform (Execute)
-shell is an interface b/w user and os (kernel).
-program is called shell ((Bourne Again Shelll))
-bash is the default shell in all adanced linux os.
-AIX os:ksh is the default shell.

-IMP Commands
	cat etc/shell ((check the available shell in os ))
	sh --->old Version
	bash --> Advanced Version

	/bin/sh       --> Chenge the shell
	/bin/bash 

-----------------------------Shell Scripting-------------------------------------------++
-shellscript is the file containing series of command
-write a command in orders
-shell script has the file extention  .sh	
 
  hello.sh
   echo "hello everyone"
   echo "gm"
   echo "prashant"

-whay we need to learn shell script
(1) Automate the regular task   (2)Taking Database Backups  (3)Monitoring several server resorces-cpu utilization,memory utilization
(4) Portable (execute any unix-like operating system without any modification)

-----------------------------Databases------------------------------------------------------------++
1)Relational DB : oracle, MySql ,postgress Sql , Ms Sql server,  DB2
  -Data Store :Structured Format ,Rows And Columns ,Table Format
  -MySql ,postgress Sql :Free TO Use ,Open-source

2)No Sql DB: Mongo-Db
   -Data Store: No Table ,Json Format ,Document
----------------------------------------------------------------------------------------++

-------------------------------Step To Write shell script--------------------------------

 vi Hello.sh     
 Press the i----->INSERT Mode

  #!/bin/sh   ----> Shebang Line -->Its Reprasent which shell you are using 

Example 1
 
  #!/bin/bash
  echo "hello everyone"        
  echo "gm"
  Date
  echo "Hello world"
 
Example 2 (Run In Debug Mode)

 #!/bin/bash
 echo "hello everyone"
 set -x                          //Debug for perticular line start
 echo "gm"
 set +x                          ////Debug for perticular line close
 Date
 cho "prashant"

Press the esc ----Command Mode 
:wq

-Run file diffrent way-->> Hello.sh  |  ./Hello.sh   | . Hello.sh   |  sh Hello.sh  |   bash Hello.sh
-run in debug mode-->>   sh -x  Hello.sh 
-chmod u+x Hello.sh ---> execute File permison        |  cat -n Hello.sh
-uname
------------------------------------File-Naming conventions-------------------++

1)A file name can be a maximum of 255 characters
2)The name may contain alphabets , digits ,dots and underscors
3)System commands or linux reserve words can not be used for file names 
4) Filesystem is case sensitive
5)some of valid linux filenames are 

Hello.sh  |  prashant.sh |  prashant_85123.sh  | Prashant123.sh

---------------------------------Comments-----------------------------------++
-comments are used to escape frome the code 
-ignored by the program interpretar'
-makes easy for programer ,editing code in future 

-single line comments  #

-multiline comments  
    << commments1
           com-2
           com-3
----------------------------------variable--------------------------------------------------++
-it is a characher string to which we assign a value. 
-the value assigned could be a number,text ,filename,divice or any other types of data
-system defined variable---> env 

1) system defined variable ---> written is upper case $USER

2) user defined variable------>Written in small letter , name ,



a=19
b=20
name=prashant
c=1.3
a=12

echo $a
echo $c
echo $name
-----------------------------command line arguments--------------------------------++

during shell script execution ,values passing through command prompt is called as command line argument

ex: sh scriptfile.sh  arg1 arg2

we can specify n number of argument there is no limitation.
each argument is seperated by space


#!/bin/bash                                        | -eq --> ==     
 echo $0					   |-ne --> !=      
 echo $1					   |-lt --> <       
 echo $2					   |-le --> <=      
 echo $3					   |-gt --> >=     
 echo ${20}
 echo $#
 echo $* ----->all the args as a one string
 echo $@ ----->each args as a one ,one string

 echo $$ -- PID
 Date

 echo $0
 echo $?
 0


-----------------------------string-------------------------++
0 more chars enclosed in a single or double quotes
name ="Prashant p"
course='devops'


------For loop

echo "for loop demo start.."
 for (( a=6;a<=5;a++))
       1<=5 1++
       2<=5 2++
       3<=5 3++
       4<=5 4++
       5<=5 5++
       6<=5 
do
echo $a
done 
echo "for loop demo over.."


----
echo "for loop demo start.."
 for (( a=6;a<=100;a++))
do
echo $a
done 
echo "for loop demo over.."

----------------------while loop -write a shell script -------------------------+
write a shell script to print th number frome 100 to 1 

echo " while loop demo start --"
 i=1
 while [ $i -lt 5 }         //lt less then  or equval to
 do 
 echo $i
 i='expr $i + 1'
 done 
 echo "whileloop demo over"



-----------------------Git Command---------------------------

git init 
git add .
git commit -m "-----"
git remote add origin https/github.com
git push -uf origin master
--------------------------------------------------------------
