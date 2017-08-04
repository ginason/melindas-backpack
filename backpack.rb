class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    items_to_prepare
  end

  def items
    @items
  end

  def items_to_prepare
    # Ensure appropriate clothing is added to backpack
    items_for_weather
    # Ensure gym shoes are added to backpack if it's a gym day
    items_for_all_weeks
  end

  def items_for_weather
    weather = @attributes[:weather]
    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end

  end

  def items_for_all_weeks
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'

    end
  end


  def print_summary_packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end



end
