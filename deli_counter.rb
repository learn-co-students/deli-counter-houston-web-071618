# Write your code here.

katz_deli = []

def line(array)
  return puts "The line is currently empty." if array.empty?
  sentence = "The line is currently:"
  array.each.with_index(1) do |customer, index|
    sentence += " #{index}. #{customer}"
  end
  puts sentence
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array)
  return puts "There is nobody waiting to be served!" if array.empty?
  puts "Currently serving #{array.shift}."
end