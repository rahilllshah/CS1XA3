#!/bin/bash
i=0
j=0
	for arg in "$@"
	do
                if [ "$arg" == "feature02" ] ;
                then
                        for file in $(find . -type f) ; do
                                i=0
				lastline=$(tail -n -1 "$file")
                                if [[ $lastline == *"#FIXME"* ]] ; then
                                	if  [[ i == 0 ]] ; then       
						 echo "$file" > fixme.log
						((i++))
					else
						echo "$file" >> fixme.log
                                	fi
				fi
                        done
		i=0
                fi


                if [ "$arg" == "feature03" ] ;
                then 
                        git log --all --grep='merge' -n 1 | grep -e ".{40}" | git checkout
                fi


                if [ "$arg" == "feature04" ] ;
                then 
                        ls -a -lhS
        	fi

 		
		if [ "$arg" == "feature05" ] ;
		then
			echo "Please enter a file extension"
			read ext
			cd ..
			ls *.$ext | wc -l
		fi


		if [ "$arg" == "feature06" ] ;
                then
                        echo "Please enter a Tag"
			cd .
			read tag
			
			for file2 in $(find .. -name "*.py") ; do
				grep '#*\|"$tag"' "$file2" > "$tag".log 	
			done		
                fi


		if [ "$arg" == "feature07" ] ;
                then
			echo "Please enter your option, either Backup or Restore"
			read dec
			
			if [ $dec = "Backup" ] ;
			then 
				if [ -d backup ] ; 
				then	
					rm -rf backup/*
					echo "Execute rest of code"
				else
					mkdir backup
					echo "hi"
					for file3 in $(find . -name "*.tmp") ; do	
						mv $file3 backup

					done
				fi

			elif [ $dec = "Restore" ] ; 
			then
				if [ -f restore.log ] ;
				then 
					echo "it exists"
				else
					echo "This file does not exist"
				fi
			fi
		fi


		if [ "$arg" == "custom01" ] ;
                then
                        echo "Please enter the size benchmark of the files you'd like to delete."
			read size
			echo "Would you like to see files greater or smaller than this size?":
                	read gre
			
			
		fi


		if [ "$arg" == "custom02" ] ;
                then
                        echo "Hi"
                fi
	done


