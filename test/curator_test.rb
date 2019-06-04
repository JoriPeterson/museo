require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'
require './lib/curator'
require 'pry'

class CuratorTest < Minitest::Test

  def setup
    @curator = Curator.new
    @photo_1 = ({id: "1", name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: "1", year: "1954"})
    @photo_2 = ({id: "2", name: "Moonrise, Hernandez", artist_id: "2", year: "1941"})
    @artist_1 = ({id: "1", name: "Henri Cartier-Bresson", born: "1908", died:"2004", country: "France"})
    @artist_2 = ({id: "2", name: "Ansel Adams", born: "1902", died: "1984",    country: "United States"}) 
  end

  def test_it_exists
    assert_instance_of Curator, @curator
  end

  def test_it_has_attributes
    assert_equal [], @curator.artists
    assert_equal [], @curator.photographs
  end

  def test_it_can_add_photographs
    photo_1 = @curator.add_photograph(@photo_1).last
    photo_2 = @curator.add_photograph(@photo_2).last
    assert_equal [photo_1, photo_2], @curator.photographs

    assert_equal photo_1, @curator.photographs.first

    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", @curator.photographs.first.name
  end
end
