module Jekyll

  class VideoTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      src = "/videos/#{@text}".strip
      id = @text.gsub(/\W/, "-")
      <<-eos
        <div class="jwvideo">
        <embed
          flashvars="file=#{src}.mp4&autostart=false&image=#{src}.png"
          allowfullscreen="true"
          allowscripaccess="always"
          id="#{id}"
          name="#{id}"
          src="/jwplayer/player.swf"
          width="640"
          height="480"
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

