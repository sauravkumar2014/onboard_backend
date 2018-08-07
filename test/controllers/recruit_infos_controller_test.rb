require 'test_helper'

class RecruitInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recruit_info = recruit_infos(:one)
  end

  test "should get index" do
    get recruit_infos_url, as: :json
    assert_response :success
  end

  test "should create recruit_info" do
    assert_difference('RecruitInfo.count') do
      post recruit_infos_url, params: { recruit_info: { User_id: @recruit_info.User_id, aadhar: @recruit_info.aadhar, bank_ac: @recruit_info.bank_ac, bank_name: @recruit_info.bank_name, board_loc: @recruit_info.board_loc, college: @recruit_info.college, dob: @recruit_info.dob, doj: @recruit_info.doj, ifsc: @recruit_info.ifsc, loc_pref: @recruit_info.loc_pref, pan: @recruit_info.pan, uan: @recruit_info.uan } }, as: :json
    end

    assert_response 201
  end

  test "should show recruit_info" do
    get recruit_info_url(@recruit_info), as: :json
    assert_response :success
  end

  test "should update recruit_info" do
    patch recruit_info_url(@recruit_info), params: { recruit_info: { User_id: @recruit_info.User_id, aadhar: @recruit_info.aadhar, bank_ac: @recruit_info.bank_ac, bank_name: @recruit_info.bank_name, board_loc: @recruit_info.board_loc, college: @recruit_info.college, dob: @recruit_info.dob, doj: @recruit_info.doj, ifsc: @recruit_info.ifsc, loc_pref: @recruit_info.loc_pref, pan: @recruit_info.pan, uan: @recruit_info.uan } }, as: :json
    assert_response 200
  end

  test "should destroy recruit_info" do
    assert_difference('RecruitInfo.count', -1) do
      delete recruit_info_url(@recruit_info), as: :json
    end

    assert_response 204
  end
end
