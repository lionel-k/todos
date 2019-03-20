require 'rails_helper'

describe Todos do
  describe '#completed?' do
    it 'returns true if completed_at is set' do
      todo = Todo.new(completed_at: Time.current)

      expect(todo).to be_completed
    end

    it 'returns false if completed_at is nil' do
      todo = Todo.new(completed_at: nil)

      expect(todo).to_not be_completed
    end
  end

  describe '#complete!' do
    it 'updates completed_at' do
      todo = Todo.create(title: 'Watch movie')

      todo.complete!
      todo.reload

      expect(todo).to be_completed
    end
  end

  describe '#incomplete!' do
    it 'updates completed_at to nil' do
      todo = Todo.create(title: 'Watch movie')

      todo.complete!
      todo.mark_incomplete!
      todo.reload

      expect(todo).to_not be_completed
    end
  end
end
