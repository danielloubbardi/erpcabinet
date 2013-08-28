# == Schema Information
#
# Table name: clients
#
#  adresse              :string(255)
#  capital              :string(255)
#  code_naf             :string(255)
#  code_postal          :string(255)
#  created_at           :datetime
#  date_immatriculation :datetime
#  forme_juridique      :string(255)
#  id                   :integer          not null, primary key
#  mandataire_social    :string(255)
#  nom                  :string(255)      default(""), not null
#  sirene               :string(255)
#  updated_at           :datetime
#  ville                :string(255)
#

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
