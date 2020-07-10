describe "Infix prefix Conversions" do

  {
    "a + b" => "+ab",
    "d - 3" => "-d3",
    "d * 3" => "*d3",
    "d / 3" => "/d3",
    "d + 3 * 2" => "+d*32",
    "d - ( 3 + 2 )" => "-d+32",
    #  "d / (c * a) + b" => "d c a * / b +",
  }.each do |infix, expected|
    it "should convert `#{infix}` to `#{expected}`" do
      expect(infix_to_prefix(infix)).to eq(expected)
    end
  end
end