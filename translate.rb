def piglatinize(text)
    vowels = ["a","e","i","o","u","I","A","E","O","U"]
    collecting_array = []
    words = text.split(' ')
    words.each do |word|
     if vowels.include?(word.chars.first)
       collecting_array << word + "way"
     else             
       collecting_array << helper_method(word)   
     end
   end
    return collecting_array.join(' ')
end
puts piglatinize("bruh")
