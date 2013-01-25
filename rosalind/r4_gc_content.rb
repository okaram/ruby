# rosalind problem '4', gc_content http://rosalind.info/problems/gc/
class FASTA_Sequence
	attr_reader :label
	attr_reader :dna
	def initialize(label,dna)
		@label=label;
		@dna=dna;
	end
	
	def gc_content
	#	len=@dna.length
	#	gc_len= @dna.scan(/C|G/).length.to_f
	#	puts "gc_content #{@label} GC=#{gc_len} len=#{len} perc=#{gc_len/len}"
		return @dna.scan(/C|G/).length.to_f / @dna.length
	end
end

def lines_to_sequences(lines)
	sequences=[]
	label=lines[0][1..-2] # -2 to eliminate the \n at the end
	dna=''
	lines[1..-1].each do |line|
		if(line[0]==">")
			sequences.push(FASTA_Sequence.new(label,dna))
			label=line[1..-2]
			dna=''
		else
			dna=dna+line[0..-2]
		end
	end
	sequences.push(FASTA_Sequence.new(label,dna))
	return sequences
end

def file_to_sequences(file_name)
	return lines_to_sequences(IO.readlines(file_name))
end

def max_gc_content(seqs)
	seqs.inject(FASTA_Sequence.new('error','A')) {|result,elem| if elem.gc_content>result.gc_content then elem; else result; end}
end

if __FILE__ == $0
	seq=max_gc_content(file_to_sequences(ARGV[0]))
	puts seq.label
	puts "#{seq.gc_content*100}%"
end
