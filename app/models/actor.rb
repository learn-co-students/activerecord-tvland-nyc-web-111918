class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    show_array = []
    characters.each do |character|
      shows.each do |show|
        show_array << "#{character.name} - #{show.name}"
      end
    end
    show_array
  end



end
