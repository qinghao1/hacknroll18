class Round
  include Mongoid::Document
  embedded_in :game
end
