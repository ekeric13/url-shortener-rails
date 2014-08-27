class User < ActiveRecord::Base
  has_many :urls

  def display_password
    self.password
  end
end
