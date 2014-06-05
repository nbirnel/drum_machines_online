require 'spec_helper'

describe "models/show" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :name => "Name",
      :default_channel => 1,
      :channel_reassignable => false,
      :MIDI_in => false,
      :MIDI_out => false,
      :MIDI_through => "Midi Through",
      :USB => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Midi Through/)
    rendered.should match(/false/)
  end
end
