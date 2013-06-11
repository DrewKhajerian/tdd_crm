require "test/unit"
require 'simplecov'
SimpleCov.start
require_relative "crm_contact"

class TestContact < Test::Unit::TestCase

	# Setup method
	def setup
		@contact = Contact.new(1,"Andrew","Khajerian","gmail","notes")
	end

	# should be able to create a contact instance with initializer
	# should pass parameters to new contact to have instance initialized
	# parameters are id, first_name, last_name, email, notes
	def test_initialize_creates_valid_vars
		# create contact instance
		assert_equal 1, @contact.id
		assert_equal "Andrew", @contact.first_name
		assert_equal "Khajerian", @contact.last_name
		assert_equal "gmail", @contact.email
		assert_equal "notes", @contact.notes
	end

	def test_overwrite_old_attribute
		assert_equal "Drew", @contact.first_name="Drew"
		assert_equal "Khagerian", @contact.last_name="Khagerian"
		assert_equal "yahoo", @contact.email="yahoo"
		assert_equal "new notes", @contact.notes="new notes"
	end

	def test_display_contact # can test in terminal
	end

end