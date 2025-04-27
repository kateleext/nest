class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :recipient, null: false, foreign_key: { to_table: :users }
      t.text :text, null: false
      t.string :source_language, default: "", null: false
      t.string :message_type, default: "user_message", null: false
      t.references :chat, null: false, foreign_key: { to_table: :chats }

      t.timestamps
    end
  end
end
