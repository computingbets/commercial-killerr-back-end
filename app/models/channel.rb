class Channel < ActiveRecord::Base
  has_many :votes
  validates :name, uniqueness: true
  belongs_to :user
end
