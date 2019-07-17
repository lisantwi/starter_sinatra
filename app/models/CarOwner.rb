class CarOwner < ActiveRecord::Base
    belongs_to :car
    belongs_to :owner
end