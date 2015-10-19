class Contact < ActiveRecord::Base
validates :name, :presence => true, :uniqueness => {:scope => :email}
  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id
  )


end
