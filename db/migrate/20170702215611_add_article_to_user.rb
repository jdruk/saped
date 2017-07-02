class AddArticleToUser < ActiveRecord::Migration
  def change
    add_column :users, :article, :string
  end
end
