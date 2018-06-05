class CreateMemberAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :member_accounts do |t|
      t.belongs_to :user, foreign_key: true
      t.text :project
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
