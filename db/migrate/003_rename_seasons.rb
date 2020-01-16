class RenameSeasons < ActiveRecord::Migration[5.2]

  def change
    rename_colm :shows, :seasons, :season
  end

end
