class Game
  include Mongoid::Document
  field :game_type, type: Integer
  field :game_state, type: Integer
  field :num_rounds, type: Integer
  field :current_round, type: BSON::ObjectId
  embeds_many :rounds
end
