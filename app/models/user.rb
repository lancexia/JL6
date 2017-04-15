class User < ApplicationRecord
  has_many :resumes
  has_many :job_relationships
  has_many :applied_jobs, :through => :job_relationships, :source => :job
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def admin?
    email == '1234@test.com'
  end

  def has_applied?(job)
    applied_jobs.include?(job)
  end

  def apply!(job)
   applied_jobs << job
  end
end
