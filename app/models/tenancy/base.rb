class Tenancy::Base < ActiveRecord::Base
  serialize :other, Hash
end
