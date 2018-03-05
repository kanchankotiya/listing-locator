class OpeningHour < ApplicationRecord
  belongs_to :listing, optional: true
end
