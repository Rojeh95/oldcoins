class CreateNewfounds < ActiveRecord::Migration[5.1]
  def change
    create_table :newfounds do |t|
      t.string :dynasty
      t.string :ruler
      t.string :city
      t.string :year
      t.float :weight
      t.string :locality
      t.date :date

      t.timestamps
    end
  end
end
