class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many(:wits)

  scope :everybody_else, ->(user_id) { where.not(id: user_id) }

  def follow(user_to_follow)
    # Do something
  end
end
