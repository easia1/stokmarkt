class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # after_create :account_created_mail
  # def account_created_mail
  #   UserMailer.account_created(self).deliver_later
  # end   
end
