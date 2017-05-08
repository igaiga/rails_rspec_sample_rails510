require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "example" do
    it { expect(Book.all).to be_empty}
  end
  describe "#echo" do
    context "boolean true" do
      subject { Book.echo(true) }
      it { is_expected.to be_truthy}
    end
    context "boolean false" do
      subject { Book.echo(false) }
      it { is_expected.to be_falsy}
    end
    context "Interger" do
      it { expect(Book.echo(0)).to be_zero}
      it { expect(Book.echo(1)).to eq(1)}
    end
  end
end
