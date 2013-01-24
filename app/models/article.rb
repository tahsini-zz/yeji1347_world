class Article < ActiveRecord::Base
	has_many :categories

  validates_presence_of :title, :content
  scope :active, where('active = ?', true)
  scope :alphabetical, order('title')
end
