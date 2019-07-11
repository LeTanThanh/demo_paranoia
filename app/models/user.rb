class User < ApplicationRecord
  acts_as_paranoid

  has_many :posts, dependent: :destroy
end
