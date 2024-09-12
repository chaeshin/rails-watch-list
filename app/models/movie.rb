class Movie < ApplicationRecord
  self.table_name = "rails_wl_movies"
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
