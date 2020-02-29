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
				grep "#*" "$file2" | grep ""$tag"" >> "$tag".log 	
			done		
                fi


		if [ "$arg" == "feature07" ] ;
                then
			echo "Please enter your option, either [Backup] or [Restore]"
			read dec
			
			if [ $dec = "Backup" ] ;
			then 
				if [ -d backup ] ; 
				then	
					rm -rf backup/*
					for file3 in $(find . -name "*.tmp") ; do       
                                                pwd "$file3"  >> backup/restore.log 
                                                mv "$file3" backup 
                                        done
				else
					mkdir backup
					for file3 in $(find . -name "*.tmp") ; do       
                                                pwd "$file3" >> backup/restore.log 
                                                mv "$file3" backup 
                                        done
				fi

			elif [ $dec = "Restore" ] ; 
			then
				if [ -f backup/restore.log ] ;
				then 
					echo "it exists"
					j=0
					for file4 in $(find backup -name "*.tmp") ; do
						((j++))
						path=$(sed -n "$j"p backup/restore.log)
						mv "$file4" "$path"
					done
				else
					echo "ERROR: This file does not exist."
				fi
			fi
		fi


		if [ "$arg" == "custom01" ] ;
                then
                        mkdir zip
			echo "Would you like to see files [Bigger] or [Smaller] than 1MB?"
			read gre
			if [ $gre = "Bigger" ] ;
			then
				
				for file5 in $(find .. -type f -size +1M) ; do
					cp "$file5" zip
					echo "$file5" >> ziplog.log
					echo "$file5"
				done
				printf "\nFiles added on $(date)"  >> ziplog.log
				echo "Would you like to zip these files? [Yes] or [No]"
				


			elif [ gre = "Smaller" ] ;
			then
				find . -type f -size -1048676c
			fi
		fi	


		if [ "$arg" == "custom02" ] ;
                then
                        echo "Please choose which aisle you would like to shop in, [Vegetables], [Cookies]"
			read choice
			if [ $choice = "Vegetables" ] ; 
			then
				cat Vegetables
				sed -n -e  1p -e 2p Vegetables
				echo "Type [1] if you want the first item. [2] if you want the second item"
				read cart1
				if [ $cart1 = "1" ] ;
				then 
					tail -c 3 Vegetables  >> cart.txt
				elif [ $cart1 = "2" ] ;
				then
					tail -c 3 Vegetables >> cart.txt
				fi				 
			fi
                fi
	done


