class User < ApplicationRecord
    has_many :attendances   #Un utilisateur peut administrer plusieurs événements.
    has_many :events, through: :attendances #Un utilisateur peut participer à plusieurs événements au travers des participations
   
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email,
    presence: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }


    after_create :welcome_send
    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end


end
