class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :uid, null: false # this is the identifier provided by GitHub
      t.string :provider, null: false # this tells us who provided the identifier

      t.timestamps
    end
  end
end
