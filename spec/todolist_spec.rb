require "todolist"

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todolist1 = TodoList.new
      todolist1.add('Clean room')
      expect(todolist1.todos).to include('Clean room')
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todolist2 = TodoList.new
      todolist2.add('Clean room')
      todolist2.remove('Clean room')
      expect(todolist2.todos).not_to include('Clean room')
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todolist3 = TodoList.new
      target = ['Clean room', 'Wash the cat']
      todolist3.add('Clean room')
      todolist3.add('Wash the cat')
      expect(todolist3.todos).to eq(target)
    end
  end
end
