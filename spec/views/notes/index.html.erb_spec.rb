require 'spec_helper'

describe "notes/index" do
  before(:each) do
    assign(:notes, [
      stub_model(Note,
        :c3 => "C3",
        :asa_yamaha => "Asa Yamaha",
        :key_num => 1,
        :freq => 1.5
      ),
      stub_model(Note,
        :c3 => "C3",
        :asa_yamaha => "Asa Yamaha",
        :key_num => 1,
        :freq => 1.5
      )
    ])
  end

  it "renders a list of notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "C3".to_s, :count => 2
    assert_select "tr>td", :text => "Asa Yamaha".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
