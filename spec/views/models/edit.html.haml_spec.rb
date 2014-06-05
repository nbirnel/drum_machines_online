require 'spec_helper'

describe "models/edit" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :name => "MyString",
      :default_channel => 1,
      :channel_reassignable => false,
      :MIDI_in => false,
      :MIDI_out => false,
      :MIDI_through => "MyString",
      :USB => false
    ))
  end

  it "renders the edit model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", model_path(@model), "post" do
      assert_select "input#model_name[name=?]", "model[name]"
      assert_select "input#model_default_channel[name=?]", "model[default_channel]"
      assert_select "input#model_channel_reassignable[name=?]", "model[channel_reassignable]"
      assert_select "input#model_MIDI_in[name=?]", "model[MIDI_in]"
      assert_select "input#model_MIDI_out[name=?]", "model[MIDI_out]"
      assert_select "input#model_MIDI_through[name=?]", "model[MIDI_through]"
      assert_select "input#model_USB[name=?]", "model[USB]"
    end
  end
end
