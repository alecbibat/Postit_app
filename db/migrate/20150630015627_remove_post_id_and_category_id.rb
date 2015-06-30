class RemovePostIdAndCategoryId < ActiveRecord::Migration
  def change
    remove_column :posts, :category_id
    remove_column :categories, :post_id
  end
end
