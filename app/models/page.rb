class Page < ApplicationRecord
  belongs_to :subject, { :optional => false }
end
