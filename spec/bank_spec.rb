require 'bank'

describe Bank do
  let(:bank) {described_class.new }
  let(:bank_with_money) { described_class.new }
  before(:each) { bank_with_money.deposit_money(100) }

  describe 'class methods' do
    it { is_expected.to respond_to :print_menu }
    it { is_expected.to respond_to :balance }
    it { is_expected.to respond_to(:deposit_money).with(1).argument }
    it { is_expected.to respond_to(:withdraw_money).with(1).argument }
  end

  describe '#show_balance' do
    context 'initial balance' do
      it "should show 0 initial balance" do
        expect(bank.balance).to eq(0)
      end
    end
  end

  describe '#deposit_money' do
    context 'can deposit money' do
      it "should allow you to deposit money" do
        bank.deposit_money(10)
        expect(bank.balance).to eq(10)
      end
    end

    context 'cannot deposit money' do
      it "should not deposit 0 money" do
        expect{ bank.deposit_money(0) }.to raise_error("Invalid amount")
      end

      it "should not deposit negative amounts" do
        expect{ bank.deposit_money(-1) }.to raise_error("Invalid amount")
      end
    end
  end

  describe '#withdraw_money' do
    context 'can withdraw money' do
      it "should allow you to withdraw money" do
        bank_with_money.withdraw_money(10)
        expect(bank_with_money.balance).to eq(90)
      end
    end

    context 'cannot withdraw money' do
      it "should not allow you to withdraw money" do
        expect{ bank_with_money.withdraw_money(101) }.to raise_error("Insufficient funds")
      end
    end
  end
end
