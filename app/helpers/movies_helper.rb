module MoviesHelper
  def total_grossy(m)
    if m.flop?
      'Flop!'
    else
      number_to_currency(m.total_gross, precision: 0)
    end
  end

  def year_of(m)
    m.released_on.strftime('%Y')
  end
end
