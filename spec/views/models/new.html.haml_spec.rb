require 'spec_helper'

describe "models/new" do
  before(:each) do
    assign(:model, stub_model(Model,
      :name => "MyString",
      :default_channel => 1,
      :channel_reassignable => false,
      :MIDI_in => false,
      :MIDI_out => false,
      :MIDI_through_boolean => "MyString",
      :USB => false
    ).as_new_record)
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", models_path, "post" do
      assert_select "input#model_name[name=?]", "model[name]"
      assert_select "input#model_default_channel[name=?]", "model[default_channel]"
      assert_select "input#model_channel_reassignable[name=?]", "model[channel_reassignable]"
      assert_select "input#model_MIDI_in[name=?]", "model[MIDI_in]"
      assert_select "input#model_MIDI_out[name=?]", "model[MIDI_out]"
      assert_select "input#model_MIDI_through_boolean[name=?]", "model[MIDI_through_boolean]"
      assert_select "input#model_USB[name=?]", "model[USB]"
    end
  end
end
