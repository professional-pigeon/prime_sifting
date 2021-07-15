require ('rspec')
require ('prime')

describe('#prime_sifter') do
  it ("returns an array between 1-10") do
    primes = Prime.new(10)
    primes.make_array
    expect(primes.numbers_array).to(eq([2, 3, 4, 5, 6, 7, 8, 9, 10]))
  end
  it ("remove all the numbers in an array between 1-10 that are divisible by 2") do
    primes = Prime.new(6)
    primes.divisible_delete
    expect(primes.numbers_array).to(eq([2,3,5]))
  end
    it ("removes all the numbers in an array between 1-20") do
    primes = Prime.new(20)
    primes.divisible_delete
    expect(primes.numbers_array).to(eq([2,3,5,7,11,13,17,19]))
  end
  it ("removes all the numbers in an array between 1-1000") do
    primes = Prime.new(10000)
    primes.divisible_delete
    expect(primes.numbers_array.length).to(eq(1229))
  end
end