class Course < ApplicationRecord
  has_one :coordinator #Informa onde está a composição de objetos. Permite navegar de curso para coordenador.
  accepts_nested_attributes_for :coordinator #"Cria métodos sets" dentro do curso, permite setar valores do coordenador dentro de curso, permitindo fazer um alinhamento de atributos, ou seja, vai permitir criar um curso e o coordenador no mesmo formulario.
end
