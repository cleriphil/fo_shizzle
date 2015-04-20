require('rspec')
require('fo_shizzle')
# fo_shizzle returns the words
# fo_shizzle should change 's' into 'z'
# fo_shizzle should change 's' into 'z' unless it is the first letter in the word
# fo_shizzle doesn't change any capital letters
describe('String#fo_shizzle') do
  it("returns the words") do
    expect("hello".fo_shizzle()).to(eq("hello"))
  end

  it("changes 's' to 'z'") do
    expect("Susan has a bag.".fo_shizzle()).to(eq("Suzan haz a bag."))
  end

  it("changes 's' to 'z' unless it is the first letter of the word") do
    expect("Susan has some serious skills.".fo_shizzle()).to(eq("Suzan haz some seriouz skillz."))
  end

  it("does not change any capital letters") do
    expect("eSurance".fo_shizzle()).to(eq("eSurance"))
  end
end
