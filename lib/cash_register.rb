require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items, :void_transaction

    def initialize(discount = 0)
        @items = []
        @total = 0
        @discount = discount
        @void_transaction = []
        # binding.pry
      end
    #   binding.pry

      def add_item(title, price, quantity = 1)

        last_transaction = price * quantity
     

        quantity.times do |i|
            self.items << title
        end

        self.total += last_transaction

        @void_transaction << last_transaction
      end

      def apply_discount

        if @discount != 0
        discount_amount = (100 - @discount).to_f / 100
        @total = (@total * discount_amount).to_i
        "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end
      end

      def void_last_transaction
        
      remove = @void_transaction[-1]
      @total -= remove
      @void_transaction.pop()

        # binding.pry
      end
        
end 

one = CashRegister.new(10)
# two = CashRegister.new(10)

binding.pry