class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        freebies_array = self.freebies.where(item_name: item_name) 
        freebies_array == [] ? false : true
    end

    def give_away(dev, freebie)
        dev.id != self.id && self.freebies.find(freebie.id) ? freebie.update(dev_id: dev.id) : freebie
    end

end
