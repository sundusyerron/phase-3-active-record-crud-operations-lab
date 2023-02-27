class Movie < ActiveRecord::Base
    
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end


    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def update_with_attributes(title:, release_date:)
        self.update(title: title, release_date: release_date)
    end

    def self.delete_all_movies
        Movie.delete_all
    end

    def self.delete_by_id(id)
        Movie.find(id).delete
    end

    def self.update_all_titles(title)
        self.update_all(title: title)
    end
    def update_with_attributes(attributes)
        self.update(attributes)
    end

end