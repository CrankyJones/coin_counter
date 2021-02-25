require('rspec')
require('main')

describe('Coins#coin_counter') do
  it('providing $.25 will result in one quarter') do
    change_purse = Coins.new()
    expect(change_purse.coin_counter('.25')).to(eq('1 quarter(s) '))
  end

  it('providing $.35 will result in one quarter and one dime') do
    change_purse = Coins.new()
    expect(change_purse.coin_counter('.35')).to(eq('1 quarter(s) 1 dime(s) '))
  end

  it('providing $.40 will result in one quarter and one dime one nickel') do
    change_purse = Coins.new()
    expect(change_purse.coin_counter('.40')).to(eq('1 quarter(s) 1 dime(s) 1 nickel(s) '))
  end

    it('providing $.41 will result in one quarter and one dime one nickel one penny') do
      change_purse = Coins.new()
      expect(change_purse.coin_counter('.41')).to(eq('1 quarter(s) 1 dime(s) 1 nickel(s) 1 penny(s) '))
    end

    it('providing $.73 will result in one quarter and one dime one nickel one penny') do
      change_purse = Coins.new()
      expect(change_purse.coin_counter('.73')).to(eq('2 quarter(s) 2 dime(s) 3 penny(s) '))
    end

    it('providing 267 will result in one quarter and one dime one nickel one penny') do
      change_purse = Coins.new()
      expect(change_purse.coin_counter('267')).to(eq('10 quarter(s) 1 dime(s) 1 nickel(s) 2 penny(s) '))
    end

    it('providing -25 will result in one quarter') do
      change_purse = Coins.new()
      expect(change_purse.coin_counter('-25')).to(eq('1 quarter(s) '))
    end

    it('providing 1.7657 will result in one quarter') do
      change_purse = Coins.new()
      expect(change_purse.coin_counter('1.7657')).to(eq('7 quarter(s) 1 penny(s) '))
    end
end
