
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
