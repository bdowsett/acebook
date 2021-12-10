require 'rails_helper'

RSpec.describe "post_images/edit", type: :view do
  before(:each) do
    @post_image = assign(:post_image, PostImage.create!(
      title: "MyString",
      content: "MyText"
    ))
  end

  it "renders the edit post_image form" do
    render

    assert_select "form[action=?][method=?]", post_image_path(@post_image), "post" do

      assert_select "input[name=?]", "post_image[title]"

      assert_select "textarea[name=?]", "post_image[content]"
    end
  end
end
