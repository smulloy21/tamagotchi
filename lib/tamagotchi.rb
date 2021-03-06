class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleep = 10
    @play = 10
    @clean = 10
    @happy = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food
  end

  define_method(:sleep_level) do
    @sleep
  end

  define_method(:play_level) do
    @play
  end

  define_method(:clean_level) do
    @clean
  end

  define_method(:happy_level) do
    @happy = (@sleep + @play + @clean)/3
  end

  define_method(:is_alive) do
    @food > 0
  end

  define_method(:set_food_level) do |food|
    @food = food
  end

  define_method(:time_passes) do
    if @food > 0
      @food -= 1
    end
    if @sleep > 0
      @sleep -= 1
    end
    if @play > 0
      @play -= 1
    end
    if @clean > 0
      @clean -= 1
    end
    happy_level()
  end

  define_method(:feed) do
    @food += 2
    if @food < 10
      @food = 10
    end
  end

  define_method(:set_sleep_level) do |sleep|
    @sleep = sleep
  end

  define_method(:sleep) do
    @sleep += 4
    if @sleep > 10
      @sleep = 10
    end
    happy_level()
  end

  define_method(:play) do
    @play += 2
    if @play < 10
      @play = 10
    end
    happy_level()
  end

  define_method(:set_play_level) do |play|
    @play = play
  end

  define_method(:set_clean_level) do |clean|
    @clean = clean
  end

  define_method(:clean) do
    @clean += 5
    if @clean > 10
      @clean = 10
    end
    happy_level()
  end
end
