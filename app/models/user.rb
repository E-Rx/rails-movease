class User < ApplicationRecord
  # before_save :set_default_avatar

  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations
  has_many :vehicules, dependent: :destroy
  # has_many :reviews, through: :reservation

  has_many :messages
  has_many :messages_received, class_name: 'Message', foreign_key: :to_id
  has_many :notifications

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar


  validates :first_name, :last_name, :email, :password, :phone_number, presence: true
  validates :email, uniqueness: true


  def friends
    friends = Message.where(sender: self).map { |message| message.receiver} + Message.where(receiver: self).map { |message| message.sender}
    friends.uniq
  end

  def conversation_with(friend_id)
    friend       = User.find(friend_id)
    conversation = Message.where(sender: self, receiver: friend) + Message.where(sender: friend, receiver: self)
    conversation.sort_by { |message| message.created_at }
  end

end
