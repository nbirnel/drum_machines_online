require 'spec_helper'

describe "notes/show" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :c3 => "C3",
      :asa_yamaha => "Asa Yamaha",
      :key_num => 1,
      :freq => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/C3/)
    rendered.should match(/Asa Yamaha/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
  end
end
