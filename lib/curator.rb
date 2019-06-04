class Curator
  attr_reader :artists, :photographs

  def initialize
    @artists = []
    @photographs = []
  end

  def add_photograph(photograph)
    @photographs << Photograph.new(photograph)
  end

  def add_artist(artist)
    @artists << Artist.new(artist)
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photograph|
      photograph.id == id
    end
  end

  def find_photographs_by_artist(artist)
    photos = []
    artist_hash = Hash.new
    @artists.each do |name, id|
      artist_hash[artist.name] = artist.id
    end
      photos = @photographs.find_all do |photo|
        if photo.artist_id == artist_hash.values
        end
      end
    photos
  end

  

end
