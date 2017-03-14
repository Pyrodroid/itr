class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :email
      t.string :login

      t.timestamps null: false
    end
  end
end
