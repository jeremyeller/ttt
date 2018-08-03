class Board < ApplicationRecord
    belongs_to :game
    has_many :spaces
    s1a = Space.create!
    s1b = Space.create!
    s1c = Space.create!
    s2a = Space.create!
    s2b = Space.create!
    s2c = Space.create!
    s3a = Space.create!
    s3b = Space.create!
    s3c = Space.create!
end