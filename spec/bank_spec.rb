require 'bank'

describe Bank do
  subject {described_class.new }

  it { is_expected.to respond_to :print_menu }
  it { is_expected.to respond_to :balance }
  it { is_expected.to respond_to(:deposit_money).with(1).argument }

  describe '#show_balance' do
    context 'initial balance' do
      it "should show 0 initial balance" do
        expect(subject.balance).to eq(0)
      end
    end
  end

  describe '#deposit_money' do
    context 'can deposit money' do
      it "should allow you to deposit money" do
        subject.deposit_money(10)
        expect(subject.balance).to eq(10)
      end
    end
  end
end
