# PROBLEM: Bank Account (OOP)
# Build a BankAccount class with the following behaviour:
#
#   - Initialize with an owner name and optional starting balance (default 0)
#   - deposit(amount)  — adds to balance; raise ArgumentError if amount <= 0
#   - withdraw(amount) — subtracts from balance; raise ArgumentError if amount <= 0
#                        raise "Insufficient funds" if amount > balance
#   - balance          — returns current balance
#   - to_s             — returns "Account(owner: Nils, balance: $100)"
#
# P —
#
# E —
#   account = BankAccount.new("Nils", 100)
#   account.deposit(50)      #=> balance is now 150
#   account.withdraw(30)     #=> balance is now 120
#   account.withdraw(200)    #=> raises "Insufficient funds"
#   account.deposit(-10)     #=> raises ArgumentError
#   account.to_s             #=> "Account(owner: Nils, balance: $120)"
#
# D —
#   A class with instance variables.
#
# A —
#   1.
#   2.
#   3.
#
# C —
class BankAccount
  def initialize(owner, balance = 0)
  end

  def deposit(amount)
  end

  def withdraw(amount)
  end

  def balance
  end

  def to_s
  end
end
