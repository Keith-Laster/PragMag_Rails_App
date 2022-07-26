class Movie < ApplicationRecord
  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end

  def self.released
    where('released_on < ?', Time.now).order('released_on desc')
  end
end
