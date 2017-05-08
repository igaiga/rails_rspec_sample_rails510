require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "example" do
    it { expect(Book.all).to be_empty}
  end
  describe "#echo" do
    context "Boolean" do
      shared_examples_for "boolean" do
        subject { Book.echo(boolean_value) }
        it { is_expected.to eq(boolean_value)}
      end
      describe "true" do
        let(:boolean_value){ true }
        it_behaves_like "boolean"
      end
      describe "false" do
        let(:boolean_value){ false }
        it_behaves_like "boolean"
      end
    end

    context "Interger" do
      it { expect(Book.echo(0)).to be_zero}
      it { expect(Book.echo(1)).to eq(1)}
    end
  end
end
