class LikeUser < ApplicationRecord
  validates :user_id, {presence: true}
end
