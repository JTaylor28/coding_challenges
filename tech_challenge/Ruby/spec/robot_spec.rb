require "./lib/robot"

RSpec.describe "test robot" do
  before do 
    @command = "GRGRGRG" #should be true
    @command_2 = "GRGL" # should be false
    @command_3 = "GLGLGLG" # should be true
  end

  it "return_to_origin" do
    expect(return_to_origin(@command)).to eq(true)
    expect(return_to_origin(@command_2)).to eq(false)
    expect(return_to_origin(@command_3)).to eq(true)
  end
end