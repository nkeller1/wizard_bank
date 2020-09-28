require_relative '../lib/person'
require_relative '../lib/bank'

RSpec.describe Bank do
  it "exists and has attributes" do
    bank = Bank.new("Chase")

    expect(bank).to be
    expect(bank.name).to eq('Chase')
    expect(bank.name).not_to eq('Wells Fargo')
  end

  it "can have an account opened with a person" do
    bank = Bank.new("Chase")
    person = Person.new("Minerva", 1000)
    # require "pry"; binding.pry
    expect do
      bank.open_account(person)
    end.to output("An account has been opened for Minerva with Chase.\n").to_stdout

    expect do
      bank.open_account(person)
    end.not_to output("blank").to_stdout
  end
end
