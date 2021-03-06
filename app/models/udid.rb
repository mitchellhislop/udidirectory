class Udid < ActiveRecord::Base
  belongs_to :twitter_user

  before_validation :strip_udid
  validates :twitter_user, :presence => true
  validates_length_of :udid, :is => 40, :message => "must be 40 characters"

private

  def strip_udid
    self.udid = self.udid.gsub(/[^A-za-z0-9]+/,'')
  end
end
