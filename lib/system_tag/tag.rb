module SystemTag
  class Tag
    attr_reader :name, :value

    def initialize(name:, value:)
      @name = name
      @value = value
    end

    def to_s
      "<system data-name='#{name}' data-value='#{value}'></system>".html_safe
    end
  end
end
