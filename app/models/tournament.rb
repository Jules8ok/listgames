class Tournament < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  attr_accessible :address, :date, :maxuser, :name, :result
end
