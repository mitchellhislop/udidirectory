class TwitterUser < ActiveRecord::Base
  has_many :udids

  def self.find_by_param(screen_name)
    self.find_by_screen_name(screen_name)
  end

  def to_param
    self.screen_name
  end
end
