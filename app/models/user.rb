class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false} 
end
