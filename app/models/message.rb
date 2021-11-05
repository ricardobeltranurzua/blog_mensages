class Message < ApplicationRecord
  belongs_to :post

   validates :author,
  :message, presence: { message: "Este campo es requerido."}

  validates :message,
  length: {minimum: 15, message: "Este campo debe tener 15 caracteres minimo"}
end
