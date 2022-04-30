class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :type
      t.integer :rating

      t.timestamps
    end
  end
end
