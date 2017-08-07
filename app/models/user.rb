class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, omniauth_providers: [:facebook]
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :win_points, :first_name
  # attr_accessible :title, :body
  has_many :subscriptions
  has_many :tournaments, through: :subscriptions
  has_many :user_matche_joins, :dependent => :delete_all
  has_many :matche, through: :user_matche_joins


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    user.first_name = auth.info.name   # assuming the user model has a name
    user.facebook_picture_url = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails,
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end
end
def points
  nb_win*3 + nb_draw
end
def nb_win
  self.matche.where("matches.user_id = ?", self.id).count
end
def nb_loose
  self.matche.where("score is not null and matches.user_id != ?", self.id).count
end
def nb_draw
  nb_played - nb_win - nb_loose
end
def nb_played
  self.matche.where("score is not null").count
end
end
