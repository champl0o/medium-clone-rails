class Post < ApplicationRecord
  has_and_belongs_to_many :tags
  scope :search_result, ->(parameter) { where("lower(title) LIKE :search", search: "%#{parameter}%") }
end
