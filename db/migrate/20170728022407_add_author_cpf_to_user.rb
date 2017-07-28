class AddAuthorCpfToUser < ActiveRecord::Migration
  def change
    add_column :users, :author_one_cpf, :string
    add_column :users, :author_two_cpf, :string
    add_column :users, :author_three_cpf, :string
  end
end
