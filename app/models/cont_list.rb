class ContList < ApplicationRecord
    has_many :contact_list_mappings
    has_many :contacts, through: :contact_list_mappings

    validates :name, presence: true, length: { minimum: 2 }
    
end
