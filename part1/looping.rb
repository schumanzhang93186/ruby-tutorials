# examine looping constructs in ruby

# loop x number of times
def print_x_times(x)
    x.times do
        puts 'hello there!'
    end
end

print_x_times(5)

def infinte_loop
    loop do
        puts 'does not stop'
        break
    end
end

infinte_loop

def loop_with_counter
    counter = 0

    loop do
        puts "#{counter} of the loop"
        counter += 1

        if counter > 6
            break
        end
    end
end

loop_with_counter

# while loop checks a condition
def loop_with_while(x)
    while x < 20 # eval to true then loops
        puts "#{x * 2}"
        x += 1
    end
end

loop_with_while(10)

# until loops when the condition is false
def loop_with_until(x)
    until x >= 20 # eval to false then loops
        puts "#{x}"
        x += 1
    end
end

loop_with_until(2)

# for in loop
def for_in_loop
    for i in 0..5
        product = i * 1

        if product == 3
            puts "3!"
        elsif product == 4
            next # go to next iteration
        end

        puts product
    end
end

for_in_loop

# for in loop alternative
# increment loop
def for_in_loop_again
    (0..5).each do |i|
        puts "i: #{i}"
    end
end

for_in_loop_again

# fizzbuzz
# decrementing i
def fizz_buzz(x)
    x.downto(0) do |i|
        if i % 2 == 0
            puts "#{i} is even"
        elsif i % 3 == 0
            puts "#{i} is divisible by 3"
        else
            puts "#{i} odd and not divisible by 3"
        end
    end
end

fizz_buzz(100)
