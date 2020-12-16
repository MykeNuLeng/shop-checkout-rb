class Shop

  def initialize
    @prices = {
      'A' => 50,
      'B' => 30,
      'C' => 20,
      'D' => 15
    }
    @purchased = {
      'A' => 0,
      'B' => 0,
      'C' => 0,
      'D' => 0
    }
    @threshold = {
      'A' => 3,
      'B' => 2,
      'C' => 1,
      'D' => 1
    }
    @savings = {
      'A' => 20,
      'B' => 15,
      'C' => 0,
      'D' => 0
    }
    @total = 0
  end

  def checkout(items)
    return -1 unless items.is_a? String

    items_arr = items.split("")
    return -1 if calc_total(items_arr) == -1
    
    savings
    @total
  end

  private

  def calc_total(items_arr)
    items_arr.each { |item|
      return -1 unless @prices.has_key?(item)
      @purchased[item] += 1
      @total += @prices[item]
    }
  end

  def savings
    @purchased.each_pair { |item, quantity|
      @total -= (quantity / @threshold[item]).floor * @savings[item]
    }
  end
end
