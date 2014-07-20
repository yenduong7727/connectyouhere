require 'spec_helper'

describe "accomodations/show" do
  before(:each) do
    @accomodation = assign(:accomodation, stub_model(Accomodation,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Type/)
    rendered.should match(/Location/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Contact Phone/)
    rendered.should match(/Contact Name/)
  end
end
