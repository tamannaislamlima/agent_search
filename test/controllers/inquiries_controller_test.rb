require 'test_helper'

class InquiriesControllerTest < ActionController::TestCase
  setup do
    @inquiry = inquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry" do
    assert_difference('Inquiry.count') do
      post :create, inquiry: { bond_license: @inquiry.bond_license, certificate_of_origin: @inquiry.certificate_of_origin, commercial_invoice: @inquiry.commercial_invoice, company_bank_account: @inquiry.company_bank_account, email: @inquiry.email, ex_erc_number: @inquiry.ex_erc_number, exim_license: @inquiry.exim_license, export_reg_certificate: @inquiry.export_reg_certificate, import_reg_certificate: @inquiry.import_reg_certificate, inquiry_type: @inquiry.inquiry_type, insurance: @inquiry.insurance, limited_certification_incorporation: @inquiry.limited_certification_incorporation, limited_maa: @inquiry.limited_maa, location: @inquiry.location, membership_of_chember: @inquiry.membership_of_chember, name: @inquiry.name, other_license: @inquiry.other_license, packing_list: @inquiry.packing_list, partner_registered_agreement: @inquiry.partner_registered_agreement, pro_forma_invoice: @inquiry.pro_forma_invoice, proof_of_payment: @inquiry.proof_of_payment, proprietor_trade_license: @inquiry.proprietor_trade_license, restricted_clearance: @inquiry.restricted_clearance, shipping_documents: @inquiry.shipping_documents, tin_number: @inquiry.tin_number, user_type: @inquiry.user_type, vat_reg: @inquiry.vat_reg }
    end

    assert_redirected_to inquiry_path(assigns(:inquiry))
  end

  test "should show inquiry" do
    get :show, id: @inquiry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry
    assert_response :success
  end

  test "should update inquiry" do
    patch :update, id: @inquiry, inquiry: { bond_license: @inquiry.bond_license, certificate_of_origin: @inquiry.certificate_of_origin, commercial_invoice: @inquiry.commercial_invoice, company_bank_account: @inquiry.company_bank_account, email: @inquiry.email, ex_erc_number: @inquiry.ex_erc_number, exim_license: @inquiry.exim_license, export_reg_certificate: @inquiry.export_reg_certificate, import_reg_certificate: @inquiry.import_reg_certificate, inquiry_type: @inquiry.inquiry_type, insurance: @inquiry.insurance, limited_certification_incorporation: @inquiry.limited_certification_incorporation, limited_maa: @inquiry.limited_maa, location: @inquiry.location, membership_of_chember: @inquiry.membership_of_chember, name: @inquiry.name, other_license: @inquiry.other_license, packing_list: @inquiry.packing_list, partner_registered_agreement: @inquiry.partner_registered_agreement, pro_forma_invoice: @inquiry.pro_forma_invoice, proof_of_payment: @inquiry.proof_of_payment, proprietor_trade_license: @inquiry.proprietor_trade_license, restricted_clearance: @inquiry.restricted_clearance, shipping_documents: @inquiry.shipping_documents, tin_number: @inquiry.tin_number, user_type: @inquiry.user_type, vat_reg: @inquiry.vat_reg }
    assert_redirected_to inquiry_path(assigns(:inquiry))
  end

  test "should destroy inquiry" do
    assert_difference('Inquiry.count', -1) do
      delete :destroy, id: @inquiry
    end

    assert_redirected_to inquiries_path
  end
end
