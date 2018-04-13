require 'chuck_norris'

class Staff
  attr_reader :name, :photo, :position, :description, :joke

  def initialize(name, photo, position, description, joke = ChuckNorris::JokeFinder.find_joke('random?limitTo=[nerdy]').joke)
    @name = name
    @photo = photo
    @position = position
    @description = description
    @joke = joke
  end

end
