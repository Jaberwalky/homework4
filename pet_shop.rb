def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, qty_of_pets)
  return pet_shop[:admin][:pets_sold] += qty_of_pets
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  new_array_of_pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      new_array_of_pets << breed
    end 
  end
  return new_array_of_pets
end

def find_pet_by_name(pet_shop, name_to_search)
  for pet in pet_shop[:pets]
    if pet[:name] == name_to_search
      return pet
    end
  end
    return nil
end

def remove_pet_by_name(pet_shop, name_of_pet_to_remove)
  for pet in pet_shop[:pets]
    if pet[:name] == name_of_pet_to_remove
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, pet_to_add)
  pet_shop[:pets] << pet_to_add
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, pet_to_add)
  customer[:pets] << pet_to_add
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    remove_pet_by_name(pet_shop, pet[:name])
    
    increase_pets_sold(pet_shop, 1)
    
    add_or_remove_cash(pet_shop, pet[:price])
    customer[:cash] -= pet[:price]
  end
end