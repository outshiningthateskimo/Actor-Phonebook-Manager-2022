# Actor-Phonebook-Manager-2022

First coding project.  
This project is a command-line agenda that stores and manages the phone numbers of 50 popular Hollywood actors. The script offers several functionalities for viewing, searching, adding, and editing within the phonebook.

## Menu

When we run the script, the first thing we see is the menu with the following commands.
<p>
  <img src="https://github.com/user-attachments/assets/443b90fd-dc81-4514-9fd4-545292f2c6c4" width="300">
</p>

At the press of a number between 1 and 5 included, the commands will be executed accordingly.  
Similarly, if we wish to exit the program, we can press 0.

## Commands

#### 1. View Phonebook: 
Display the entire list of actors in alphabetical order.

<p>
  <img src="https://github.com/user-attachments/assets/c9bb20d8-08da-44df-b8cd-c35c3d72fcd2" width="300" alt="option-1">
</p>

#### 2. Search by Name: 
Search for an actor's phone number by entering their name, with case-insensitive recognition. If multiple actors share the same name, all will be listed.  

For example, let’s search for Jet Li. All we need to write is “jet” and the program will find him for us. 

<p>
  <img src="https://github.com/user-attachments/assets/c3201b71-b9fc-4315-bb46-5220c932c2e2" width="300" alt="option-2-jet-li">
</p>

In case there is more than one person with the same first name, all the personalities sharing the name will be shown. 

<p>
  <img src="https://github.com/user-attachments/assets/b4935d80-c6f0-4dad-88b6-c21f7b35a370" width="300" alt="option-2-tom">
</p>

It turns out that "Tom" is a particularly common name.  
If the name is not in our list, the program will respond with an error message “Name not found.”

<p>
  <img src="https://github.com/user-attachments/assets/0ea37eb2-219b-43b6-a134-98fa17d2098c" width="250" alt="option-2-not-found">
</p>

#### 3. Add Phone Number: 
Add a phone number to the phonebook by selecting an actor without an existing number.  

The reverse `grep` function was used so that only the actors without a phone number from the phone list would be shown.  
All there is to do is input a name from the list of results, say Robert De Niro, and then introduce their number. 

<p>
  <img src="https://github.com/user-attachments/assets/0c388d64-00ae-4fb2-b815-7163f81879b8" width="300">
</p>

The list before the addition:

<p>
  <img src="https://github.com/user-attachments/assets/314252d8-b21a-4937-a335-7a9f6c4852a2" width="300">
</p>

When we go back to the list, we will find his number was added:

<p>
  <img src="https://github.com/user-attachments/assets/468aea2d-eb41-4a3b-993d-bf35158c757c" width="300">
</p>

#### 4. Edit Phone Number: 

For the fourth option, the phonebook will be displayed so that the user can see the list first. Then, they can input the name of the actor whose phone number has changed. 
We know Vin Diesel changes his phone number frequently, so let’s modify it in the agenda. The `sed` command was used to replace the old phone number with a new one.

<p>
  <img src="https://github.com/user-attachments/assets/62d95039-3613-4d48-b343-4e28429876f7" width="300">
</p>

If we now look for his name and compare the two, we will see the old   
`0799985643` was replaced by  
`0798666239`, which is what we previously introduced. Thus, the number was succesfully updated.

<p>
  <img src="https://github.com/user-attachments/assets/ff31d9eb-a6dd-4bf3-9a52-3fdebbbdf633" width="300">
</p>

#### 5. Easter Egg:
Identify actors whose phone numbers contain three consecutive identical digits through a fun, hidden feature implemented using a for loop.

<p>
  <img src="https://github.com/user-attachments/assets/b61537ec-f0d4-4642-bfaf-70c2c8111d5e" width="300">
</p>

