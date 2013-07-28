class AddDefaultPointToGameTitles < ActiveRecord::Migration
  def change
    add_column :game_titles, :default_point, :integer
    add_column :game_titles, :back_point, :integer
  end
end
