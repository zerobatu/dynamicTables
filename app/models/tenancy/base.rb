class Tenancy::Base < ActiveRecord::Base
  serialize :others, Hash
end
