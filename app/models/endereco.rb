class Endereco < ActiveRecord::Base
  belongs_to :comprador

  validates :comprador, presence: true
end
