class Post < ApplicationRecord
  validates :title, :content, presence: true
  
  has_and_belongs_to_many :tags
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

  scope :search_result, ->(parameter) { where("lower(title) LIKE :search", search: "%#{parameter}%") }

  def self.filter_posts_by_tags(tag)
    Tag.find_by(title: tag).posts
  end
end
