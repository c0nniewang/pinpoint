class User < ApplicationRecord
  has_many :activities
  has_many :categories, through: :activites
end
