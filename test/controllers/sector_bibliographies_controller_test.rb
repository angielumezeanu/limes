require 'test_helper'

class SectorBibliographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sector_bibliography = sector_bibliographies(:one)
  end

  test "should get index" do
    get sector_bibliographies_url
    assert_response :success
  end

  test "should get new" do
    get new_sector_bibliography_url
    assert_response :success
  end

  test "should create sector_bibliography" do
    assert_difference('SectorBibliography.count') do
      post sector_bibliographies_url, params: { sector_bibliography: { bibliography_id: @sector_bibliography.bibliography_id, page: @sector_bibliography.page, sector_id: @sector_bibliography.sector_id } }
    end

    assert_redirected_to sector_bibliography_url(SectorBibliography.last)
  end

  test "should show sector_bibliography" do
    get sector_bibliography_url(@sector_bibliography)
    assert_response :success
  end

  test "should get edit" do
    get edit_sector_bibliography_url(@sector_bibliography)
    assert_response :success
  end

  test "should update sector_bibliography" do
    patch sector_bibliography_url(@sector_bibliography), params: { sector_bibliography: { bibliography_id: @sector_bibliography.bibliography_id, page: @sector_bibliography.page, sector_id: @sector_bibliography.sector_id } }
    assert_redirected_to sector_bibliography_url(@sector_bibliography)
  end

  test "should destroy sector_bibliography" do
    assert_difference('SectorBibliography.count', -1) do
      delete sector_bibliography_url(@sector_bibliography)
    end

    assert_redirected_to sector_bibliographies_url
  end
end
