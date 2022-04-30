class RenameTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :type, :category
  end
end
