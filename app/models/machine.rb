class Machine < ApplicationRecord
  validates_presence_of :location

  has_many :snack_machines
  has_many :snacks, through: :snack_machines
  belongs_to :owner
end
