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
end
