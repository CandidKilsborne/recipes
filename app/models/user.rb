class User < ApplicationRecord
  before_save {self.email = email.downcase}

  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false} 

  has_many :recipes
end
