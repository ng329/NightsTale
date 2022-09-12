class User < ApplicationRecord
  include PgSearch::Model

  has_many :favourites, dependent: :destroy
  has_many :events, through: :bookings
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  has_many :invitations
  has_many :pending_invitations, -> { where confirmed: false }, class_name: 'Invitation', foreign_key: "friend_id"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true

  def friends
    friends_i_sent_invitations = Invitation.where(user_id: id, confirmed: true).pluck(:friend_id)
    friends_i_got_invitations = Invitation.where(friend_id: id, confirmed: true).pluck(:user_id)
    ids = friends_i_sent_invitations + friends_i_got_invitations
    User.where(id: ids)
  end

  def friend_with?(user)
    Invitation.confirmed_record?(id, user.id)
  end

  def send_invitation(user1, user2)
    Invitation.create(user_id: user1.id, friend_id: user2.id)
  end

  pg_search_scope :search_by_email_and_username,
                  against: %i[email username],
                  using: {
                    tsearch: { anyword: true }
                  }
end
