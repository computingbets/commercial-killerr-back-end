class Channel < ActiveRecord::Base
  validates :name, uniqueness: true
  belongs_to :user
end
