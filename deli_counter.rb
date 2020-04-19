
katz_deli = []  
def line(katz_deli) 
   position = 1 
   queue = []

if katz_deli.length == 0     
      puts "The line is currently empty."   
   else 
      katz_deli.each do |customer|     
      queue.push("#. #")     
      position +=1   
   end   
   puts "The line is currently: #{queue.join(" ")}"   
   end 
end

def take_a_number(katz_deli, customer)   
   katz_deli.push(customer)   
   puts "Welcome, #. You are number # in line." 
end  

def now_serving(katz_deli)   
   if katz_deli.empty?     
      puts "There is nobody waiting to be served!"   
   else     
      puts "Currently serving #."   
      katz_deli.shift 
   end 
end
