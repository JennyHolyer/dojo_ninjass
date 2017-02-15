class Ninja < ApplicationRecord
  belongs_to :dojo
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }

end
