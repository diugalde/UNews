class AddCategoryAndLikesToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :category, :string
    add_column :articles, :likes, :integer
  end
end
