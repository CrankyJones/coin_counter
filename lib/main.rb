class Coins

  def initialize()
    @change_purse = {'quarter' => 0, 'dime' => 0, 'nickel' => 0, 'penny' => 0}
    @denominations = {'quarter' => 25, 'dime' => 10, 'nickel' => 5, 'penny' => 1}
    @counter = 0
  end

  def coin_counter(change_purse)
    result = ''
    if (change_purse.match?(/./))
      purse = change_purse.to_f * 100
      purse = purse.to_i
    else
      purse = change_purse.to_i
    end

    @denominations.each() do |key, value|
      while purse >= @denominations[key]
          purse -= @denominations[key]
          @change_purse[key] += 1
      end
    end
    
    @change_purse.each() do |key, value|
      if (@change_purse[key] > 0)
        result.concat("#{@change_purse[key]} #{@change_purse.keys[@counter]}(s) ")
      end
      @counter +=1
    end
    result
  end
end



    #{@change_purse[key]}

# while (purse >= 25)
    #   purse -= 25
    #   @quarter_count += 1
    # end
    # while (purse >= 10)
    #   purse -= 10
    #   @dime_count += 1
    # end
    # while (purse >= 5)
    #   purse -= 5
    #   @nickel_count += 1
    # end
    # while (purse >= 1)
    #   purse -= 1
    #   @penny_count += 1
    # end

    # if (@quarter_count > 0)
    #   result.concat("#{@quarter_count} quarter(s) ")
    # end
    # if (@dime_count > 0)
    #   result.concat("#{@dime_count} dime(s) ")
    # end
    # if (@nickel_count > 0)
    #   result.concat("#{@nickel_count} nickel(s) ")
    # end
    # if (@penny_count > 0)
    #   result.concat("#{@penny_count} penny(s) ")
    # end
#     result