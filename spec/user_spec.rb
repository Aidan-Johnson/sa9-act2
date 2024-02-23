require 'user'



RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      user1 = User.new("success_test")
      user1.log_in
      expect(user1.logged_in).to be true
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      user2 = User.new("fail_test")
      user2.log_in
      user2.log_out
      expect(user2.logged_in).to be false
    end
  end
    describe "#username" do
    it "returns the correct username" do
      username = "name_test"
      user3 = User.new(username)
      expect(user3.username).to eq(username)
    end
  end
end
