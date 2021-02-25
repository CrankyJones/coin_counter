class Coins

  def initialize()
    @quarter_count = 0
    @dime_count = 0
    @nickel_count = 0
    @penny_count = 0
  end

  def coin_counter(change_purse)
    result = ''
    if (change_purse.match?(/./))
      purse = change_purse.to_f * 100
      purse = purse.to_i
    else
      purse = change_purse.gsub(/[[:punct:]]/, '').to_i
    end
    while (purse >= 25)
      purse -= 25
      @quarter_count += 1
    end
    while (purse >= 10)
      purse -= 10
      @dime_count += 1
    end
    while (purse >= 5)
      purse -= 5
      @nickel_count += 1
    end
    while (purse >= 1)
      purse -= 1
      @penny_count += 1
    end
    if (@quarter_count > 0)
      result.concat("#{@quarter_count} quarter(s) ")
    end
    if (@dime_count > 0)
      result.concat("#{@dime_count} dime(s) ")
    end
    if (@nickel_count > 0)
      result.concat("#{@nickel_count} nickel(s) ")
    end
    if (@penny_count > 0)
      result.concat("#{@penny_count} penny(s) ")
    end
    result
  end

end