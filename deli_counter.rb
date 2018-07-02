# Write your code here.
katz_deli = []

def line(array)
  
  if array.length == 0
    puts "The line is currently empty."
    return
  end
  
  new_array = array.collect!.with_index{ |x, i| " #{i+1}. #{x}"}
  puts "The line is currently:#{new_array.join}"
  
end

def take_a_number(array, name)
  
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array)
  
  if array.length == 0
    puts "There is nobody waiting to be served!"
    return
  end

  puts "Currently serving #{array.shift()}."
  
end
