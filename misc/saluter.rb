class Saluter
	def hello
		return "Hello world"
	end
	
	def hello2(who)
		return "Hello #{who}"
	end
end

s=Saluter.new
puts s.hello2('Orlando');

puts s.send(:hello)
