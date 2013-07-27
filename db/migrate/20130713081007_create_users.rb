class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :it_parent

      t.timestamps
    end
  end
end
