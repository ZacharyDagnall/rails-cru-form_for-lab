class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_no_case(name: name)
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

    def genre_name=(name)
        self.genre = Genre.find_or_create_by(name: name)
    end

    def genre_name
        self.genre ? self.genre.name : ""
    end

end
