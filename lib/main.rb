class Coins

  def initialize()
    @quarter_count = 0
    @dime_count = 0
  end

  def coin_counter(change_purse)
    result = ''
    purse = change_purse.to_f.round(2).to_s.gsub(/[[:punct:]]/, '').to_i
    while (purse >= 25)
      purse -= 25
      @quarter_count += 1
    end
    while (purse >= 10)
      purse -= 10
      @dime_count += 1
    end
    if (@quarter_count > 0)
      result.concat("#{@quarter_count} quarter(s) ")
    end
    if (@dime_count > 0)
      result.concat("#{@dime_count} dime(s)")
    end
    result
  end

end