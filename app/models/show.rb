class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # Can access characters by Show.last.characters

  # Test: 
#   def network
#     self.network_id
#   end

end