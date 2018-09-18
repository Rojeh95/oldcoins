class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :c_name
      t.references :ruler, foreign_key: true
      t.references :dynasty, foreign_key: true

      t.timestamps
    end
  end
end
