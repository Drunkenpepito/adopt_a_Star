
class StarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

#il y a une condition dans le code qui n'a pas de sens mais revient au même que si on avait rien mis( pedago)
  def index?
    true
  end

#seulement Xavier et Pierre peuvent creer
  def create?
   true
  end
#seulement Xavier et Pierre peuvent creer
  def new?
    create?
  end

#tout le monde peut show
  def show?
    true
  end
#tout le monde peut update
  def update?
    record.user == user
  end
# tout le monde peut edit
  def edit?
    update?
  end
# personne ne peut destroy
  def destroy?

    record.user == user

    true

  end

end
