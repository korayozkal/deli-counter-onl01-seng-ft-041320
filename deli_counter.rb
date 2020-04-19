katz_deli = []

def line(katz_deli)  
  if katz_deli.empty? 
    puts "The line is currently empty."
  
    else
    line(katz_deli)(0) do |name, index|
      line(katz_deli).push("#{index}. #{name}")
      # push method will push the name into the index 
    end
    puts "The line is: #{line(katz_deli).join(" ")}"
  end
end
    
    
    
    
  end
end

def take_a_number(katz_deli,person)
  if katz_deli.empty? 
    katz_deli.push (person)
    puts "Welcome, #{person}. You are number 1 in line."
  else 
    katz_deli.push (person)
    puts "Welcome, #{person}. You are number 4 in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end