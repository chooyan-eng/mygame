module MyGame
  module Entity
    # class for representing player
    class Player
      attr_reader(:max_stamina, :current_stamina)

      def initialize(stamina)
        @max_stamina = stamina
        @current_stamina = stamina
      end

      def absorb_stamina(amount)
        @current_stamina -= amount
      end

      def heal_stamina(amount)
        @current_stamina += amount
        @current_stamina = [@current_stamina, @max_stamina].min
      end
    end
  end
end
