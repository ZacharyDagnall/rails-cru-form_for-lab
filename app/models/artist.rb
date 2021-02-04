class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, through: :songs

    def self.find_or_create_by_no_case(name_arg)
        artist = Artist.find_by("name LIKE ?", name_arg)
        return artist unless !artist
        Artist.create(name: name_arg)
    end
end
