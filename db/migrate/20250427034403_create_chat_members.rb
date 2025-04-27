class CreateChatMembers < ActiveRecord::Migration[8.0]
  def change
    create_table :chat_members do |t|
      t.references :chat, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
