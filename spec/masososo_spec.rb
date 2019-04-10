# frozen_string_literal: true

RSpec.describe Masososo do
  it "has a version number" do
    expect(Masososo::VERSION).not_to be nil
  end

  describe "String#similar_chars" do
    subject { char.similar_chars(option) }
    let(:option) { {} }

    context 'ｿ' do
      let(:char) { 'ｿ' }
      it { is_expected.to eq %w[ﾘ ﾝ] }
    end

    context 'ｿ including self' do
      let(:char) { 'ｿ' }
      let(:option) { { including_self: true } }
      it { is_expected.to eq %w[ｿ ﾘ ﾝ] }
    end

    context 'empty string' do
      subject { -> { char.similar_chars } }
      let(:char) { '' }
      it { is_expected.to raise_error RuntimeError }
    end
  end

  describe "String#masososo" do
    subject { str.masososo(option) }
    let(:option) { { including_self: false } }

    context 'こんにちわ' do
      let(:str) { 'こんにちわ' }
      it { is_expected.to eq 'こんにさわ' }
    end
  end
end
