require_relative "crm_contact"

class Database

	attr_accessor :db_array

	def initialize
		@db_array = []
	end

	def add(id,first,last,email,notes)
		@db_array << Contact.new(id,first,last,email,notes)
	end

	def modify(attribute,contact,new_attribute)
		index = 0
		if attribute == "id"
			index = @db_array.index do |x| contact==x.id||contact==x.first_name||
				contact==x.last_name||contact==x.email
			end
			@db_array[index].id = new_attribute
		elsif attribute == "first name"
			index = @db_array.index do |x| contact==x.id||contact==x.first_name||
				contact==x.last_name||contact==x.email
			end
			@db_array[index].first_name = new_attribute
		elsif attribute == "last name"
			index = @db_array.index do |x| contact==x.id||contact==x.first_name||
				contact==x.last_name||contact==x.email
			end
			@db_array[index].last_name = new_attribute
		elsif attribute == "email"
			index = @db_array.index do |x| contact==x.id||contact==x.first_name||
				contact==x.last_name||contact==x.email
			end
			@db_array[index].email = new_attribute
		end
	end

	def display_attr(attribute)
		display = []
		if attribute == "id"
			@db_array.each {|x| display<<x.id}
			return display
		elsif attribute == "first name"
			@db_array.each {|x| display<<x.first_name}
			return display
		elsif attribute == "last name"
			@db_array.each {|x| display<<x.last_name}
			return display
		elsif attribute == "email"
			@db_array.each {|x| display<<x.email}
			return display
		end
	end

	def delete(contact)
		index = @db_array.index do |x| contact==x.id||contact==x.first_name||
				contact==x.last_name||contact==x.email
				end
		
		
	end




end