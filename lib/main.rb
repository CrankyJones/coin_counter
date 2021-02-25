class Coins

  def initialize()
    @quarter_count = 0
  end

  def coin_counter(change_purse)
    purse = change_purse.to_f.round(2)
    purse = purse.to_s
    purse = purse.gsub(/[[:punct:]]/, '')
    purse = purse.to_i
    while (purse >= 25)
      purse -= 25
      @quarter_count += 1
    end
    if (@quarter_count > 0)
      result = "#{@quarter_count} quarter(s)"
    end
  end

end