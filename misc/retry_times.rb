


class Test1
	def initialize(a)
		@a=a
	end
	def retry_times(n, func)
		n=n-1
		return func.call()
	rescue => e
		puts "n=#{n} exception #{e}"
		if n>0 then
			retry
		end
	end	
	
	def do_stuff_crashing()
		puts "dsc #{@a}"
		@a=@a-1
		if @a>3 then
			raise TypeError, "hell"
		end
		return ""
	end
	
	def do_n(n)
		retry_times(n, lambda{|| do_stuff_crashing})
	end
end

#retry_times(5,lambda{ || return 1/0;})

Test1.new(5).do_n(5)
