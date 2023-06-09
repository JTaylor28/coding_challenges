require "./lib/MON"

RSpec.describe "test MON" do
  before :each do
    @nums_1 = [1, 2, 4, 5, 8]
    @nums_2 = [2, 3, 5, 7, 9]
    @nums_3 = [1, 2, 5, 8, 9]
  end

  it "finds_matches_1" do
    expect(find_matches_1(@nums_1, @nums_2, @nums_3)).to eq([2, 5])
  end

  it "find_matches_2" do
    expect(find_matches_2(@nums_1, @nums_2, @nums_3)).to eq([2, 5])
  end
end