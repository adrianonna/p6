class Coordinator < ApplicationRecord
  belongs_to :course #o lado que possui belons_to é o lado que possui a chave estrangeira, ou seja Cordenador tem a chave estrangeira para curso. Permite navegar de coordenador para curso.
end
