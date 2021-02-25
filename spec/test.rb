require('rspec')
require('main')

describe('Coins#coin_counter') do
  it('providing $.25 will result in one quarter') do
  change_purse = Coins.new(.25)
  expect(change_purse.coin_counter).to(eq('1 quarter'))
  end
end