class BonusDrink
  SERVICE_REQUIRED_BOTTLES = 3  # サービスを受けるために必要な瓶の数

  def self.total_count_for(amount)
    sho, amari = amount.divmod(SERVICE_REQUIRED_BOTTLES)
    returned_bottles = sho * SERVICE_REQUIRED_BOTTLES     # サービスを受けるために返却した瓶
    existing_bottles = sho + amari                        # 手元にある瓶

    if existing_bottles >= SERVICE_REQUIRED_BOTTLES
      existing_bottles = total_count_for(existing_bottles)
    end

    returned_bottles + existing_bottles
  end
end