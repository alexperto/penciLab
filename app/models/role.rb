class Role < ActiveRecord::Base
  VALID_ROLES = %w( admin teacher parent )
  acts_as_authorization_role :join_table_name => :enrollments

  validates :name, :inclusion => { :in => VALID_ROLES }
end
