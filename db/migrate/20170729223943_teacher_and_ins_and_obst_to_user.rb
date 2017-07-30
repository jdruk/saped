class TeacherAndInsAndObstToUser < ActiveRecord::Migration
  def change
    add_column :users, :teacher, :boolean, default: false
    add_column :users, :institution, :string
    add_column :users, :obs_article, :string
  end
end
