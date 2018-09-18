class AddYearIdToCoins < ActiveRecord::Migration[5.1]
  def change
    add_reference :coins, :year, foreign_key: true
  end
end
