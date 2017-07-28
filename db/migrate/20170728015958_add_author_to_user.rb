class AddAuthorToUser < ActiveRecord::Migration
  def change
    add_column :users, :author_one, :string
    add_column :users, :author_two, :string
    add_column :users, :author_three, :string
  end
end
