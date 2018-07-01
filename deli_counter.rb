# Write your code here.
katz_deli = []

def line (katz_deli)
  if katz_deli.count > 1
    output = "The line is currently:"
    katz_deli.each_with_index do |name, place_in_line|
      output << " #{place_in_line +1}. #{name}"
    end
    puts output
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
    if katz_deli.length == 0
        katz_deli.push(name)
        puts "Welcome, #{name}. You are number 1 in line."
        
    else
        katz_deli.push(name)
        puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
    end
    katz_deli
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        serving = katz_deli.shift()
        puts "Currently serving #{serving}."
    end
end


katz_deli = ["Jack", "Scott", "James"]
take_a_number(katz_deli, "Kuma")


now_serving(katz_deli)
line(katz_deli)