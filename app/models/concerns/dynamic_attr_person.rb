module DynamicAttrPerson

  extend ActiveSupport::Concern

  included do
    # list of dynamic attributes
    new_attributes = ["first_name"]

    # setters and getters
    new_attributes.each do |attr|
      class_eval <<-RUBY
        attr_accessor :#{attr}

        def #{attr}
          self.others.class == Hash ? self.others[:#{attr}] : nil
        end

        def #{attr}=(val)
          self.others = {} if others == nil
          self.others[:#{attr}] = val
        end
      RUBY
    end

    # validations new attributes
    validates :first_name, presence: true

  end
end
