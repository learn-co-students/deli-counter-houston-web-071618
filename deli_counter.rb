# Write your code here.
katz_deli = []
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]
other_deli = ["Logan", "Avi", "Spencer"]

def line(line_status)
  str = "The line is currently: "
  # iterate through array and position
  if line_status.length > 1
  line_status.each_with_index { | person, index |
    position = index + 1
    str += "#{position}. #{person} "
    } 
    # cut last space in str here
  puts str.chomp(" ")
  else  
  puts "The line is currently empty."
  # puts line_status.length
end
end
line(katz_deli)
# accepts either katz_deli or other_deli

def take_a_number(line, person_status)
  # should take in exising line if an array or not
  arr_line = line

  if arr_line.length <= 1 
  # add to front of line no one line
  arr_line.push(person_status)  
  arr_line.each_with_index { | person, index |
    position = index + 1 
  puts "Welcome, #{person}. You are number #{position} in line."
    }

  elsif arr_line.length > 1 
  # add to end of line  
  # puts the last person in the array at the last position
  arr_line.push(person_status)     
  puts "Welcome, #{arr_line.last}. You are number #{arr_line.length} in line."
  else arr_line.length = 0 
  # none in line add one assign explicit value 0
  arr_line.push(person_status)  
  arr_line.each_with_index { | person, index |
    position = index + 1 
  puts "Welcome, #{person}. You are number #{position} in line."
    }    
  end 
end  
take_a_number(other_deli,"Grace")

# could take an array ["Logan", "Avi", "Spencer", "Grace"]
def now_serving(line)
  arr_line = line
  # if no one in line
  if arr_line.length >= 1
  puts "Currently serving #{arr_line.first}."
  arr_line.shift
  else arr_line.length < 1 
  puts "There is nobody waiting to be served!"
  # if there are people in line
  # remove the first person in line (remove first position of array) 
  # maybe array.shift 
end 
end
now_serving(other_deli)
# could take an array [Avi", "Spencer"]

