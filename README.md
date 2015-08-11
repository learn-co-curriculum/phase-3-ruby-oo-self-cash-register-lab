# Object Oriented Cash Register

## Objectives

1. Build a class with instance methods. 
2. Call instance methods inside of other instance methods. 
3. Use instance methods to track information pertinent to an instance of a class. 

## Description

We're going to create an Object Oriented Cash Register that can add items of varying quantities and prices, calculate discounts, and keep track of what's been added to it.

## Instructions

**This is a test-driven lab!** You will need to read the spec file and the test output very carefully to solve this one. 

**Hint:** Keep in mind that to call an instance method *inside* another instance method, we use the `self` keyword to refer to the instance on which we are operating. For example:

```ruby
class Person
  
  attr_accessor :age

  def initialize(age)
    @age = 0
  end

  def birthday
    self.age += 1
  end
end
```

Follow along with the specs in `spec/cash_register_spec.rb`. They have been set to `--fail-fast`, so by completing one test at a time, you'll end up with a relatively complex class at the end.

Take it one step at a time!

## Bonus

Build a method called `void_last_transaction` that will remove the last transaction from the total. You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow. 

**Hint:** In what method of the class are you working with an individual item?


