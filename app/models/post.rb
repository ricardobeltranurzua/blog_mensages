class Post < ApplicationRecord
  belongs_to :blog

  has_many :message

  validates :title,
  :content, presence: { message: "Este campo es requerido."}

  validates :title,
  length: {minimum: 7, message: "Este campo debe tener minimo 7 caracteres"} 
end
