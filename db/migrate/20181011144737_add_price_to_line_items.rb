class AddPriceToLineItems < ActiveRecord::Migration[5.2]
  def up
    add_column :line_items, :price, :integer
    execute 'UPDATE line_items SET price=(SELECT price FROM products WHERE line_items.product_id=products.id)'
  end

  def down
    remove_column :line_items, :price
  end
end
