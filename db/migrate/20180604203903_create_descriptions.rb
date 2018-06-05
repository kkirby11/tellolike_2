class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.string :title
      t.text :body
      t.belongs_to :topic, foreign_key: true

      t.timestamps
    end
  end
end
