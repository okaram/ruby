# rosalind problem '5', Hamming distance http://rosalind.info/problems/hamm/
def hamming_distance(str1,str2)
	sum=0;
	str1.length.times do |i|
		if(str1[i]!=str2[i]) then
			sum+=1
		end
	end
	return sum
end


if __FILE__ == $0
	lines=IO.readlines(ARGV[0])
	puts hamming_distance(lines[0],lines[1])
end
