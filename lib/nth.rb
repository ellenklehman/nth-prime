# def nth(n)
#   number_list = (2..n**2).to_a

#   number_list.each do |prime|
#     number_list.reject! {|number| number != prime && number%prime == 0}
#   end
#   number_list[n - 1]
# end


# Dustin's help in reprograming for better efficiency

def nth(n)
  primes = []
  potential_prime = 2
  while primes.length < n
    is_prime = (2...potential_prime).all? do |number|
      potential_prime % number != 0
    end
    primes << potential_prime if is_prime
    potential_prime += 1
  end
  primes.last
end

puts nth(1000)
