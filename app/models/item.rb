class Item < ApplicationRecord
  has_many :ownerships
  has_many :items, through: :ownerships
  
  has_many :haves, class_name: 'Have'
  has_many :have_users, through: :haves, source: :user
end
