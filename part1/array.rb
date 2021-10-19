# create a new array
# literal
my_array = []

# class constructor
second_array = Array.new

puppies = ["bulldog", "terrier", "poodle"]
random_numbers = [ 2, 5, 6, 8, 30050]
random = ["this", "array", 7, 20, "has", 45, "integers", "&", "strings", 309]

# add items

# shovel
puppies << "lab"

# .inspect method returns a string containing a human-readable representation of an object
puts puppies.inspect

# push
puppies.push("oodle")
puts puppies.inspect

# unshift adds to the front
random_numbers.unshift(42)
puts random_numbers.inspect

# pop removes last item
random_numbers.pop
puts random_numbers.inspect

# shift removes first item
random.shift
puts random.inspect

# access using index
puts puppies[2]
puts puppies[-1]
puts puppies.index("oodle")

puppies[4] = "oodles"
puts puppies

#length
puts random.length

# sort
puts puppies.sort.inspect

# reverse
puts random_numbers.reverse.inspect
puts random.reverse.inspect

# include?
puts puppies.include?("oodles")

# first and last
puts puppies.first
puts puppies.last

# size is an alias of length
puts random.size

# loop elements
def loop_array(numbers)
    numbers.each { |val| 
        puts val
    }
end

loop_array(random_numbers)


# loop with index
def loop_with_index(puppies)
    for index in 0..puppies.size
        puts "#{index}:  #{puppies[index]}"
    end
end

loop_with_index(puppies)

# loop with index again
def loop_with_index_again(puppies)
    puppies.each_with_index { |val, idx| 
        puts "#{idx}:  #{val}"
    }
end

loop_with_index_again(puppies)