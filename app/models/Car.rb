class Car < ActiveRecord::Base
    has_many :car_owners
    has_many :owners, through: :car_owners

    def is_checked?
        if self.for_sale == true
            return "checked"
        else
            return ""
        end
    end
end