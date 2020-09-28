class Person
  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    just_created
  end

private

    def just_created
      puts "#{@name} has been created with #{@cash} galleons in cash."
    end

end
