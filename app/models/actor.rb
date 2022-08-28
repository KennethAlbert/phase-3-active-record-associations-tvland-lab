class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
   
  def full_name
   "#{self.first_name } #{self.last_name}"
  end

  def list_roles
    character_name=self.characters.map do |char|
    char.name
    end.join 

    show_name=self.shows.map do |show|
    show.name
    end.join 

   "#{character_name} - #{show_name}"

  end

  
end