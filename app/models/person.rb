class Person < ActiveRecord::Base
  GENDERS = %w( male female )

  validates :name, :first_last_name, :date_of_birth, :gender, :presence => true
  validates :date_of_birth, :date => { :before => Proc.new { Date.today } }

  symbolize :gender, :in => GENDERS, :scopes => true, :methods => true

  has_one :profile

  def full_name
    [ name, first_last_name, second_last_name ].join(' ').strip
  end

  def age
    now = DateTime.now
    now.year - date_of_birth.year - ((now.month > date_of_birth.month || (now.month == date_of_birth.month && now.day >= date_of_birth.day)) ? 0 : 1 )
  end
end
