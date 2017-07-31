class UserMatcheJoin < ActiveRecord::Base
  belongs_to :matche
  belongs_to :user
  # attr_accessible :title, :body
end
