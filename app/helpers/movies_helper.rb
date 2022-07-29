module MoviesHelper
  def total_grossy(m)
    if m.flop?
      'Flop!'
    else
      number_to_currency(m.total_gross, precision: 0)
    end
  end

  def year_of(m)
    # m.released_on.year
    # if !m.released_on.nil?
    #   m.released_on.strftime('%Y')
    # else
    #   'TBD'
    # end
    m.released_on.nil? ? 'TBD' : m.released_on.strftime('%Y')
    # ternary^
  end

  def average_stars(movie)
    avg_stars = movie.average_stars
    if avg_stars == 0.0
      content_tag(:strong, 'No reveiews')
    else
      pluralize(number_with_precision(avg_stars, precision: 1), 'star')
    end
  end
end
