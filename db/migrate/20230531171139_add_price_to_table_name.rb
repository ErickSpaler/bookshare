class AddPriceToTableName < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :price, :decimal
  end
end
