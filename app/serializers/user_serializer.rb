class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :current_lat, :current_long, :email, :password
  has_many :activities
  # has_many :categories, through: :activities
end
