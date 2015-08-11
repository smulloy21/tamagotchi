require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets name and levels of new tamagotchi') do
      my_pet = Tamagotchi.new("t-rex")
      expect(my_pet.name()).to(eq("t-rex"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.play_level()).to(eq(10))
      expect(my_pet.clean_level()).to(eq(10))
      expect(my_pet.happy_level()).to(eq(10))
    end
  end

  describe('#is_alive') do
    it('returns true if pet is alive') do
      my_pet = Tamagotchi.new("t-rex")
      expect(my_pet.is_alive()).to(eq(true))
    end

    it('returns false if pet is dead') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe('#time_passes') do
    it('decreases all the levels by 1') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
      expect(my_pet.sleep_level()).to(eq(9))
      expect(my_pet.play_level()).to(eq(9))
      expect(my_pet.clean_level()).to(eq(9))
      expect(my_pet.happy_level()).to(eq(9))
    end
  end

  describe('#feed') do
    it('increases food level by 1') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.time_passes()
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(10))
    end
    it('never goes over food level 10') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(10))
    end
  end

  describe('#sleep') do
    it('increases sleep level by 4') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_sleep_level(5)
      my_pet.sleep()
      expect(my_pet.sleep_level()).to(eq(9))
    end
    it('never goes over food level 10') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.sleep()
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end
end
