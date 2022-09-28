class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        new_freebie = Freebie.create(item_name: item_name, value: value)
        self.freebies << new_freebie
        dev.freebies << new_freebie
    end

    def self.oldest_company
        Company.order(:founding_year).first
    end

end
