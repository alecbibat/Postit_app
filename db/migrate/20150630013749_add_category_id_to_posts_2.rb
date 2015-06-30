class AddCategoryIdToPosts2 < ActiveRecord::Migration
  def change
    add_column :posts, :category_id, :integer
    add_column :categories, :post_id, :integer
  end
end
