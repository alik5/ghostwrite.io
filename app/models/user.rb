class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :letters

   def full_name
  	"#{self.first_name} #{self.last_name}"
	end

	def self.to_mandrill_to(users)
 	users.map{|user| {:email => user.email}}
	end

	def self.to_mandrill_merge_vars(users)

 	users.map{|user| {:rcpt => user.email, :vars => [{:name => 'first_name', :content => user.first_name}]}}

	end

 



 


end