# == Schema Information
#
# Table name: translations
#
#  id                  :bigint           not null, primary key
#  translated_language :string           not null
#  translated_text     :text             not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  message_id          :bigint           not null
#
# Indexes
#
#  index_translations_on_message_id  (message_id)
#
# Foreign Keys
#
#  fk_rails_...  (message_id => messages.id)
#
class Translation < ApplicationRecord
  belongs_to :message_id
end
