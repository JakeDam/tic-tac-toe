class Test
  attr_accessor :name, :number

  def initialize(name, number)
    @name = name
    @number = number 
  end
end


test_person = Test.new("Jake", "630-818-5430")
puts test_person.name
puts test_person.number

