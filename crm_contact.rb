class Contact

	attr_accessor :id,:first_name,:last_name,:email,:notes

	def initialize(id,first,last,email,notes)
		@id = id
		@first_name = first
		@last_name = last
		@email = email
		@notes = notes
	end

	def display_contact
		puts "ID: 				#{@id}"
		puts "First name: #{@first_name}"
		puts "Last name: 	#{@last_name}"
		puts "Email: 			#{@email}"
		puts "Notes: 			#{@notes}"
	end

end