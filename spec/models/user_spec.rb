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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
