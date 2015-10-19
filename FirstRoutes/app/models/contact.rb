class Contact < ActiveRecord::Base
validates :name, :presence => true, :uniqueness => {:scope => :email}
  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id
  )
  has_many(
    :contact_shares,
    class_name: "ContactShare",
    foreign_key: :contact_id
  )
  has_many(
    :shared_users,
    through: :contact_shares,
    source: :user
  )

end
