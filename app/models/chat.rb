# == Schema Information
#
# Table name: chats
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Chat < ApplicationRecord
  has_many :members, class_name: "ChatMember", foreign_key: "member_id"
  has_many :messages
end
