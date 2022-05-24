class Recipe < ApplicationRecord
  has_many :procedures
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
end
