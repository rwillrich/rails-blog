class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :text, presence: true

  has_paper_trail

end
