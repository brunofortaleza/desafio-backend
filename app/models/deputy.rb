class Deputy < ApplicationRecord
  belongs_to :legislature
  has_many :expenses, dependent: :destroy
end
