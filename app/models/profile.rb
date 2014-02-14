class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :person

  validates :user_id, :person_id, :type, :presence => true
end
