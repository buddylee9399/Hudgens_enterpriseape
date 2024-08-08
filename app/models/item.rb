# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  category   :string
#  name       :string
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  invoice_id :integer          not null
#
# Indexes
#
#  index_items_on_invoice_id  (invoice_id)
#
# Foreign Keys
#
#  invoice_id  (invoice_id => invoices.id)
#
class Item < ApplicationRecord
  belongs_to :invoice
end
