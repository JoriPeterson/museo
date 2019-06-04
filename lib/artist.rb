class Artist
  attr_reader :id, :name, :born, :died, :country

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @born = attributes[:born]
    @died = attributes[:died]
    @country = attributes[:country]
  end

end
