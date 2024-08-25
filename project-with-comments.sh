# The script is an agenda containing phone numbers of actors.
# It performs the following commands:
#  1 View the agenda (all names and phone numbers available)
#  2 Find a phone number in the list
#  3 Add a missing number to an existing name in the list
#  4 Edit an existing phone number
#  5 View which phone numbers contain a group of 3 consecutive digits 
#  0 Exit

while [ "$REPLY" != 0 ]
do

echo -e "\n\n------------------------------"
echo "Select an option: " 
echo "To view the agenda, press 1"
echo "To find a phone number, press 2" 
echo "To add a phone number, press 3"
echo "To edit a phone number, press 4"
echo "For a surprise, press 5"
echo "------------------------------"


echo -e "To exit, press 0\n\n "
read -p "Input: " > REPLY
	# the option -p in read outputs the text "Input: " before
	  # asking for the input, assigning the answer then to the 
	    # REPLY variable

PHONEBOOK=actors-phonenumbers.txt
	# the content of the file (actors phone list) is stored
	  # in the variable PHONEBOOK

   if [ "$REPLY" = 1 ]
	then
		echo -e "---------------\tPHONE BOOK----------\n\t"
			# the option -e considers the \ commands
			# \t stands for Tab, it is used to 
			    # give a title impression
			# \n stands for newline;
			    # used for an easy to read menu

		echo "`cat $PHONEBOOK`"
   	 fi
	

    if [ "$REPLY" = 2 ]
	then
            echo "Introduce actor name: " 
            read NAME #read the NAME variable
	    if [ "`grep -i "$NAME" "$PHONEBOOK" | wc -l`" = 0 ]
			# the option -i in grep ignores case
			# wc -l = word count -lines

		then
			echo "Name not found."
			# if there aren't any lines containing the input,
			  # "Name not found" will be shown

	    else
           	cat $PHONEBOOK | grep -i $NAME
		
 	    fi
		echo -e "\n\n"
	 fi

    if [ "$REPLY" = 3 ]
	then
	    echo "Incomplete agenda for:"
	    grep -v "07" "$PHONEBOOK"  
			# v-invert match, it outputs all the lines which do not
			  # contain 07 - which is the beginning of a phone number 
	    echo "Introduce actor name (full name): "
	    read NAME
	    if [ "`grep -i "$NAME" "$PHONEBOOK" | wc -l`" = 0 ] 
		then
			echo "Name not found."
	    else
		
		echo "Introduce phone number: "
		read PHONE
		sed -i "s/$NAME\ "-"/$NAME\ "-"\ $PHONE/" "$PHONEBOOK" 
			# i-modifies the file content instead of just
			       # modifying the output
			# \ followed by a space is used so that sed will
			       # recognize the whitespace
			# the quotes are used so that the "-" symbol
				# is recognized
	    fi
    fi

     if [ "$REPLY" = 4 ]
	then
	    cat $PHONEBOOK
	    echo "Introduce actor name: "
	    read NAME
	    if [ "`grep -i "$NAME" "$PHONEBOOK" | wc -l`" = 0 ]
		then
			echo "Name not found."
	    else
		echo "Introduce phone number: "
		read PHONE
           	sed -i "s/$NAME\ "-"\ 07.*/$NAME\ "-"\ $PHONE/" "$PHONEBOOK"
			# * considers everything that follows 07
			# the dot . is there so that * will be recognized
			# we use .* to replace the old number
 	    fi
	 fi
      if [ "$REPLY" = 5 ]
	then
	     echo "Phone numbers containing three lucky digits: "
	     for i in {000..999..111}
	     do
		grep "$i" "$PHONEBOOK"
	     done
	     
      fi

done
exit
