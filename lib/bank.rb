class Bank
  attr_reader :name

  def initialize(name)
    @name = name
    just_created
  end

  def open_account(person)
    puts "An account has been opened for #{person.name} with #{@name}."
  end

  private
    def just_created
      puts "#{@name} has been created."
    end

end
