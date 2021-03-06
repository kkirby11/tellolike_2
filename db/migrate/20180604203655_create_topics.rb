class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :order
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
