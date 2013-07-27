class RemoveTimesAndDeletedToTimesGames < ActiveRecord::Migration
  def change
    remove_column :times_games, :winner1, :string
    remove_column :times_games, :winner2, :string
    remove_column :times_games, :winner3, :string
    remove_column :times_games, :loser1, :string
    remove_column :times_games, :loser2, :string
    remove_column :times_games, :loser3, :string
  end
end
