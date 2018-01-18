class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lat, :long, :completed, :category_name
  belongs_to :user
  belongs_to :category

  def category_name
    object.category.name
  end
end
