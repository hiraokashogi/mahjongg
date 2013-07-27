class AddParentToTimesGames < ActiveRecord::Migration
  def change
    add_column :times_games, :is_parent, :boolean
  end
end
