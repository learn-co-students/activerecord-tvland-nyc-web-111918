class ChangeDatatypeInCharacters < ActiveRecord::Migration[4.2]
  def change
    change_column :characters, :actor_id, :integer
    change_column :characters, :show_id, :integer
  end

end
