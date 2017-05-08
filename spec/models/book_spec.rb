require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "example" do
    it { expect(Book.all).to be_empty}
  end
  describe "#echo" do
    context "boolean" do
      it { expect(Book.echo(true)).to be_truthy}
      it { expect(Book.echo(false)).to be_falsy}
    end
    context "Interger" do
      it { expect(Book.echo(0)).to be_zero}
      it { expect(Book.echo(1)).to eq(1)}
    end
  end
end
