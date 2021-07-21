require 'pry'

class Network
attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    all_characters = @shows.map do |show|
      show.characters
    end.flatten

    all_characters.find_all do |character|
      character.salary >= 500_000 && character.name == character.name.upcase
    end
  end

  def actors_by_show
    result = {}
    @shows.each do |show|
      character_names = show.characters.map do |character|
        character.actor
      end
      result[show] = character_names
    end
    result
  end
end
