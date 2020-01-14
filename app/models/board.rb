class Board < ApplicationRecord
  # validates
  validates :title, :visibility, presence: true

  # ActiveRecord關聯設定
  has_many :lists
  has_many :cards
  
  has_many :user_boards
  has_many :users, through: :user_boards

  has_many :star_boards
  has_many :starred_boards, through: :star_boards, source: :user

  has_many :board_messages, inverse_of: :board

  has_many :search_users
end
