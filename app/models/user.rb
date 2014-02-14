class User < ActiveRecord::Base
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable


  validates :email, :presence   => true
  validates :email, :uniqueness => true

  #could we have multiple profiles for each user?
  has_one :profile, :dependent => :destroy

  acts_as_authorization_subject :association_name => :roles, :join_table_name => :enrollments
end
