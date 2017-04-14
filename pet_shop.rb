# def pet_shop_name(pet_shop)
#   return pet_shop[:name]
# end

# def total_cash(pet_shop)
#   return pet_shop[:admin][:total_cash]
# end

# def add_or_remove_cash(pet_shop, amount)
#   pet_shop[:admin][:total_cash] += amount
# end

# def pets_sold(pet_shop)
#   return pet_shop[:admin][:pets_sold]
# end

# def increase_pets_sold(pet_shop, qty_of_pets)
#   return pet_shop[:admin][:pets_sold] += qty_of_pets
# end

# def stock_count(pet_shop)
#   pet_shop[:pets].length
# end

def pets_by_breed(pet_shop, breed)
  new_array_of_pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      new_array_of_pets << breed
    end 
  end
  return new_array_of_pets
end