# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  category   :string
#  name       :string
#  price      :decimal(, )
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  invoice_id :integer          not null
#
# Indexes
#
#  index_purchases_on_invoice_id  (invoice_id)
#
# Foreign Keys
#
#  invoice_id  (invoice_id => invoices.id)
#
class Purchase < ApplicationRecord
  belongs_to :invoice
end
