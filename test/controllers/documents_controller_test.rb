require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url, as: :json
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post documents_url, params: { document: { RecruitInfo_id: @document.RecruitInfo_id, aadhar: @document.aadhar, cancelled_cheque: @document.cancelled_cheque, exp_cert: @document.exp_cert, marksheet: @document.marksheet, pan: @document.pan, passport: @document.passport, pic: @document.pic } }, as: :json
    end

    assert_response 201
  end

  test "should show document" do
    get document_url(@document), as: :json
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { RecruitInfo_id: @document.RecruitInfo_id, aadhar: @document.aadhar, cancelled_cheque: @document.cancelled_cheque, exp_cert: @document.exp_cert, marksheet: @document.marksheet, pan: @document.pan, passport: @document.passport, pic: @document.pic } }, as: :json
    assert_response 200
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete document_url(@document), as: :json
    end

    assert_response 204
  end
end
