def to_freqs(arr)
    freqs={} # empty map
    arr.each do |elem| 
                fe=freqs[elem]
                freqs[elem]=(fe||0)+1
            end
    freqs
end
    

def max_beauty(str)
    freqs=to_freqs(str.downcase.scan(/./).find_all{|s| s.match(/^[[:alpha:]]$/)}).to_a.sort {|elem1, elem2| elem2[1] <=> elem1[1]}
    score=26
    beauty=0
    freqs.each do |elem|
        beauty+=score*elem[1]
        score-=1;
    end
    beauty
end

if __FILE__ == $0
    lines=IO.readlines(ARGV[0])
    num_lines=Integer(lines[0])
    (1..num_lines).each do |idx|
        puts "Case ##{idx}: #{max_beauty(lines[idx])}"
    end
end