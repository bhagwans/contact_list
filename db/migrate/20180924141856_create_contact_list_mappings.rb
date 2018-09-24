class CreateContactListMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_list_mappings do |t|
      t.references :contact, foreign_key: true
      t.references :cont_list, foreign_key: true

      t.timestamps
    end
  end
end
