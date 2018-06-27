# Write your code here.
katz_deli =[]

def take_a_number(line, name)
  line.push(name)
  puts"Welcome, #{name}. You are number #{line.length} in line."
end

def line(line)
  display_line =""
  if line.length==0
    puts"The line is currently empty."
  else
    line.each_with_index do |val, index|
      display_line.concat(" #{index+1}. #{val}")
    end
    puts "The line is currently:#{display_line}"
  end
end

def now_serving(line)
  if line.length==0
    puts"There is nobody waiting to be served!"
  else
    puts"Currently serving #{line.shift()}."
  end
end
