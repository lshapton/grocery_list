require 'test_helper'

class SupplyVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supply_variant = supply_variants(:one)
  end

  test "should get index" do
    get supply_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_supply_variant_url
    assert_response :success
  end

  test "should create supply_variant" do
    assert_difference('SupplyVariant.count') do
      post supply_variants_url, params: { supply_variant: { title: @supply_variant.title } }
    end

    assert_redirected_to supply_variant_url(SupplyVariant.last)
  end

  test "should show supply_variant" do
    get supply_variant_url(@supply_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_supply_variant_url(@supply_variant)
    assert_response :success
  end

  test "should update supply_variant" do
    patch supply_variant_url(@supply_variant), params: { supply_variant: { title: @supply_variant.title } }
    assert_redirected_to supply_variant_url(@supply_variant)
  end

  test "should destroy supply_variant" do
    assert_difference('SupplyVariant.count', -1) do
      delete supply_variant_url(@supply_variant)
    end

    assert_redirected_to supply_variants_url
  end
end
