require 'transaction'

describe Transaction do
  let(:type) { :credit }
  let(:amount) { 10 }
  let(:transactions) {described_class.new(type, amount, 90) }

  describe '#initialize' do
    it "has a date" do
      expect(transactions.date).to eq(DateTime.now.strftime('%d/%m/%Y'))
    end

    it "has a type" do
      expect(transactions.type).to eq(:credit)
    end

    it "has an amount" do
      expect(transactions.amount).to eq(10)
    end

    it "has a current balance" do
      expect(transactions.current_balance).to eq(90)
    end
  end

end
