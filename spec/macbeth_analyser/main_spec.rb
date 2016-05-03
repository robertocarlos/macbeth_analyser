require 'spec_helper'

describe MacbethAnalyser::Main do
  describe ".run" do
    it "downloads and parses xml from website" do
      stub_request(:get, "http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml").
         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => File.read("spec/fixtures/macbeth.xml"), :headers => {})

      STDOUT.should_receive(:puts).with(File.read("spec/fixtures/response.txt").strip)

      described_class.run
    end
  end
end
