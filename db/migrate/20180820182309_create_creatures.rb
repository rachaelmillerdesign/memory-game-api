class CreateCreatures < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures do |t|
      t.string :common_name
      t.string :latin_name
      t.string :description
      t.string :iucn_status
      t.string :habitat
      t.string :image

      t.timestamps
    end
  end
end
