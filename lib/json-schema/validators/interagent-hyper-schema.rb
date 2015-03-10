module JSON
  class Schema

    class InteragentHyperSchema < Draft4
      def initialize
        super
        @uri = Addressable::URI.parse("http://interagent.github.io/interagent-hyper-schema#")
      end

      JSON::Validator.register_validator(self.new)
    end
  end
end
