class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end

# has a comment (FAILED - 1)
#   comment cannot be shorter than 6 characters (FAILED - 2)
#   belongs to a movie (FAILED - 3)
#   belongs to an list (FAILED - 4)
#   movie cannot be blank (FAILED - 5)
#   list cannot be blank (FAILED - 6)
#   is unique for a given movie/list couple (FAILED - 7)

#     CATEGORIES = %w[chinese italian japanese french belgian]
#   has_many :reviews, dependent: :destroy
#   validates :name, presence: true
#   validates :address, presence: true
#   validates :category, presence: true
#   validates :category, inclusion: { in: CATEGORIES }
# end
