class User < ActiveRecord::Base
  validates :user_name, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(hashed_password)
    self.hashed_password = @password
  end

end
