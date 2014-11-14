class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ghostwrites
  has_many :letters

 def full_name
  "#{self.first_name} #{self.last_name}"
end






#attr_accessible :email, :password, :password_confirmation, :remember_me,
#				:first_name, :last_name, :profile_name

end