# rosalind problem 2, http://rosalind.info/problems/rna/
# pass the file name of the input as first argument
dna=IO.read(ARGV[0])
puts dna.gsub('T','U')
