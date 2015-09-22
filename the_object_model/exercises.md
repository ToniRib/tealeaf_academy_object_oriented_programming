## Exercise 1

### Question
How do we create an object in Ruby? Give an example of the creation of an object.

### Answer
You can create an object in Ruby by using the method 'new' on any class. This process is called instantiation.

Example:

```
class MyClass
end

my_class_object = MyClass.new
```

## Exercise 2

### Question

### Answer
Modules are similar to classes except they can contain methods that will be used across multiple classes as mixins. You can mix in a module by using the include keyword and then the module name. This allows code to be reuseable and follows the DRY guideline.

Example:

```
module CoolModule
end

class MyClass
	include CoolModule
end

my_class_object = MyClass.new
```