class CreateDynasties < ActiveRecord::Migration[5.1]
  def change
    create_table :dynasties do |t|
      t.string :dy_name

      t.timestamps
    end
  end
end
