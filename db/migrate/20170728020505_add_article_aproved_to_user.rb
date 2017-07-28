class AddArticleAprovedToUser < ActiveRecord::Migration
  def change
    add_column :users, :article_aproved, :boolean
  end
end
