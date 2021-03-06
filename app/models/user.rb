require 'bcrypt'

class User
  include DataMapper:: Resource

  attr_reader :password
  attr_accessor :password_confirmation

  validates_confirmation_of :password

  property :id, Serial
  property :first_name,   String, required: true
  property :last_name, String, required: true
  property :username, String, required: true, unique: true
  property :email, String, required: true, unique: true
  property :password_digest, String, length: 120

  has n, :places

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.authenticate(username, password)
   user = first(username: username)
   if user && BCrypt::Password.new(user.password_digest) == password
     user
   else
     nil
   end
 end

end
