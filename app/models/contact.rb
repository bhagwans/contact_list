class Contact < ApplicationRecord
     #belongs_to :contact_lists
     has_many :contact_list_mappings
     #has_one :contact_lists, through: :contact_list_mappings

     validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
     validates :email, presence: true,  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true
end
