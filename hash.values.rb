menu =
 {
   name: 'beet salad',
   price: 6.75,
   allergens: ['nuts','gluten', 'dairy'],
   item: {cookie: "yes", scones:"no"}
 }

#Testing the .values method
print menu.values
puts "\nEXAMPLE: puts menu.values"
puts menu.values

#Testing out the .value? method
puts "\nEXAMPLE: menu.value?(""gluten"")"
puts menu.value?("gluten") #=> False
puts "\nEXAMPLE: menu.value?(6)"
puts menu.value?(6) #=> False
puts "\nEXAMPLE: menu.value? (""beet salad"")"
puts menu.value? ("beet salad") #=> True
puts "\nEXAMPLE: menu.value?(['nuts','gluten', 'dairy'])"
puts menu.value?(['nuts','gluten', 'dairy']) #=> True

#Does it work on hashes inside hashes? YES!
puts "\nEXAMPLE: puts menu[:item].values"
puts menu[:item].values
