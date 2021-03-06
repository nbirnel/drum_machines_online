require 'spec_helper'

describe "manufacturers/new" do
  before(:each) do
    assign(:manufacturer, stub_model(Manufacturer,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new manufacturer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manufacturers_path, "post" do
      assert_select "input#manufacturer_name[name=?]", "manufacturer[name]"
    end
  end
end
