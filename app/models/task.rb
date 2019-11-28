class Task < ApplicationRecord
  validates :name, :description, presence: true

  validates_numericality_of :state

  enum state: { dont_done: 0, progress: 1, done: 2 }
end
