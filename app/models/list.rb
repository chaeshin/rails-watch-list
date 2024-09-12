class List < ApplicationRecord
  self.table_name = "rails_wl_lists"
  has_many :bookmarks, foreign_key: "rails_wl_list_id", dependent: :destroy
  has_many :movies, foreign_key: "rails_wl_movie_id", through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
