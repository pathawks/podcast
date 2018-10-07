# frozen_string_literal: true

module JekyllPodcast
  class PageWithoutAFile < Jekyll::Page
    def read_yaml(*)
      @data ||= {}
    end
  end
end
