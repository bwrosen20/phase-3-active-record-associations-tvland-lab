require "pry"
class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
  
def actors_list
    actor_array=[]
    # binding.pry
    for actor in Actor.all do
        name="#{actor.first_name} #{actor.last_name}"
        actor_array << name
    end
    actor_array
end


end