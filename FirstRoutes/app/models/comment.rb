class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  # belong_to(
  #   :user,
  #   class_name: "User"
  # )
end
