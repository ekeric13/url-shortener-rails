require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  has_many :urls

  def display_password
    self.password
  end

  def pass
    @pass ||= Password.new(password)
  end

  def pass=(new_password)
    @pass= Password.create(new_password)
    self.password = @pass
  end

end
