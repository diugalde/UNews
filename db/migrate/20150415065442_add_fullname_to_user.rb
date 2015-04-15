class AddFullnameToUser < ActiveRecord::Migration
  def change
    remove_column :articles, :name
    remove_column :articles, :lastName
    add_column :articles, :fullname, :string
  end
end
