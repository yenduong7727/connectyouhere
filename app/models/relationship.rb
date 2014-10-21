class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  validates :followed_id, presence: true
end