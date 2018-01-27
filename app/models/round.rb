class Round
  include Mongoid::Document
  field :scores, type: Hash
  field :semaphore, type: Integer
  embedded_in :game
end
