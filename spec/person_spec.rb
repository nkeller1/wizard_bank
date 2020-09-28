require_relative '../lib/person'

RSpec.describe Person do
  it "exists and has attributes" do
    person = Person.new("Minerva", 1000)

    expect(person).to be
    expect(person.name).to eq('Minerva')
    expect(person.cash).to eq(1000)
  end
end
