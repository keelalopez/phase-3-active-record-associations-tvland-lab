class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  # We are able to get characters by Actor.first.characters

  # Test: Actor.last.full_name
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # Test: Actor.last.list_roles
  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end