#Question 1
myHash = Hash.new
myHash.store("one","uno")
myHash.store("two","dos")
myHash.store("three","tres")

myHash.each do |key,val|
    puts "'#{key}' in Spanish is '#{val}'"
end


puts " "


#Question 2
person1=Hash.new
person2=Hash.new
person3=Hash.new
person1={first: "Naveen", last: "Rahi"}
person2={first: "Poonam", last: "Rahi"}
person3={first: "Priyanka", last:"Rahi"}
params={father: person1, mother:person2, sister:person3}
puts params[:father][:first]

puts " "

#Question 3
#Generating a random string of 16 lowercase characters
str=('a'..'z').to_a.shuffle[0..15].join
myHash3={:name=>"Ashutosh", email:"ashutoshrahi1997@gmail.com", "password digest"=>str}
puts myHash3[:name]
puts myHash3[:email]
puts myHash3["password digest"]