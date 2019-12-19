class CreatePartnerRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :partner_requests do |t|
      t.references :user, index: true
      t.references :partner, index: true

      t.timestamps
    end

    add_foreign_key :partner_requests, :users, column: :user_id
    add_foreign_key :partner_requests, :users, column: :partner_id
  end
end
