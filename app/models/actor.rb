require "pry"

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def characters
        actor_array=[]
        # binding.pry
       for character in Character.all do
            actor_array << character.name
       end
    end

    def shows 
        show_array=[]
        for show in Show.all do
            show_array << show.name
        end
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        # binding.pry
        a=self.id
        "#{Character.find(a).name} - #{Show.find(a).name}"
    end
  
end