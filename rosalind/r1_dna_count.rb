# rosalind problem 1
def dna_count(dna)
	freqs={'A'=>0, 'T'=>0, 'G'=>0, 'C'=>0}
	dna.scan(/./).each do |elem|
		freqs[elem]+=1;
	end
	return freqs
end

freqs=dna_count(IO.read(ARGV[0]))
puts freqs['A'],freqs['C'],freqs['T'],freqs['G']
