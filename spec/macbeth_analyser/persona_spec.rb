require "spec_helper"

describe MacbethAnalyser::Persona do

  describe "initialization" do
    let(:name) { "MACBETH"}
    subject { described_class.new name }

    it "initializes with persona name" do
      expect(subject.name).to eql name
    end

    it "initializes count number with zero" do
      expect(subject.number).to eql 0
    end
  end

end
