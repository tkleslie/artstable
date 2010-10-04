class User < ActiveRecord::Base
  # Include default devise modules. Full list:
  # devise :database_authenticatable, :registerable,
  #   :recoverable, :rememberable, :trackable, :validatable,
  #   :token_authenticatable, :confirmable, :lockable :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
end
