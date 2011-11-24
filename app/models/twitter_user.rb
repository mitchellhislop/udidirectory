class TwitterUser < ActiveRecord::Base
  has_many :udids
end
