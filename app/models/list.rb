class List < ApplicationRecord
  self.table_name = "rails_wl_lists"
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
