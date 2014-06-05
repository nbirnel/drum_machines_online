require 'spec_helper'

describe "models/index" do
  before(:each) do
    assign(:models, [
      stub_model(Model,
        :name => "Name",
        :default_channel => 1,
        :channel_reassignable => false,
        :MIDI_in => false,
        :MIDI_out => false,
        :MIDI_through => "Midi Through",
        :USB => false
      ),
      stub_model(Model,
        :name => "Name",
        :default_channel => 1,
        :channel_reassignable => false,
        :MIDI_in => false,
        :MIDI_out => false,
        :MIDI_through => "Midi Through",
        :USB => false
      )
    ])
  end

  it "renders a list of models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Midi Through".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
