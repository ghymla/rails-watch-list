class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, :presence => { :message =>  'cannot be blank' }, uniqueness: true
end
