class Person < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true

  def identifier
    [name, age].join " "
  end
end
