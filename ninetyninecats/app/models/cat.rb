# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  COLORS = ['black', 'white', 'yellow', 'grey']
  
  validates :sex, inclusion: { in: %w(m f M F) }
  validates :color, inclusion: { in: COLORS }

  def age
    Time.now.year - birth_date.year
  end
end
