require "spec_helper"

describe MacbethAnalyser::PersonaList do
  describe "#add" do
    let(:name) { "Macbeth" }

    it "ignores persona 'ALL'" do
      2.times { subject.add("ALL") }

      expect(subject.print).to eql ""
    end

    it "capitalizes personas" do
      2.times { subject.add("DUNCAN") }

      expect(subject.print).to eql "2 Duncan"
    end

    context "when persona is new" do
      it "adds one speech" do
        subject.add(name)

        expect(subject.print).to eql "1 Macbeth"
      end
    end

    context "when persona already exists" do
      it "increments speech by one" do
        2.times { subject.add(name) }

        expect(subject.print).to eql "2 Macbeth"
      end
    end
  end

  describe "#print" do
    let(:name1)    { "DUNCAN" }
    let(:speechs1) { 2 }

    let(:name2)    { "Macbeth" }
    let(:speechs2) { 5 }

    let(:name3)    { "BanQUO" }
    let(:speechs3) { 1 }

    it "prints personas order by speechs count" do
      speechs1.times { subject.add(name1) }
      speechs2.times { subject.add(name2) }
      speechs3.times { subject.add(name3) }

      expect(subject.print).to eql "5 Macbeth\n2 Duncan\n1 Banquo"
    end
  end
end
