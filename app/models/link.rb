class Link < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to  :user
  has_many    :comments

  def username
    if self.user
      self.user.email
    else
      "anonymous"
    end
  end
end
