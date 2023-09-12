require "application_system_test_case"

class LeavesTest < ApplicationSystemTestCase
  setup do
    @leave = leaves(:one)
  end

  test "visiting the index" do
    visit leaves_url
    assert_selector "h1", text: "Leaves"
  end

  test "should create leave" do
    visit leaves_url
    click_on "New leave"

    fill_in "Employee", with: @leave.employee_id
    fill_in "End date", with: @leave.end_date
    fill_in "Leave type", with: @leave.leave_type
    fill_in "Start date", with: @leave.start_date
    fill_in "Status", with: @leave.status
    click_on "Create Leave"

    assert_text "Leave was successfully created"
    click_on "Back"
  end

  test "should update Leave" do
    visit leave_url(@leave)
    click_on "Edit this leave", match: :first

    fill_in "Employee", with: @leave.employee_id
    fill_in "End date", with: @leave.end_date
    fill_in "Leave type", with: @leave.leave_type
    fill_in "Start date", with: @leave.start_date
    fill_in "Status", with: @leave.status
    click_on "Update Leave"

    assert_text "Leave was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave" do
    visit leave_url(@leave)
    click_on "Destroy this leave", match: :first

    assert_text "Leave was successfully destroyed"
  end
end
