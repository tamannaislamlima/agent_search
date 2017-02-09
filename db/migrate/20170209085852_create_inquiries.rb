class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :inquiry_type
      t.string :user_type
      t.boolean :proprietor_trade_license
      t.boolean :partner_registered_agreement
      t.boolean :limited_maa
      t.boolean :limited_certification_incorporation
      t.boolean :membership_of_chember
      t.boolean :vat_reg
      t.boolean :tin_number
      t.boolean :exim_license
      t.boolean :company_bank_account
      t.boolean :other_license
      t.boolean :commercial_invoice
      t.boolean :packing_list
      t.boolean :pro_forma_invoice
      t.boolean :shipping_documents
      t.boolean :proof_of_payment
      t.boolean :certificate_of_origin
      t.boolean :ex_erc_number
      t.boolean :insurance
      t.boolean :bond_license
      t.boolean :restricted_clearance
      t.boolean :import_reg_certificate
      t.boolean :export_reg_certificate
      t.string :location

      t.timestamps null: false
    end
  end
end
