require "rails_helper"
require "spec_helper"
describe ProductsController do
  describe 'get#index' do
    let!(:product1) {create :product,
     title: 'hello world',
     description: 'yo' }
    let!(:product2) {create :product, 
      title: 'hello wo', 
      description: 'yo' }
    let!(:product3) {create :product, 
      title: 'hello yo', 
      description: 'yo' }
    let!(:product4) {create :product, 
      title: 'hello yo=', 
      description: 'yo' }
    it "makes me happy" do
      get :index
      expect(assigns(:products).length).to eq 4
      expect(response.status).to eq 200
    end
  end

  describe "get#new" do
    let!(:product) {create :product, title: 'whatsup' }
    it "works correctly" do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe "post#create" do
    it "successfully created" do
      expect { post :create, params:{
        product: {
          title:       'yoyo',
          description: 'its all aboout yoyo',
          image_url:   'https://ixbt.online/live/images/original/14/52/33/2020/12/01/2c725f63c6.jpg',
          price:        123
        } 
      } }.to change{ Product.count }
      post :create, params:{
        product: {
          title:       'starcraft',
          description: 'its all aboout yoyo',
          image_url:   'https://ixbt.online/live/images/original/14/52/33/2020/12/01/2c725f63c6.jpg',
          price:        123
        }
      }, format: :json
      expect(response.status).to eq 201
      post :create, params:{
        product: {
          title:       'starcraft',
          description: 'its all aboout yoyo',
          image_url:   'https://ixbt.online/live/images/original/14/52/33/2020/12/01/2c725f63c6.jpg',
          price:        123
        }
      }, format: :json
      expect(response.status).to eq 422
    end
  end
  
  describe" created post" do  
    it "makes it unique" do
      expect { post :create, params:{
        product: {
          title:       'starcraft',
          description: 'its all aboout yoyo',
          image_url:   'https://ixbt.online/live/images/original/14/52/33/2020/12/01/2c725f63c6.jpg',
          price:        123
        }
      }, format: :json
      post :create, params:{
        product: {
          title:       'starcraft',
          description: 'its all aboout yoyo',
          image_url:   'https://ixbt.online/live/images/original/14/52/33/2020/12/01/2c725f63c6.jpg',
          price:        123
        }
      }, format: :json
  describe 'check the status of valid' do
    post :create
    expect(title).not_to be_valid
    expect(response.status).to eq 200
    p assigns(Product)
    end
  end









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
end
