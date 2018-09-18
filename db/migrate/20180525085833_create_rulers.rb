class CreateRulers < ActiveRecord::Migration[5.1]
  def change
    create_table :rulers do |t|
      t.string :ru_name
      t.references :dynasty, foreign_key: true

      t.timestamps
    end
  end
end
