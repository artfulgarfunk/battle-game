require 'sinatra/base'
require 'sinatra'

class Player
  attr_accessor :name, :score

  def initialize(name = "Incognito", score = 100)
    @name = name
    @score = score
  end

end
