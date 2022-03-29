# frozen_string_literal: true

module Uncap
  module Repayment
    module UseCases
      class BalanceRepayments
        # NOTE: This method MUTATES the repayments objects!
        def call(repayments:, date_received:, amount_received_from_payment:)
          balance_repayments!(repayments, date_received, amount_received_from_payment)
        end

        private

        def balance_repayments!(repayments, date_received, amount_received_from_payment)
          # YOUR CODE HERE
          repayments.order('created_at ASC')
          date_received
          amount_received_from_payment
          if amount_received_from_payment > amount 
            balance = amount_received_from_payment - amount
            return repayments << amount
          end
        end
      end
    end
  end
end
