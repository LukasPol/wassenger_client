# frozen_string_literal: true

module WassengerClient
  class Event < OpenStruct
    class << self

      def message
        WassengerClient::Message.new(self.data)
      end

      def sent_message?
        event == 'message:out:sent'
      end

      def failed_message?
        event == 'message:out:failed'
      end

      def in_new?
        event == 'message:in:new'
      end
    end
  end
end
