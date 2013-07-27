class AddWinnerToTimesGames < ActiveRecord::Migration
  def change
    add_column :times_games, :winner1, :string
    add_column :times_games, :winner2, :string
    add_column :times_games, :winner3, :string
    add_column :times_games, :loser1, :string
    add_column :times_games, :loser2, :string
    add_column :times_games, :loser3, :string
  end
end
