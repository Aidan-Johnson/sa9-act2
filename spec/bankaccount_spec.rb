require "bankaccount"

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account1 = BankAccount.new
      account1.deposit(5)
      expect(account1.balance).to eq(5)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account2 = BankAccount.new
      account2.deposit(5)
      account2.withdraw(1)
      expect(account2.balance).to eq(4)
    end

    it "does not change the balance if insufficient funds" do
      account3 = BankAccount.new
      account3.deposit(5)
      account3.withdraw(6)
      expect(account3.balance).to eq(5)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account4 = BankAccount.new(5)
      expect(account4.balance).to eq(5)
    end
  end
end
