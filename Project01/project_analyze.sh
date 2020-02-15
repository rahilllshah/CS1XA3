#!/bin/bash
i=0
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
done


