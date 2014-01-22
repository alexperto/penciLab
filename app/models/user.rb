class User < ActiveRecord::Base
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable


  validates :email, :presence   => true
  validates :email, :uniqueness => true

end