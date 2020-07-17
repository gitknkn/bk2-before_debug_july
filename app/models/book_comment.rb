class BookComment < ApplicationRecord

  belongs_to :user
  belongs_to :book

  validates :comment, presence: {message: "コメントを入力して下さい。"}
end