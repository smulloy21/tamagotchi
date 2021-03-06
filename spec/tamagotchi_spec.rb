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
    it('increases food level by 2') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_food_level(8)
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

  describe('#play') do
    it('increases play level by 1') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_play_level(8)
      my_pet.play()
      expect(my_pet.play_level()).to(eq(10))
    end
    it('never goes over play level 10') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.play()
      expect(my_pet.play_level()).to(eq(10))
    end
  end

  describe('#clean') do
    it('increases clean level by 5') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_clean_level(4)
      my_pet.clean()
      expect(my_pet.clean_level()).to(eq(9))
    end
    it('never goes over clean level 10') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.clean()
      expect(my_pet.clean_level()).to(eq(10))
    end
  end

  describe('#set_happy_level') do
    it('sets the happy level') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_sleep_level(9)
      my_pet.set_play_level(9)
      my_pet.set_clean_level(9)
      expect(my_pet.happy_level()).to(eq(9))
    end
    it('sets the happy level') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_sleep_level(9)
      my_pet.set_play_level(3)
      my_pet.play()
      my_pet.set_clean_level(5)
      expect(my_pet.happy_level()).to(eq(6))
    end
    it('sets the happy level') do
      my_pet = Tamagotchi.new("t-rex")
      my_pet.set_sleep_level(3)
      my_pet.sleep()
      my_pet.set_play_level(3)
      my_pet.play()
      my_pet.set_clean_level(1)
      my_pet.clean()
      expect(my_pet.happy_level()).to(eq(6))
    end
  end
end
