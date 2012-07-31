require_relative 'tag_utils'
module Jekyll
  class VideoTag < Liquid::Tag

    include TagUtils

    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      name, params = params_from_text
      src = "/videos/#{name}".strip
      id = name.gsub(/\W/, "-")
      width = params[:width] || 320
      height = params[:height] || 200
      <<-eos
        <div class="jwvideo">
        <embed
          flashvars="file=#{src}.mp4&autostart=false&image=#{src}.png"
          allowfullscreen="true"
          allowscripaccess="always"
          id="#{id}"
          name="#{id}"
          src="/jwplayer/player.swf"
          width="#{width}"
          height="#{height}"
        />
        </div>
      eos
    end

  end

  class VideoUrlTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      "/videos/#{@text}"
    end

  end


end

Liquid::Template.register_tag('video', Jekyll::VideoTag)

Liquid::Template.register_tag('video_url', Jekyll::VideoUrlTag)

