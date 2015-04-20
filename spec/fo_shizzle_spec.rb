require('rspec')
require('fo_shizzle')

# fo_shizzle should change 's' into 'z'
# fo_shizzle should change 's' into 'z' unless it is the first letter in the word
# fo_shizzle should change 's' into 'z' unless 's' is capitalized
describe('String#fo_shizzle') do
  it("changes 's' to 'z'") do
    expect("Susan has some serious skills.".fo_shizzle()).to(eq("Suzan haz zome zeriouz zkillz."))
  end

  it("changes 's' to 'z' unless it is the first letter of the word") do
    expect("Susan has some serious skills.".fo_shizzle()).to(eq("Suzan haz some seriouz skillz."))
  end
end
