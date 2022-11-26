class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :phonenumber
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
