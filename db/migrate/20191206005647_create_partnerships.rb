class CreatePartnerships < ActiveRecord::Migration[6.0]
  def change
    create_table :partnerships do |t|
      t.references :user, index: true
      t.references :partner, index: true

      t.timestamps
    end

    add_foreign_key :partnerships, :users, column: :user_id
    add_foreign_key :partnerships, :users, column: :partner_id
  end
end
