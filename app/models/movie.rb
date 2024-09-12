class Movie < ApplicationRecord
  self.table_name = "rails_wl_movies"
  has_many :bookmarks, foreign_key: "rails_wl_movie_id"

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
