module MoviesHelper
  def total_grossy(m)
    if m.flop?
      'Flop!'
    else
      number_to_currency(m.total_gross, precision: 0)
    end
  end

  def year_of(m)
    puts m
    puts 'tessssst'
    # if !m.released_on.nil?
    #   m.released_on.strftime('%Y')
    # else
    #   'TBD'
    # end
    m.released_on.nil? ? 'TBD' : m.released_on.strftime('%Y')
    # ternary^
  end
end
