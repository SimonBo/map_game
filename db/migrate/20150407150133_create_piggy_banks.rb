class CreatePiggyBanks < ActiveRecord::Migration
  def change
    create_table :piggy_banks do |t|
      t.references :user, index: true
      t.string :location

      t.timestamps null: false
    end
    add_foreign_key :piggy_banks, :users
  end
end
