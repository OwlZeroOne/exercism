module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      return 3.213
    elsif balance < 1000
      return 0.5
    elsif balance < 5000
      return 1.621
    else
      return 2.475
    end
  end

  def self.annual_balance_update(balance)
    return balance + balance * (self.interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = self.annual_balance_update(current_balance)
      years += 1
    end
    return years
  end
end

# balances = [-50, 50, 1500, 5000, 10000]
# c = 0
# while c < 5
#   puts "$#{balances[c]} -> #{(SavingsAccount.interest_rate(balances[c]) * 100).round(3)}%"
#   c += 1
# end

puts SavingsAccount.years_before_desired_balance(200.75, 214.88)