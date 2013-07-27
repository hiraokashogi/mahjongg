class AddTimesAddAndDeletedToTimesGames < ActiveRecord::Migration
  def change
    add_column :times_games, :user1, :integer
    add_column :times_games, :user2, :integer
    add_column :times_games, :user3, :integer
    add_column :times_games, :user4, :integer
  end
end
