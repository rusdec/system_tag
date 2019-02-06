module SystemTag
  class Tags
    attr_reader :tags

    def initialize(data)
      @tags = data.map { |name, value| Tag.new(name: name, value: value) }
    end

    def to_s
      tags.reduce('') { |text, tag| text << tag.to_s }.html_safe
    end
  end
end
