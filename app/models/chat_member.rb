# == Schema Information
#
# Table name: chat_members
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chat_id    :bigint           not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_chat_members_on_chat_id    (chat_id)
#  index_chat_members_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (chat_id => chats.id)
#  fk_rails_...  (member_id => users.id)
#
class ChatMember < ApplicationRecord
  belongs_to :chat_id
  belongs_to :member_id
end
