require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Pat" do
  before do
    @postcode = Pat.get("W12 7RJ")
  end
  it "should get a UK postcode" do
    @postcode.should_not be_blank
    STDERR.puts "<p>#{@postcode.inspect}</p>"
  end
  it "should get the postcode back in the response" do
    @postcode["postcode"].should_not be_blank
  end
  it "should get Geo data" do
    @postcode["geo"]["lat"].should_not be_blank
    @postcode["geo"]["lng"].should_not be_blank
    @postcode["geo"]["easting"].should_not be_blank
    @postcode["geo"]["northing"].should_not be_blank
    @postcode["geo"]["geohash"].should_not be_blank
  end
  it "should get administrative info" do
    @postcode["administrative"].should_not be_blank
    @postcode["administrative"]["district"].should_not be_blank
    @postcode["administrative"]["district"]["title"].should_not be_blank
    @postcode["administrative"]["district"]["uri"].should_not be_blank
    @postcode["administrative"]["ward"].should_not be_blank
    @postcode["administrative"]["ward"]["title"].should_not be_blank
    @postcode["administrative"]["ward"]["uri"].should_not be_blank
  end
end
