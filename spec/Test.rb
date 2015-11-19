def binary_multiple_of_4? s
  if s =~ /[a-zA-Z2-9_]$/
    puts "return false1"
  else
    s.include? 0 || 1
    puts "return true"
  else
    puts "return false2"
  end
end
binary_multiple_of_4?("a")