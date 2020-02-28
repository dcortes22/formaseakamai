class Member < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_photo

  validates :name, presence: { message: "debe ser diferente de vacio" }
  validates :first_last_name, presence: { message: "debe ser diferente de vacio" }
  validates :second_last_name, presence: { message: "debe ser diferente de vacio" }
  validates :employee_code, presence: { message: "debe ser diferente de vacio" }
  validates :employee_code, numericality: { message: "%{value} no parece un número válido" }

  validates :photo, presence: true, unless: :attachment_errors_exist?
  

  def attachment_errors_exist?
    errors[:photo].present?
  end

  def crop_photo
    photo.recreate_versions! if crop_x.present?
  end
end
