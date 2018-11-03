class Article < ApplicationRecord

  has_many :comments

  validates :title, length: { in: 2..140}
  validates :text, length: { in: 10..4000}

  
  def subject
    title
  end

  def last_comment
    comments.last
  end

end
