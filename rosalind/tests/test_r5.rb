require 'test/unit'
load '../r5_hamm_distance.rb'

class R5Test < Test::Unit::TestCase
	def test_distance
		assert_equal 3,hamming_distance('abcdef','abdeff')
	end
	
end
