
katz_deli = []

def line (katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    current =  "The line is currently:"
    katz_deli.each_with_index do |name, index|
      current.concat " #{index+1}. #{name}"
    end
    puts current
  end
end
def get_customer
  @customer = @customer || 0
end

def get_a_number(queue)
  get_customer
  #@customer+=1
  queue.push(@customer+=1)

end

def take_a_number (katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    next_person = katz_deli.shift
    puts "Currently serving #{next_person}."
  end
end 
 76  test.rb 
Viewed
@@ -0,0 +1,76 @@
describe "Additional Tests" do
  context "#get_a_number" do
     it "adds newest customer to the end of the queue" do
      queue = []
      get_a_number(queue)
      expect(queue).to eq([1])

      get_a_number(queue)
      expect(queue).to eq([1,2])
    end

    it "returns the customer's ticket number" do
      queue = []
      bob = get_a_number(queue)
      expect(bob).to eq(1)

      alice = get_a_number(queue)
      expect(alice).to eq(2)
    end
  end

  context "#serve_customer" do
    it "knows how to take people off of the queue" do
      queue = []
      get_a_number(queue)
      get_a_number(queue)

      expect(serve_customer(queue)).to eq(1)

      expect(queue).to eq([2])
    end
  end

  context "Busy Store" do
    it "can deal with a busy store" do
      queue = []
      get_a_number(queue)
      get_a_number(queue)

      serve_customer(queue)

      get_a_number(queue)
      expect(queue).to eq([2,3])
    end

    it "can deal with a store's customer waves" do
      queue = []
      get_a_number(queue)
      get_a_number(queue)
      serve_customer(queue)
      serve_customer(queue)
      expect(queue).to eq([])
      # nothing for 3 hours

      get_a_number(queue)
      get_a_number(queue)
      expect(queue).to eq([3,4])
    end

    it "can deal with 2 stores" do
      deli1 = []
      get_a_number(deli1)
      get_a_number(deli1)
      serve_customer(deli1)
      expect(deli1).to eq([2])

      deli2 = []
      get_a_number(deli2)
      get_a_number(deli2)
      get_a_number(deli2)
      get_a_number(deli2)
      serve_customer(deli2)
      expect(deli2).to eq([2,3,4])
    end
  end