require_relative "crm_database"
db = Database.new


id = 1000

  # Display the crm greeting
puts "__________________________________________________________________________"
puts "Welcome to the customer relation software"
puts "Type 'add' if you would like to add a user"
puts "Type 'modify' if you would like to change information of an existing user"
puts "Type 'display all' to display all contacts"
puts "Type 'display contact' to display contacts"
puts "Type 'display attribute'  to display all of the the contacts by that attribute"
puts "Type 'delete' to delete "
puts "__________________________________________________________________________"
loop do
  # Display the various options
  input = gets.chomp

  case input
  when "add"
    # Get the various contact attributes from the user and store them to variables
    # Insert those variables in a new contact and add them to the database
  id += 1
  puts "enter first name"
  firstname = gets.chomp
  puts "enter last name" 
  lastname = gets.chomp
  puts "enter email"
  email = gets.chomp
  puts "enter notes"
  notes = gets.chomp
  test = Contact.new(id.to_i, firstname, lastname, email, notes)
  db.add(test)
  
  puts "===================================================================="
  puts "                    CONTACT ADDED TO DATABASE  "
  puts "===================================================================="

  

  when "modify"
    # Prompt the user to select an attribute
    # Confirm that they have selected the correct attribute
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully updated to the user 
  
    puts "Enter ID number of the user"
    selection = gets.chomp
    puts "Enter the attribute you would like to change"
    attribute = gets.chomp
    # search the array using the ID
    puts "What is the other attribute you would like to change"
    modification = gets.chomp


    db.modify_contact(selection.to_i, attribute, modification)

  when "display all"
    # Display all of the contacts in the database to the user
    db.display_all_contacts

  when "display contact"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display the corresponding contact
    puts "What is the contact's ID"
    tempid = gets.chomp
    db.display_particular_contact(tempid)







  when "display attribute"
    # Prompt the user to search the database by one of the five attributes (E.g. "ID")
    # Display all of the the contacts by that attribute
    puts "Enter the attribtue to search for (e.g., id, firstname, lastname, email, notes)"
    temp_attribute = gets.chomp
    db.display_particular_contact(temp_attribute)



  when "delete"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display a prompt to confirm "yes" or "no"
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully deleted to the user
    # If 'no', prompt them to type the new value for the attribute
    # Display that the contact could not be found to the user


    puts "select a contact by a specific contact attribute (E.g. Khurram)"
    attribute = gets.chomp
    puts "Are you sure you would like to get rid of #{attribute} (yes/no)"
    subID = db.getID(attribute)
    input = gets.chomp
    

      if input == "yes"
        db.delete_contact(subID)
    

        elsif "no"
        puts "select a contact by a specific contact attribute (E.g. Khurram)"
        attribute = gets.chomp
        db.delete_contact(subID)
      end
 

  when "exit"
    break
    # Exit from the program
    end
end