require 'spec_helper'

describe "artworks/new" do
  before(:each) do
    assign(:artwork, stub_model(Artwork,
      :name => "MyString",
      :filename => "MyString",
      :description => "MyString",
      :artwork_type_id => 1
    ).as_new_record)
  end

  it "renders new artwork form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => artworks_path, :method => "post" do
      assert_select "input#artwork_name", :name => "artwork[name]"
      assert_select "input#artwork_filename", :name => "artwork[filename]"
      assert_select "input#artwork_description", :name => "artwork[description]"
      assert_select "input#artwork_artwork_type_id", :name => "artwork[artwork_type_id]"
    end
  end
end
