class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
        dev_name = Dev.find(self.dev_id).name
        company_name = Company.find(self.company_id).name
        "#{dev_name} owns a #{self.item_name} from #{company_name}"
    end
end
