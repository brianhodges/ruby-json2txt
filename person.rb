class Person
	attr_accessor :id, :first_name, :last_name, :email,
		:btc_address, :ip_address
	
	def initialize(hash)
		@id = hash["id"]
		@first_name = hash["first_name"]
		@last_name = hash["last_name"]
		@email = hash["email"]
		@btc_address = hash["btc_address"]
		@ip_address = hash["ip_address"]
	end
	
	def full_name
		"#{first_name} #{last_name}"
	end
end
