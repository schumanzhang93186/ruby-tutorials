# methods

def print_hello_word
    puts "hello world"
end

# invoke or call method
print_hello_word

def say_hi(name)
    puts "hello to #{name}"
end

say_hi("Schuman")

#default arguments
def addition(another_number = 10)
    base_number = 5
    sum = base_number + another_number
    puts "sum is #{sum}"
end

addition(343)

#default arguments go to end of param list
def subtraction(first, second=23)
    puts first - second
end

subtraction(100)

# The primary difference between them is that puts 
# adds a new line after executing, and print does not

# returns
# Every method in ruby returns a value by default, which is value of last line
new_num = subtraction(200, 100)
puts new_num

# use explicit return statement when you have to
def change_my_name
    name = "John"
    name.reverse
    return name
end

puts change_my_name

# return multiple values
def get_two_vals
    return 12, 13
end

num_1, num_2 = get_two_vals
puts(num_1)
puts(num_2)

# method scope
# big difference with javascript

fav_pet = "cat"

def tell_me_fav_pet
    puts "#{fav_pet} is my favourite pet"
end

# tell_me_fav_pet

def tell_me_fav_pet_2(fav_pet="dog")
    # local scope
    puts "#{fav_pet} is my favourite pet"
end

tell_me_fav_pet_2