require 'test_helper'

class ProductVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_variant = product_variants(:one)
  end

  test "should get index" do
    get product_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_product_variant_url
    assert_response :success
  end

  test "should create product_variant" do
    assert_difference('ProductVariant.count') do
      post product_variants_url, params: { product_variant: { barcode: @product_variant.barcode, external_id: @product_variant.external_id, fulfillment_service: @product_variant.fulfillment_service, image_id: @product_variant.image_id, inventory_management: @product_variant.inventory_management, inventory_policy: @product_variant.inventory_policy, inventory_quantity: @product_variant.inventory_quantity, old_inventory_quantity: @product_variant.old_inventory_quantity, position: @product_variant.position, price: @product_variant.price, product_external_id: @product_variant.product_external_id, requires_shipping: @product_variant.requires_shipping, sku: @product_variant.sku, title: @product_variant.title, weight: @product_variant.weight, weight_unit: @product_variant.weight_unit } }
    end

    assert_redirected_to product_variant_url(ProductVariant.last)
  end

  test "should show product_variant" do
    get product_variant_url(@product_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_variant_url(@product_variant)
    assert_response :success
  end

  test "should update product_variant" do
    patch product_variant_url(@product_variant), params: { product_variant: { barcode: @product_variant.barcode, external_id: @product_variant.external_id, fulfillment_service: @product_variant.fulfillment_service, image_id: @product_variant.image_id, inventory_management: @product_variant.inventory_management, inventory_policy: @product_variant.inventory_policy, inventory_quantity: @product_variant.inventory_quantity, old_inventory_quantity: @product_variant.old_inventory_quantity, position: @product_variant.position, price: @product_variant.price, product_external_id: @product_variant.product_external_id, requires_shipping: @product_variant.requires_shipping, sku: @product_variant.sku, title: @product_variant.title, weight: @product_variant.weight, weight_unit: @product_variant.weight_unit } }
    assert_redirected_to product_variant_url(@product_variant)
  end

  test "should destroy product_variant" do
    assert_difference('ProductVariant.count', -1) do
      delete product_variant_url(@product_variant)
    end

    assert_redirected_to product_variants_url
  end
end
