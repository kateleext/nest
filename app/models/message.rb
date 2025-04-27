# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  message_type    :string           default("user_message"), not null
#  source_language :string           default(""), not null
#  text            :text             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  chat_id         :bigint           not null
#  recipient_id    :bigint           not null
#  sender_id       :bigint           not null
#
# Indexes
#
#  index_messages_on_chat_id       (chat_id)
#  index_messages_on_recipient_id  (recipient_id)
#  index_messages_on_sender_id     (sender_id)
#
# Foreign Keys
#
#  fk_rails_...  (chat_id => chats.id)
#  fk_rails_...  (recipient_id => users.id)
#  fk_rails_...  (sender_id => users.id)
#
class Message < ApplicationRecord
  belongs_to :sender_id
  belongs_to :recipient_id
  belongs_to :chat_id
end
