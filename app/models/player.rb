class Player
  include Mongoid::Document
  field :name, type: String
  field :id, type: Integer
  field :total_score, type: Integer
  field :picture_url, type: String
  field :public_key, type: Integer

  index({id: 1}, {unique: true, name: "player_index"})
end
