# frozen_string_literal: true

require "mp3info"
require "yaml"

module Jekyll
  class Podcast
    class Episode
      def initialize(e_filename)
        @episode = {"audio"=>{}}
        Mp3Info.open(e_filename) do |mp3|
          @episode["title"] = mp3.tag.title
          @episode["excerpt"] = mp3.tag2.COMM
          @episode["audio"]["mp3"] = File.basename(e_filename)
          @episode["date"] = File.ctime(e_filename)
        end
      end

      def to_yaml
        @episode.to_yaml
      end
    end
  end
end
