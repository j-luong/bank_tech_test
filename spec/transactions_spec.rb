require 'transactions'

describe Transactions do
  let(:type) { {:credit => 10} }
  let(:transactions) {described_class.new(type, 90) }

  describe '#initialize' do
    it "has a date" do
      expect(transactions.date).to eq(DateTime.now.strftime('%d/%m/%Y'))
    end

    it "has a type" do
      expect(transactions.transaction).to eq({credit: 10})
    end

    it "has a current balance" do
      expect(transactions.current_balance).to eq(90)
    end
  end

end
