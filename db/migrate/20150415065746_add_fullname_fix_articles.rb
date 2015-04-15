class AddFullnameFixArticles < ActiveRecord::Migration
  def change
        remove_column :articles, :fullname
        remove_column :users, :name
        remove_column :users, :lastName
        add_column :users, :fullname, :string
  end
end
