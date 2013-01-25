require 'test/unit'
load '../r4_gc_content.rb'

class R4Test < Test::Unit::TestCase
	def test_constructor
		seq=FASTA_Sequence.new('a','b')
		assert_equal  'b',seq.dna
		assert_equal 'a',seq.label
	end
	
	def test_gc_content1
		seq=FASTA_Sequence.new('test','CCGG')
		assert_in_delta(1.0, seq.gc_content, 0.1)
	end

	def test_gc_content2
		seq=FASTA_Sequence.new('test','CCTTAAGG')
		assert_in_delta(0.5, seq.gc_content, 0.1)
	end
	
	def test_lines_to_sequences
		lines=[">l1\n","AT\n","GC\n", ">l2\n","A\n","T\n","G\n","C\n"]
		seqs=lines_to_sequences(lines)
		assert_equal 2,seqs.length
		assert_equal 'l1',seqs[0].label
		assert_equal 'ATGC',seqs[0].dna
		assert_equal 'l2',seqs[1].label
		assert_equal 'ATGC',seqs[1].dna
	end
	
	def test_file_to_sequences
		seqs=file_to_sequences('../sample_data/gc_content.txt')
		assert_equal 3, seqs.length
		assert_equal 'Rosalind_6404', seqs[0].label
		assert_equal 'CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCCTCCCACTAATAATTCTGAGG',seqs[0].dna
	end

	def test_max
		lines=[">l1\n","AT\n","GCC\n", ">l2\n","A\n","T\n","G\n","C\n"]
		seqs=lines_to_sequences(lines)
		s=max_gc_content(seqs)
		assert_equal 'l1',s.label
		assert_in_delta(0.6, s.gc_content, 0.001)
	end

	def test_max_file
		seqs=file_to_sequences('../sample_data/gc_content.txt')
		s=max_gc_content(seqs)
		assert_equal 'Rosalind_0808',s.label
		assert_in_delta(0.6091954, s.gc_content, 0.001)
	end
end
