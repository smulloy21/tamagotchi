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
    @happy
  end

  define_method(:is_alive) do
    @food > 0
  end
end
