class AddArticleTitleToUser < ActiveRecord::Migration
  def change
    add_column :users, :article_title, :string
  end
end
