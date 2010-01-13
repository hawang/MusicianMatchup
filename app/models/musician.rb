class Musician < ActiveRecord::Base
  validates_presence_of :name, :instrument, :age, :gender
  validate :correct_gender, :correct_age
  
  protected
  def correct_gender
    errors.add(:gender, 'gender should be either male or female') if gender.downcase != "male" && gender.downcase !="female"
  end
  
  def correct_age
    errors.add(:age, 'age must be greater than 0') if age <= 0
  end
end
