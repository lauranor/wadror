class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :usernamfold
      t.string :user
      t.string :username

      t.timestamps null: false
    end
  end
end
