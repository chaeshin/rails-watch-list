class Bookmark < ApplicationRecord
  self.table_name = "rails_wl_bookmarks"
  belongs_to :movie, foreign_key: "rails_wl_movie_id"
  belongs_to :list, foreign_key: "rails_wl_list_id"

  validates :comment, length: { minimum: 6 }
  validates :rails_wl_movie_id, uniqueness: {
    scope: :rails_wl_list_id,
    message: 'This movie exist'
  }

  def movie_id
    rails_wl_movie_id
  end
  def list_id
    rails_wl_list_id
  end
end
