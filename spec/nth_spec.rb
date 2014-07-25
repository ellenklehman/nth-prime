require ('rspec')
require ('nth')

describe('nth') do
  it("returns the nth prime number") do
    nth(2).should(eq(3))
  end
end
