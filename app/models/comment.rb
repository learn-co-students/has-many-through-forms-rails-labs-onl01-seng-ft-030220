class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_atrributes)
    self.user = User.find_or_create_by?(username: user_attributes[:username]) unless user_atrributes[:username].blank?
  end

end
