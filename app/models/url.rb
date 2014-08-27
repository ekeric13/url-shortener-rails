class Url < ActiveRecord::Base

  belongs_to :user
  # Remember to create a migration!
  before_save :shorten_url
  def shorten_url
    # attribute of url, we change this attribute, but assign to the same ID
    if self.short_url.nil?
      self[:short_url] = rand(1..999).to_s + ("a".."z").to_a.sample
    end
  end

end
