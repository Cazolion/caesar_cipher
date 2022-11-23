def caesar(string, factor)
    char_array = string.chars

    num_array = char_array.map { |char| char.ord}

    shifted_num_array = num_array.map do |num|
        if num.between?(65, 90)
            (num - 65 + factor) % 26 + 65
        elsif num.between?(97,122)
            (num - 97 + factor) % 26 + 97
        else
            num
        end
    end
    answer = shifted_num_array.map(&:chr).join
    p answer
end

puts "What is the sentence to encode?"
string = gets.chomp

puts "What is the shift factor?"
factor = gets.chomp.to_i

caesar(string, factor)