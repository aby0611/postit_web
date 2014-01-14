class AddPostIdAndCategoryIdToPostCategories < ActiveRecord::Migration
  def change
    add_column :post_categories, :post_id, :integer
    add_column :post_categories, :category_id, :integer
    add_column :post_categories, :created_at, :datetime
    add_column :post_categories, :updated_at, :datetime
  end
end
