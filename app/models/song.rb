class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def to_s
    "#{name} - #{artist.name} - #{genre.name}"
  end
end