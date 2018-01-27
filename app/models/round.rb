class Round
  include Mongoid::Document
  field :scores, type: Hash
  embedded_in :game
end
