require_relative '../lib/person'
require_relative '../lib/bank'

RSpec.describe Bank do
  it "exists and has attributes" do
    bank = Bank.new("Chase")

    expect(bank).to be
    expect(bank.name).to eq('Chase')
  end

  it "can have an account opened with a person" do
    bank = Bank.new("Chase")
    person = Person.new("Minerva", 1000)

    expect(bank.open_account(person)).to include("An account has been opened for Minerva with Chase.")
  end
end
