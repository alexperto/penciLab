class User < ActiveRecord::Base
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable


  validates :email, :presence   => true
  validates :email, :uniqueness => true

  acts_as_authorization_subject :association_name => :roles, :join_table_name => :enrollments
end
