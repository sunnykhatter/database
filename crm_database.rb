require_relative "crm_contact"

class Database
  attr_accessor :contacts_array

  def initialize
    @contacts_array = Array.new
  end

  def add(contact)
    @contacts_array << contact

  end

  def modify_contact(selection, attribute, modification)
  
   @contacts_array.each do |contact|

    contact.id == selection

      case attribute
      when "email"
        contact.email = modification
      when "firstname"
        contact.firstname = modification
      when "lastname"
        contact.lastname = modification
      when "notes"
          contact.notes = modification
      end
    end
  end

  def display_all_contacts

    @contacts_array.each do |contact|
      contact.display_contact

    end

  end

  def display_particular_contact(attribute)

    @contacts_array.each do |contact|
      if contact.id == attribute
        contact.display_contact
      elsif contact.firstname == attribute
        contact.display_contact
      elsif contact.lastname == attribute
        contact.display_contact
      elsif contact.email == attribute
        contact.display_contact
      else contact.notes == attribute
        contact.display_contact
      end
    end
  end


  def delete_contact(attribute)

      @contacts_array.each do |contact|
        if contact.id == attribute
          @contacts_array.delete contact

        end
     end
  end

  def getID(attribute)

      @contacts_array.each do |contact|
      if contact.id == attribute
        return contact.id
      elsif contact.firstname == attribute
       return contact.id
      elsif contact.lastname == attribute
        return contact.id
      elsif contact.email == attribute
     return contact.id
      else contact.notes == attribute
       return contact.id
        end
      end
    end
    

  


end


# test = Contact.new(1001, "first" ,"last" ,"email", "notes")
#  Db = Database.new

# Db.add(test)

# Db.display_particular_contact(1001)

#  Db.modify_contact(1001,"firstname", "Bob")

#  Db.display_particular_contact(1001)
#  puts "\n"

#   Db.getID("Bob")





 #Db.display_all_contacts

