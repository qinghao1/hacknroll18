class Round
  include Mongoid::Document
  field :scores, type: Hash
  field :finished, type: Boolean
  embedded_in :game
end
