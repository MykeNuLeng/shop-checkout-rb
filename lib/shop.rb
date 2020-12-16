class Shop

  def initialize
    @prices = {
      'A' => 50,
      'B' => 30,
      'C' => 20,
      'D' => 15
    }
    @total = 0
  end

  def checkout(items)
    return -1 unless items.is_a? String
    items.split("").each { |item|
      return -1 unless @prices.has_key?(item)

      @total += @prices['A']
    }

    @total
  end
end
