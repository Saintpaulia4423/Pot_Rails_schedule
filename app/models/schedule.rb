class Schedule < ApplicationRecord
  validates :title, presence: true, length: {in: 1..20}
  validates :start_day, presence: true
  validates :end_day, presence: true
  validate :validate_date_end_day_after_start_day
  validates :memo, length: {minimum:0, maximum:500}

  def validate_date_end_day_after_start_day
    if start_day.present? && end_day.present?
      if Time.parse(end_day.to_s).to_i < Time.parse(start_day.to_s).to_i
        errors.add(:end_day,"は開始日以降の日付を指定してください")
      end
    end
  end

end
