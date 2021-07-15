require ('pry')

# (2..50) 
# if remainder = 0 then remove
#   do this until prime counter = n

# (2,3,4,5,6,7 number)
# prime = 2

class Prime
  attr_reader(:numbers_array, :numbers)
  def initialize(number)
    @number = number
  end

  def make_array
    @numbers_array = (1..@number).to_a
  end

  def divisible_delete
    make_array
    x = 0
    until (x === numbers_array.length-1)
      x = x + 1
      @numbers_array.each do |number|
        if (number > numbers_array[x]) && (number % numbers_array[x] === 0)
          @numbers_array.delete_at(@numbers_array.index(number))
        end
      end
    end
  end
end



