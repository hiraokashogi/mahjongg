class AddGames2ToGameTitles < ActiveRecord::Migration
  def change
    add_column :game_titles, :user1, :integer
    add_column :game_titles, :user2, :integer
    add_column :game_titles, :user3, :integer
    add_column :game_titles, :user4, :integer
  end
end
