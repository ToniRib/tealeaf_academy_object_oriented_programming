## Exercise 3

### Question
When running the following code...

```
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
```

We get the following error...

```
test.rb:9:in `<main>': undefined method `name=' for #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
```

Why do we get this error and how to we fix it?

### Answer
The attr_reader method only allows someone to view (read) the value of the instance variable name via its getter method, not write to it via a setter method. In the last line of code the user is attempting to write to the instance variable bob. In order to fix this, you would need to change attr_reader to attr_accessor so you can both read and write to that variable.