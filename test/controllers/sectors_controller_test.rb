require 'test_helper'

class SectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sector = sectors(:one)
  end

  test "should get index" do
    get sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_sector_url
    assert_response :success
  end

  test "should create sector" do
    assert_difference('Sector.count') do
      post sectors_url, params: { sector: { access: @sector.access, archaeology: @sector.archaeology, area: @sector.area, author: @sector.author, chronology: @sector.chronology, component_id: @sector.component_id, coordinate_id: @sector.coordinate_id, county_id: @sector.county_id, d_height: @sector.d_height, d_length: @sector.d_length, d_o: @sector.d_o, d_type: @sector.d_type, d_width: @sector.d_width, description: @sector.description, form: @sector.form, institution: @sector.institution, length: @sector.length, lmi: @sector.lmi, locality: @sector.locality, location: @sector.location, map_code: @sector.map_code, name: @sector.name, pat_value: @sector.pat_value, point: @sector.point, polygon: @sector.polygon, preservation: @sector.preservation, remark: @sector.remark, risk: @sector.risk, soil_type: @sector.soil_type, tower: @sector.tower, type: @sector.type, village: @sector.village } }
    end

    assert_redirected_to sector_url(Sector.last)
  end

  test "should show sector" do
    get sector_url(@sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_sector_url(@sector)
    assert_response :success
  end

  test "should update sector" do
    patch sector_url(@sector), params: { sector: { access: @sector.access, archaeology: @sector.archaeology, area: @sector.area, author: @sector.author, chronology: @sector.chronology, component_id: @sector.component_id, coordinate_id: @sector.coordinate_id, county_id: @sector.county_id, d_height: @sector.d_height, d_length: @sector.d_length, d_o: @sector.d_o, d_type: @sector.d_type, d_width: @sector.d_width, description: @sector.description, form: @sector.form, institution: @sector.institution, length: @sector.length, lmi: @sector.lmi, locality: @sector.locality, location: @sector.location, map_code: @sector.map_code, name: @sector.name, pat_value: @sector.pat_value, point: @sector.point, polygon: @sector.polygon, preservation: @sector.preservation, remark: @sector.remark, risk: @sector.risk, soil_type: @sector.soil_type, tower: @sector.tower, type: @sector.type, village: @sector.village } }
    assert_redirected_to sector_url(@sector)
  end

  test "should destroy sector" do
    assert_difference('Sector.count', -1) do
      delete sector_url(@sector)
    end

    assert_redirected_to sectors_url
  end
end
