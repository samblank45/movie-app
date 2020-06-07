class Actor < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 2}
  validates :last_name, presence: true, length: { minimum: 2}
  validates :known_for, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 13}
  validates :age, numericality: {even: true}
end
