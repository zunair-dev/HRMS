class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :lockable, :trackable

  has_one :employee

  enum roles: { admin: 'admin', employee: 'employee' }
end
