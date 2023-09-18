class User < ApplicationRecord
    has_secure_password

    has_many :packages

    # validates :email,  presence: { message: "Email can't be blank" }, uniqueness: {message: "This email is already registered."}, email: true
    validates :email, presence: true, uniqueness: true

    def joined
        self.created_at.strftime("%B %e, %Y")
      end

end
