class Post < ApplicationRecord
  has_and_belongs_to_many :tags
  scope :search_result, ->(parameter) { where("lower(title) LIKE :search", search: "%#{parameter}%") }

  def self.filter_posts_by_tags(tag)
    Tag.find_by(title: tag).posts
  end
end
