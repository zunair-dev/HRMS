require "application_system_test_case"

class JobPositionsTest < ApplicationSystemTestCase
  setup do
    @job_position = job_positions(:one)
  end

  test "visiting the index" do
    visit job_positions_url
    assert_selector "h1", text: "Job positions"
  end

  test "should create job position" do
    visit job_positions_url
    click_on "New job position"

    fill_in "Description", with: @job_position.description
    fill_in "Title", with: @job_position.title
    click_on "Create Job position"

    assert_text "Job position was successfully created"
    click_on "Back"
  end

  test "should update Job position" do
    visit job_position_url(@job_position)
    click_on "Edit this job position", match: :first

    fill_in "Description", with: @job_position.description
    fill_in "Title", with: @job_position.title
    click_on "Update Job position"

    assert_text "Job position was successfully updated"
    click_on "Back"
  end

  test "should destroy Job position" do
    visit job_position_url(@job_position)
    click_on "Destroy this job position", match: :first

    assert_text "Job position was successfully destroyed"
  end
end
