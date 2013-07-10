class Link < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user

  def username
    if self.user
      self.user.email
    else
      "anonymous"
    end
  end
end
