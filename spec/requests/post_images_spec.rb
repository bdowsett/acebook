 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/post_images", type: :request do
  
  # PostImage. As you add validations to PostImage, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PostImage.create! valid_attributes
      get post_images_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      post_image = PostImage.create! valid_attributes
      get post_image_url(post_image)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_post_image_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      post_image = PostImage.create! valid_attributes
      get edit_post_image_url(post_image)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PostImage" do
        expect {
          post post_images_url, params: { post_image: valid_attributes }
        }.to change(PostImage, :count).by(1)
      end

      it "redirects to the created post_image" do
        post post_images_url, params: { post_image: valid_attributes }
        expect(response).to redirect_to(post_image_url(PostImage.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PostImage" do
        expect {
          post post_images_url, params: { post_image: invalid_attributes }
        }.to change(PostImage, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post post_images_url, params: { post_image: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested post_image" do
        post_image = PostImage.create! valid_attributes
        patch post_image_url(post_image), params: { post_image: new_attributes }
        post_image.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the post_image" do
        post_image = PostImage.create! valid_attributes
        patch post_image_url(post_image), params: { post_image: new_attributes }
        post_image.reload
        expect(response).to redirect_to(post_image_url(post_image))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        post_image = PostImage.create! valid_attributes
        patch post_image_url(post_image), params: { post_image: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested post_image" do
      post_image = PostImage.create! valid_attributes
      expect {
        delete post_image_url(post_image)
      }.to change(PostImage, :count).by(-1)
    end

    it "redirects to the post_images list" do
      post_image = PostImage.create! valid_attributes
      delete post_image_url(post_image)
      expect(response).to redirect_to(post_images_url)
    end
  end
end
