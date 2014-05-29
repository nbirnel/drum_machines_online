require 'spec_helper'

describe "notes/new" do
  before(:each) do
    assign(:note, stub_model(Note,
      :c3 => "MyString",
      :asa_yamaha => "MyString",
      :key_num => 1,
      :freq => 1.5
    ).as_new_record)
  end

  it "renders new note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notes_path, "post" do
      assert_select "input#note_c3[name=?]", "note[c3]"
      assert_select "input#note_asa_yamaha[name=?]", "note[asa_yamaha]"
      assert_select "input#note_key_num[name=?]", "note[key_num]"
      assert_select "input#note_freq[name=?]", "note[freq]"
    end
  end
end
