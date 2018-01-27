class Game
  include Mongoid::Document
  field :game_type, type: Integer
  field :game_state, type: Integer
  field :num_rounds, type: Integer
  field :current_round, type: BSON::ObjectId
  embedded_in :session
  embeds_many :rounds

  # Required emotion for current state
  def self.required_emotion
    # Ignore game_type for now
  end
end
