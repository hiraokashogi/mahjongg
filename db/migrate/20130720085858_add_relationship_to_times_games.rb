class AddRelationshipToTimesGames < ActiveRecord::Migration
  def change
    add_column :times_games, :game_titles_id, :integer
  end
end
