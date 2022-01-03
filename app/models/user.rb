class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :stocks


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  validates :name, presence: true
        #  validates :email, presence: true, uniqueness: true
        #  validates :password, confirmation: true, length: { minimum: 6 }
        #  validates :password_confirmation, presence: true
         
  validates_presence_of :name
  # after_create :account_created_mail
  # def account_created_mail
  #   UserMailer.account_created(self).deliver_later
  # end   

end
