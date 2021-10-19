# booleans and control flow
# In Ruby only false and nil are falsey. 
# Everything else is truthy (yes, even 0 is truthy)

puts !!"hello"

puts !!nil

puts !!0

# conditionals

# if and else
def get_larger_num(num_1, num_2)
    if num_1 > num_2
        return num_1
    else
        return num_2
    end
end

puts get_larger_num(233, 24)

# if else cases
def get_num_range(num)
    if num <= 10
        puts 'number is less than or equal to 10'
    elsif num > 10 && num <= 20
        puts 'number is between 11 and 20'
    elsif num > 20 && num <= 30
        puts 'number is between 21 and 30'
    else
        puts 'number is outside range'
    end
end

get_num_range(23)

visited_before = false
stars = 4.5

# or statement
def should_visit(visited_before, stars)
    if visited_before || stars > 4
        puts 'I should go!'
    else
        puts 'pass'
    end
end

should_visit(visited_before, stars)

# 2 if blocks
def should_go_or_not(visited_before, stars)
    if visited_before
        puts 'I should go!'
    end

    if stars == 5
        puts 'I should really go'
    else
        puts 'changed my mind, don\'t go'
    end
end

should_go_or_not(visited_before, stars)

# ternary
def is_five_stars(stars)
    stars == 5 ? 'five star hotel' : 'no good hotel'
end

rating = is_five_stars(stars)
puts rating

# statement modifiers
def recommend(stars)
    puts 'definitely go' if stars > 4
end

recommend(stars)

def recommend_again(stars)
    puts 'definitely don\'t go' unless stars > 4
end

recommend_again(stars)

# case statements
# run multiple statements against same value
# javascript switch statement

weather = "Rain"

def show_weather(weather)
    case weather
        when 'Rain'
            puts 'Bring your umbrella'
        when 'Sunny'
            puts 'Wear a hat and put on sunscreen'
        when 'Humid'
            puts 'Go swimming'
        when 'Stormy'
            puts 'Stay indoors'
        else
            puts 'Who cares?!'
    end
end

show_weather('Fine')