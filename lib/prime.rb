require ('pry')

class Prime
  attr_reader(:numbers_array, :numbers)
  def initialize(number)
    @number = number
  end

  def make_array
    @numbers_array = (2..@number).to_a
  end

  def divisible_delete
    make_array
    x = 0
    until (x === numbers_array.length-1)
      @numbers_array.each do |number|
        if (number > numbers_array[x]) && (number % numbers_array[x] === 0)
          @numbers_array.delete_at(@numbers_array.index(number))
        end
      end
      x = x + 1
    end
  end
end



