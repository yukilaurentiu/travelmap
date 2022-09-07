class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :bookmarks
  # validates :city, presence: true
  # validates :address, presence: true


  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :title, :description, :category, :city_id ],
  associated_against: {
    city: :name
  },
  using: {
    tsearch: { prefix: true }
  }
end
