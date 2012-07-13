module Jekyll

  class ImgTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      src = "/images/#{@text}"
      <<-eos
        <div class="shadow image-container">
          <a href="#{src}" class="popup">
            <img src="#{src}" class="shadow" />
          </a>
        </div>
      eos
    end

  end

  class ImgUrlTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      "/images/#{@text}"
    end

  end


end

Liquid::Template.register_tag('img', Jekyll::ImgTag)

Liquid::Template.register_tag('img_url', Jekyll::ImgUrlTag)

