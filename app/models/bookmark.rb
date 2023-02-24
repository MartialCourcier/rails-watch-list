class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  #validates :movie, uniqueness: { scope: :list,
    #message: "should happen once per year" }
    validates :comment, length: { minimum: 6 }
end
