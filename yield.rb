def yield_test(name)
  puts "Hi #{name}. This is the 1st line in the method"
  if block_given?
    yield(name)
    puts "Hi #{name}. This is the second line in the method"
  else
    puts "No block supplied - so this is getting printed instead"
  end
  puts ""
  puts "End of method"
end

puts "--- Calling yield_test method with block ---"
puts ""

yield_test("Chris") do |name|
  puts "Hi #{name}. 1st line of block"
  puts "Hi #{name}. 2nd line of block"
end

puts ""
puts "-----------------------------"
puts ""

puts "--- Calling yield_test method without block ---"
puts ""

yield_test("Chris")
