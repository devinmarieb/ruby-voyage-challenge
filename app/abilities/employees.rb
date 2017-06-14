Canard::Abilities.for(:employee) do
  can [:manage], User do |u|
    u == user
  end
  cannot [:destroy], User
end
