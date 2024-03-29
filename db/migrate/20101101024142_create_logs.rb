class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.date     "log_date"
      t.float    "height"
      t.float    "weight"
	  t.integer  "age"
      t.integer  "RHR"
      t.float    "LBM"
      t.float    "body_fat"
      t.integer  "BMR"
      t.float    "BMI"
      t.integer  "TDEE"
      t.text     "goals"
      t.text     "reminders"
      t.text     "notes"
      t.float    "m_neck"
      t.float    "m_shoulders"
      t.float    "m_chest"
      t.float    "m_waist"
      t.float    "m_hips"
      t.float    "m_biceps_flex_r"
      t.float    "m_biceps_flex_l"
      t.float    "m_biceps_relax_r"
      t.float    "m_biceps_relax_l"
      t.float    "m_forearm_r"
      t.float    "m_forearm_l"
      t.float    "m_wrist_r"
      t.float    "m_wrist_l"
      t.float    "m_thigh_r"
      t.float    "m_thigh_l"
      t.float    "m_calf_r"
      t.float    "m_calf_l"
      t.float    "s_pec1"
      t.float    "s_pec2"
      t.float    "s_pec3"
      t.float    "s_ab1"
      t.float    "s_ab2"
      t.float    "s_ab3"
      t.float    "s_thigh1"
      t.float    "s_thigh2"
      t.float    "s_thigh3"
      t.float    "s_tricep1"
      t.float    "s_tricep2"
      t.float    "s_tricep3"
      t.float    "s_sub1"
      t.float    "s_sub2"
      t.float    "s_sub3"
      t.float    "s_sup1"
      t.float    "s_sup2"
      t.float    "s_sup3"
      t.float    "s_ax1"
      t.float    "s_ax2"
      t.float    "s_ax3"
      t.integer  "client_id"
      t.datetime "created_at"
      t.datetime "updated_at"
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
