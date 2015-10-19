class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_many(
  :contacts,
  class_name: "Contact",
  foreign_key: :user_id

  )
end
