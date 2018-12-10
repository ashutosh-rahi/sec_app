class Person
	#attr_accessor :name,:age
	def initialize(nam="", ag=10)
		@name=nam
		@age=ag
	end
	def printDetails
		puts "Name=#{@name} and Age=#{@age}"
	end
end

class Student<Person
	def self.dept		
		puts "IT"
	end
	def initialize(name="", age=10, roll_no=0)
		super(name,age)
		@roll_no=roll_no

	end
	def printDetails
		puts "Name=#{@name} and Age=#{@age} and Roll Number=#{@roll_no}"
	end
end

p=Student.new("Ashutosh",21,26)
p.printDetails
Student.dept