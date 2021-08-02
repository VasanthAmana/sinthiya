require_relative "../lib/postfix_to_infix"

describe "Postfix Infix Conversions" do

  {
    "a b +" => "a + b",
    "d 3 -" => "d - 3",
    "d c a * / b +" => "d / c * a + b",
  }.each do |postfix, expected|
    it "should convert `#{postfix}` to `#{expected}`" do
      expect(postfix_to_infix(postfix)).to eq(expected)
    end
  end

  ["c a b +"].each do |invalid|
    it "should fail for `#{invalid}`" do
      expect { postfix_to_infix(invalid) } \
        .to raise_error("Invalid Input: #{invalid}")
    end
  end
end