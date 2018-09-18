class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :co_titel
      t.references :ruler, foreign_key: true
      t.references :dynasty, foreign_key: true
      t.references :city, foreign_key: true
      t.references :year, foreign_key: true

      t.timestamps
    end
  end
end
