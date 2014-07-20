require 'spec_helper'

describe "accomodations/new" do
  before(:each) do
    assign(:accomodation, stub_model(Accomodation,
      :title => "MyText",
      :type => "",
      :location => "MyString",
      :price => 1,
      :bond => 1,
      :bedroom => 1,
      :bathroom => 1,
      :description => "MyText",
      :smoking => false,
      :contact_phone => "MyString",
      :contact_name => "MyString"
    ).as_new_record)
  end

  it "renders new accomodation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", accomodations_path, "post" do
      assert_select "textarea#accomodation_title[name=?]", "accomodation[title]"
      assert_select "input#accomodation_type[name=?]", "accomodation[type]"
      assert_select "input#accomodation_location[name=?]", "accomodation[location]"
      assert_select "input#accomodation_price[name=?]", "accomodation[price]"
      assert_select "input#accomodation_bond[name=?]", "accomodation[bond]"
      assert_select "input#accomodation_bedroom[name=?]", "accomodation[bedroom]"
      assert_select "input#accomodation_bathroom[name=?]", "accomodation[bathroom]"
      assert_select "textarea#accomodation_description[name=?]", "accomodation[description]"
      assert_select "input#accomodation_smoking[name=?]", "accomodation[smoking]"
      assert_select "input#accomodation_contact_phone[name=?]", "accomodation[contact_phone]"
      assert_select "input#accomodation_contact_name[name=?]", "accomodation[contact_name]"
    end
  end
end
