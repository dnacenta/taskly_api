class Task < ApplicationRecord
  belongs_to :user

  def complete
    self.completed = true
    self.save
  end
end
