sam = ["hamburgers", "cookies", "crepes", "sandwich", "scrambled egg", "pancake", "waffle", "french toast", "pulled pork", "sinigang", "lumpia", "chicken adobo"]
sally = ["English", "Tagalog", "Spanish", "French", "Japanese", "Mandarin"]

if sam.length > 10 && sally.length > 5
  puts "They should date"
else
  puts "They should not date"
end

if sam.include?("crepes") && sally.include?("French")
  puts "They should get married!"
else
  puts "They should not get married."  
end