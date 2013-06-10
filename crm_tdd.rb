require_relative "crm_contact"
require_relative "crm_database.rb"
require "test/unit"


class TestCRM < Test::Unit::TestCase


	def test_doesContactPass()
		contact = Contact.new(5,"firstname","lastname","email", "notes")

		#assert_equal( expected, actual, [message] )
		assert contact.is_a?(Contact)
		assert_equal 5, contact.id
		assert_equal "firstname" ,contact.firstname
		assert_equal "lastname" ,contact.lastname
		assert_equal "email" ,contact.email
		assert_equal "notes" ,contact.notes
	end

	def test_doesContactaddtodb
		contact = Contact.new(5,"firstname","lastname","email", "notes")
		db = Database.new
		db.add(contact)

		assert contact == db.contacts_array[0] , "Adding contact to database failed!"

	end

	def test_totalnumbofContacts

	# test to check if I can find the total number of contacts in my
	# Database
		contact = Contact.new(5,"firstname","lastname","email", "notes")
		db = Database.new #we only add one contact therefore we should only have one other

		db.add(contact)

		assert_equal 1, db.contacts_array.size


	end

	def test_checkDeletefunction
		#y test to check if I can delete a contact in my database passes.
		contact = Contact.new(5,"firstname","lastname","email", "notes")
		db = Database.new #we only add one contact therefore we should only have one other

		db.add(contact)
		db.delete_contact(5)

		assert_equal 0, db.contacts_array.size

	end

	def test_modifycontact

		contact = Contact.new(5,"firstname","lastname","email", "notes")
		db = Database.new #we only add one contact therefore we should only have one other

		db.add(contact)

		db.modify_contact(5, "firstname", "test")
		expectedContact = Contact.new(6,"test", "lastname", "email", "notes")
		assert_equal true, contact.firstname == expectedContact.firstname

		end

	def 	




	end