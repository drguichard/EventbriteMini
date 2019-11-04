class User < ApplicationRecord
    has_many :events through :attendances #Un utilisateur peut participer à plusieurs événements au travers des participations
        #Un utilisateur peut administrer plusieurs événements.
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email,
    presence: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }


end
