class Comment < ActiveRecord::Base
  attr_accessible :message, :link_id

  belongs_to  :user
  belongs_to  :link

  def username
    if self.user
      self.user.email
    else
      "anonymous"
    end
  end
end