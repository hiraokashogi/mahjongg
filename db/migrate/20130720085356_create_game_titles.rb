class CreateGameTitles < ActiveRecord::Migration
  def change
    create_table :game_titles do |t|
      t.string :title

      t.timestamps
    end
  end
end
