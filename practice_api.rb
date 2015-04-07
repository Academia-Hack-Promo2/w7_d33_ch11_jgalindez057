require 'httparty'

class People
	include HTTParty
	base_uri 'http://hackapi.jgab.net/api/users/'

	def list
		self.class.get('')
	end

	def add_user(user)
		options = {body: user}
		self.class.post('', options)
	end

	def find_user(user_name)
		self.class.get('/'+user_name.to_s)
	end

	def edit_user(user_name, user)
		options = {body: user}
		self.class.put('/'+user_name.to_s, options)
	end

	def delete_user(user_name)
		self.class.delete('/'+user_name.to_s)
	end
end

person = People.new
 print person.add_user({
 name: "John",
 address: "Gato negro",
  fullname: "John Galindez",
  gender: "male",
  email: "galindezj2@gmail.com",
  phone: "04125826938",
  username: "@johngalindez"
 });




