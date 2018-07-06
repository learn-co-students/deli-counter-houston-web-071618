# Write your code here.
def line(katz_deli)
if katz_deli.empty?
      puts "The line is currently empty."
    else
      arr = "The line is currently:"
      katz_deli.each_with_index do |name , index|
        arr.concat(" #{index+1}. #{name}")
      end
      puts arr
end
end

def take_a_number(katz_deli, new_name)
  katz_deli.push(new_name)
 puts "Welcome, #{new_name}. You are number #{katz_deli.length} in line."
  end

def now_serving(katz_deli)
  if katz_deli.length > 0
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
end
end
