class Album < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search,
    :against => [:name, :buyer, :year],
    :using => {
    :tsearch => {:dictionary => "english"}
  }

  validates :name,  :presence => true, :if => :active_or_name?
  validates :buyer, :presence => true, :if => :active_or_name?
  validates :photo_url, :presence => true, :if => :active_or_photo?
  validates :year, :presence => true, :if => :active_or_year?

  scope :active, -> {where(status: "active")}

  def active?
    status == 'active'
  end

  def active_or_name?
    active? || self.status.include?("name")
  end

  def active_or_photo?
    active? || self.status.include?("photo")
  end

  def active_or_year?
    active? || self.status.include?("year")
  end
end
