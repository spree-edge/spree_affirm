# frozen_string_literal: true

class CreateAffirmCheckout < ActiveRecord::Migration[7.1]
  def change
    create_table :spree_affirm_checkouts do |t|
      t.string     :token
      t.references :order, foreign_key: { to_table: :spree_orders }
      t.references :payment_method, foreign_key: { to_table: :spree_payment_methods }
      t.timestamps
    end
  end
end
