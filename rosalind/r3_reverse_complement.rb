# rosalind problem 3 http://rosalind.info/problems/revc/
def reverse_complement(dna)
	complements={'A'=>'T', 'T'=>'A', 'G'=>'C', 'C'=>'G'}
	return dna.reverse.scan(/./).map {|elem| complements[elem]}.join
end

puts reverse_complement(IO.read(ARGV[0]))
