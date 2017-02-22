module Bank
  class Account
    attr_reader :id, :balance
    def initialize(id, balance)
      raise ArgumentError.new("balance must be >= 0") if balance < 0

      @id = id
      @balance = balance
    end

    def withdraw(amount)
      raise ArgumentError.new("amount must be >= 0") if amount < 0

      if @balance - amount < 0
        puts "Oh no! Account will go negative!"
        return @balance
      else
          @balance -= amount
      end
    end

    def deposit(amount)
      raise ArgumentError.new("amount must be >= 0") if amount < 0

      @balance += amount
    end
  end
end
