def substring(text, dictionary)
    result = Hash.new(0)
    low_text = text.downcase
    total_count = 0 
  
    dictionary.each do |word|
      matches = low_text.scan(word).length
      result[word] = matches unless matches.zero?
      total_count += matches 
    end
  
    return low_text, total_count
  end
  
  dictionary = ["zdr", "zdr", "kopr", "what", "case"]
  message = "zdr"
  modified_text, counts = substring(message, dictionary)
  puts "Modified Text: #{modified_text}"
  puts "Total Count: #{counts}"
  