class DeleteShitFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :user
    remove_column :users, :usernamfold
  end
end
