class Post < ActiveRecord::Base

  belongs_to :author
  validate :is_title_case 

  before_validation :make_title_case
  before_save :give_warning_notification_about_post
  # before_create :normalise_title
  private

  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end

  def give_warning_notification_about_post
  
  end

  # def normalise_title
  #   self.title= self.title.downcase.titleize
  # end
  def
  def make_title_case
    self.title = self.title.titlecase
  end
end
