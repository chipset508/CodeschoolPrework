class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%")
  end
end
