require_relative "../lib/infix_to_postfix"


describe "Infix Postfix Conversions" do

  {
    "a + b" => "a b +",
    "d - 3" => "d 3 -",
    "d * 3" => "d 3 *",
    "d / 3" => "d 3 /",
    "d - 3 + 2" => "d 3 - 2 +",
    "d - ( 3 + 2 )" => "d 3 2 + -",
    #  "d / (c * a) + b" => "d c a * / b +",
  }.each do |infix, expected|
    it "should convert `#{infix}` to `#{expected}`" do
      expect(infix_to_postfix(infix)).to eq(expected)
    end
  end

  # ["c a b +"].each do |invalid|
  #   it "should fail for `#{invalid}`" do
  #     expect { postfix_to_infix(invalid) } \
  #       .to raise_error("Invalid Input: #{invalid}")
  #   end
  # end
end