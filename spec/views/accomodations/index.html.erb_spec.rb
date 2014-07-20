require 'spec_helper'

describe "accomodations/index" do
  before(:each) do
    assign(:accomodations, [
      stub_model(Accomodation,
        :title => "MyText",
        :type => "Type",
        :location => "Location",
        :price => 1,
        :bond => 2,
        :bedroom => 3,
        :bathroom => 4,
        :description => "MyText",
        :smoking => false,
        :contact_phone => "Contact Phone",
        :contact_name => "Contact Name"
      ),
      stub_model(Accomodation,
        :title => "MyText",
        :type => "Type",
        :location => "Location",
        :price => 1,
        :bond => 2,
        :bedroom => 3,
        :bathroom => 4,
        :description => "MyText",
        :smoking => false,
        :contact_phone => "Contact Phone",
        :contact_name => "Contact Name"
      )
    ])
  end

  it "renders a list of accomodations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
  end
end
