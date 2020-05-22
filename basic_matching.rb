def matcher textList, regex
  textList.each do |text|
    puts "#{text} matches #{regex}" if text.match(regex)
  end
end

# 1
matcher ['Kx', 'BlacK', 'kelly'], /K/

# 2
matcher ['Henry', 'perch', 'golf'], /h/i
# alternatively
matcher ['Henry', 'perch', 'golf'], /(h|H)/

# 3
matcher ['snapdragon', 'bearded dragon', 'dragoon'], /dragon/

# 4
fruitList = ['banana', 'orange', 'pineapples', 'strawberry', 'raspberry', 'grappler']
fruits = /(banana|orange|apple|strawberry)/
matcher fruitList, fruits

# 5
text = ['This line has spaces', 'This,line,has,commas,', 'No-spaces-or-commas']
matcher text, /(,| )/

# 6
berries = ['blueberry', 'blackberry', 'black berry', 'strawberry']
matcher berries, /(blue|black)berry/
