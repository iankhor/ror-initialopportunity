class Onboarding < ApplicationRecord

  # validates :name, presence: true, if: :step1?
  # validates :quantity, numericality: true, if: :step2?
  # validates :tags, presence: true, if: :step3?

  include MultiStepModel

  def self.total_steps
    # 4 steps excluding submit
    4
  end


end
