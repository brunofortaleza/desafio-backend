class Legislature < ApplicationRecord
  has_many :deputies, dependent: :destroy
end
