class CreateTimesGames < ActiveRecord::Migration
  def change
    create_table :times_games do |t|
      t.integer :point
      t.string :sta

      t.timestamps
    end
  end
end
