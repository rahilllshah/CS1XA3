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
                        rm ziplog.log
			rm -rf zip/*
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
				read gre2
				
				if [ $gre2 = "Yes" ] ; 
				then
					zip -9 compressed.zip zip
				elif [ $gre2 = "No" ] ;
				then
					echo "No problem, thanks for using this feature!"
				fi

			elif [ gre = "Smaller" ] ;
			then
				find . -type f -size -1048676c
			fi
		fi	


		if [ "$arg" == "custom02" ] ;
                then
				
				echo "Welcome to the supermarket! Your current total is 0. If you would like to start shopping, type [Shop]"
				read  choice2
				change=0
				while [ $choice2 = "Shop" ] 
				do 

					cat Supermarket
                                        echo "Type [1] if you want the first item. [2] if you want the second item, etc. Type [Checkout] if you would like to checkout."
                                        read cart1
                                                if [ $cart1 = "1" ] ;
                                                then 
                                                        sed -n 1p Supermarket >> cart
                                                        change=$(( $change + 367 ))
                                        		echo "Your total is $change"

                                                elif [ $cart1 = "2" ] ;
                                                then
                                                        sed -n 2p Supermarket >> cart
							change=$(( $change + 397 ))
							echo "Your total is $change"                                                                               

						elif [ $cart1 = "3" ] ;
                                                then
                                                        sed -n 3p Supermarket >> cart
                                                        change=$(( $change + 592 ))
							echo "Your total is $change"

						elif [ $cart1 = "4" ] ;
                                                then
                                                        sed -n 4p Supermarket >> cart
                                                        change=$(( $change + 253 ))
							echo "Your total is $change"
						
						elif [ $cart1 = "5" ] ;
                                                then
                                                        sed -n 5p Supermarket >> cart
                                                        change=$(( $change + 401 ))
							echo "Your total is $change"
						
						elif [ $cart1 = "6" ] ;
                                                then
                                                        sed -n 6p Supermarket >> cart
                                                        change=$(( $change + 219 ))
							echo "Your total is $change"
													
						elif [ $cart1 = "7" ] ;
                                                then
                                                        sed -n 7p Supermarket >> cart
                                                        change=$(( $change + 294 ))
							echo "Your total is $change"
						
						elif [ $cart1 = "8" ] ;
                                                then
                                                        sed -n 8p Supermarket >> cart
                                                        change=$(( $change + 397 ))
							echo "Your total is $change"

						elif [ $cart1 = "9" ] ;
                                                then
                                                        sed -n 9p Supermarket >> cart
                                                        change=$(( $change + 201 ))			
							echo "Your total is $change"
						
						elif [ $cart1 = "Checkout" ] ;
						then
							dollars=0
                                        		quarters=0
                                        		cents=0
                                
                                        		while [  $change -ge 100 ] 
                                        		do 
                                                		dollars=$(( $dollars + 1 ))
                                               			change=$(( change - 100 ))
								
                                        		done
        
                                        		while [  $change -ge 25 ] 
                                        		do 
                                                		quarters=$(( $quarters + 1 ))
                                                		change=$(( change - 25 ))
								
                                        		done

                                        		while [  $change -ge 1 ]  
                                        		do 
                                                		cents=$(( $cents + 1 ))
                                                		change=$(( change - 1 ))
								
                                        		done
							
							echo "The most efficient change for your total would be $dollars Dollars, $quarters Quarters, $cents Cents"
							break						
						fi
				done	
		fi
	done




