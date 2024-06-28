class TimeConverter

  def hours_in_a_year
    print 24 * 365
  end

  def minutes_in_a_decade
    print 60 * 24 * 365 * 10
  end

  def age_in_seconds(age)
    print (age * 365 * 24 * 60 * 60)
  end

  def age_from_seconds_to_years(age)
    print (((age / 365) / 24) / 60) / 60
  end
end
