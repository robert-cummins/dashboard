class User < ApplicationRecord
    has_many :skills
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
end
