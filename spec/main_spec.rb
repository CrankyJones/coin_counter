require('rspec')
require('main')

describe('Coins#coin_counter') do
  it('providing $.25 will result in one quarter') do
  change_purse = Coins.new()
  expect(change_purse.coin_counter('.25')).to(eq('1 quarter(s)'))
  end
end