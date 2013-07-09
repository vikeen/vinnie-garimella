require 'spec_helper'

describe "artworks/index" do
  before(:each) do
    assign(:artworks, [
      stub_model(Artwork,
        :name => "Name",
        :filename => "Filename",
        :description => "Description",
        :artwork_type_id => 1
      ),
      stub_model(Artwork,
        :name => "Name",
        :filename => "Filename",
        :description => "Description",
        :artwork_type_id => 1
      )
    ])
  end

  it "renders a list of artworks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
