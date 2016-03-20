class BonusDrink
  SERVICE_REQUIRED_BOTTLES = 3

  def self.total_count_for(amount)
    sho, amari = amount.divmod(SERVICE_REQUIRED_BOTTLES)
    returned_bottles = sho * SERVICE_REQUIRED_BOTTLES
    existing_bottles = sho + amari

    if existing_bottles > (SERVICE_REQUIRED_BOTTLES - 1)
      service_bottles = total_count_for(existing_bottles)
    else
      service_bottles = existing_bottles
    end

    returned_bottles + service_bottles
  end
end