require "test/unit"
require 'simplecov'
SimpleCov.start
require_relative "crm_database"

class TestContact < Test::Unit::TestCase

	# setup method to initialize example database
	def setup
		@db = Database.new()
		@db.add(1,"Andrew","Khajerian","gmail","notes")
		@db.add(2,"Bruce","Wayne","yahoo","notes2")
	end

	# ensure empty database array created on initialize
	def test_initialize_creates_empty_array
		db = Database.new()
		# check index[0] is nil
		assert_equal nil, db.db_array[0]
		# check db is a database object
		assert db.is_a?(Database)
	end

	def test_add_method_stores_contact_in_database_array
		# @db.add(1,"Andrew","Khajerian","gmail","notes")
		@db.db_array[0].is_a?(Contact)
	end

	def test_add_method_stores_correct_attributes_for_contact
		assert_equal 1, @db.db_array[0].id
		assert_equal "Andrew", @db.db_array[0].first_name
		assert_equal "Khajerian", @db.db_array[0].last_name
		assert_equal "gmail", @db.db_array[0].email
		assert_equal "notes", @db.db_array[0].notes
	end

	def test_modify_method_can_change_attributes
		# id was = 1, should now be = 1001
		@db.modify("id","Andrew","1001")
		assert_equal "1001", @db.db_array[0].id
		# email was email, should now be arkhajer@gmail
		@db.modify("email","Andrew","arkhajer@gmail")
		assert_equal "arkhajer@gmail", @db.db_array[0].email
	end

	def test_to_find_total_number_of_contacts
		total_contacts = @db.db_array.length
		assert_equal 2, total_contacts
	end

	def test_display_all_contacts_specific_attribute
		assert_equal ["Andrew","Bruce"], @db.display_attr("first name")
	end

	# test if I can delete contact and empty database 
	# returns empty array
	def test_delete_contact

	end

	def test_display_single_attr_of_all_contacts
		
	end














end