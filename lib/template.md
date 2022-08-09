# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

<!-- 
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list. 
-->

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize
    @tasks
    # ...
  end

  def add(task) 
    # task is a string
    # No return value
  end

  def display_tasks
    # returns a list with all the current tasks
  end

  def mark_as_complete(task)
    # Deletes tasks from the list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
task = TodoList.new
task.add("Walk the dog") #=> no return value, only pushes the task to the list
task.display_tasks # => ['Walk the dog']
task.mark_as_complete("Walk the dog") #=> no return value, deletes the task from the list

# 2
task = TodoList.new
task.add("") # fails with "No task set."
task.display_tasks # fails with "There are no tasks at the moment."
task.mark_as_complete("walk the dog") # fails with "This task doesn't exist in our list"

# 3
task = TodoList.new
task.remind_me_to("")
reminder.remind() # => ", Kay!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
