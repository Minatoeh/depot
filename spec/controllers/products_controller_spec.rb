require "rails_helper"
require "spec_helper"
RSpec.describe ProductsController do
  describe "should get index" do
    let!(:product1) {create :product, title: 'hello world', description: 'yo' }
    let!(:product2) {create :product, title: 'hello wo', description: 'yo' }
    let!(:product3) {create :product, title: 'hello yo', description: 'yo' }
    it "makes me happy" do
      get :index
      p assigns(:products)
      expect(assigns(:products).length).to eq 3
      expect(response.status).to eq 200
    end
  end
  describe "should get new" do
    it "works correctly" do
    end
  end
end
  # test "should get index" do
  #   get products_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_product_url
  #   assert_response :success
  # end

  # test "should create product" do
  #   assert_difference('Product.count') do
  #     post products_url, params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
  #   end

  #   assert_redirected_to product_url(Product.last)
  # end

  # test "should show product" do
  #   get product_url(@product)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_product_url(@product)
  #   assert_response :success
  # end

  # test "should update product" do
  #   patch product_url(@product), params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
  #   assert_redirected_to product_url(@product)
  # end

  # test "should destroy product" do
  #   assert_difference('Product.count', -1) do
  #     delete product_url(@product)
  #   end

  #   assert_redirected_to products_url
  # end

