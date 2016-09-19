require 'interface'

describe Interface do
  let(:interface) {described_class.new }

  describe 'class methods' do
    it { is_expected.to respond_to :print_menu }
  end
end
