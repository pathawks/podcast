# frozen_string_literal: true

require "mp3info"
require "yaml"

module JekyllPodcast
  class Episode
    def initialize(e_filename)
      @episode = {"audio"=>{}}
      Mp3Info.open(e_filename) do |mp3|
        @episode["title"] = mp3.tag.title
        @episode["excerpt"] = mp3.tag2.COMM
        @episode["audio"]["mp3"] = File.basename(e_filename)
        if (mp3.tag2.TYER && mp3.tag2.TDAT && mp3.tag2.TIME)
          year  = mp3.tag2.TYER
          month = mp3.tag2.TDAT[2..3]
          date  = mp3.tag2.TDAT[0..1]
          time  = mp3.tag2.TIME
          @episode["date"] = "#{year}-#{month}-#{date} #{time}"
        else
          @episode["date"] = File.ctime(e_filename)
        end
      end
    end

    def to_yaml
      @episode.to_yaml
    end
  end
end
