#!/bin/bash

        for arg in "$@"

        do

                if [ "$arg" == "feature02" ] ;
                then
                        for file in $(find . -type f) ; do
                                lastline=$(tail -n -1 "$file")
                                if [[ $lastline == *"#FIXME"* ]] ; then
                                        echo "$file" >> fixme.log
                                fi
                        done
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


