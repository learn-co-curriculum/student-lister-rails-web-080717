require 'digest'

class User < ApplicationRecord

  has_secure_password 

  # def authenticate(password)
  #   # run the given pw thru the same encryption fn
  #
  #   # see if the pw_digest in our db is equal to the same thing
  #
  #   self.password_digest == Digest::SHA256.base64digest(password)
  #
  # end
  #
  #
  # def password=(password)
  #
  #   # encrypt the plaintext pw (by running it through a hash fn)
  #   hashed_pw = Digest::SHA256.base64digest(password)
  #   # put it into the database in a col called 'password_digest'
  #   self.password_digest = hashed_pw
  #
  # end

  # def screenname=(name)
  #   self.username = name
  # end
end
