class Log < ActiveRecord::Base
  belongs_to :client
  
  validates :log_date, :presence => true
  validates :height, :presence => true
  validates :weight, :presence => true
  validates :s_pec1, :presence => true
  validates :s_pec2, :presence => true
  validates :s_pec3, :presence => true
  validates :s_ab1, :presence => true
  validates :s_ab2, :presence => true
  validates :s_ab3, :presence => true
  validates :s_thigh1, :presence => true
  validates :s_thigh2, :presence => true
  validates :s_thigh3, :presence => true
  validates :s_tricep1, :presence => true
  validates :s_tricep2, :presence => true
  validates :s_tricep3, :presence => true
  validates :s_sub1, :presence => true
  validates :s_sub2, :presence => true
  validates :s_sub3, :presence => true
  validates :s_sup1, :presence => true
  validates :s_sup2, :presence => true
  validates :s_sup3, :presence => true
  validates :s_ax1, :presence => true
  validates :s_ax2, :presence => true
  validates :s_ax3, :presence => true
  validates :age, :presence => true

end