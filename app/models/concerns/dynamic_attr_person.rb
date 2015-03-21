module DynamicAttrPerson

  extend ActiveSupport::Concern

  included do
    # dynamic attribute :name

    attr_accessor :name

    validates :name, presence: true

    def name
      self.other.class == Hash ? self.other[:name] : nil
    end

    def name=(val)
      self.other = {} if other == nil
      self.other[:name] = val
    end

    # you can add many attributes

  end

end
