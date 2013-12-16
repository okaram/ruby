require 'attr_encrypted'
class User
	attr_accessor :name
	attr_encrypted :ssn, :key => 'a secret key'
end
