class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find_by(item_name: item_name) ? true : false
    end

    def give_away(dev, freebie)
        if self.freebies.find_by(item_name: freebie[:item_name])
            dev.freebies << freebie
        else
            puts "Not this Dev's freebie to give away!"
        end
    end
end
