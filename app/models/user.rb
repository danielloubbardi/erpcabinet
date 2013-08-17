# == Schema Information
#
# Table name: users
#
#  admin           :boolean
#  created_at      :datetime
#  email           :string(255)
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#  updated_at      :datetime
#

class User < ActiveRecord::Base
 attr_accessible :name, :email
end