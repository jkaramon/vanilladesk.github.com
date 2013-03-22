module Jekyll

  class NewsImgTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      dt = context['page']['date'].strftime("%Y-%m-%d")
      src = "/images/news/#{dt}/#{@text}"
      <<-eos
        <span class="shadow">
          <a href="#{src}" class="popup">
            <img src="#{src}" class="shadow" />
          </a>
        </span>
      eos
    end

  end

  class NewsImgBigTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      dt = context['page']['date'].strftime("%Y-%m-%d")
      src = "/images/news/#{dt}/#{@text}"
      <<-eos
        <span class="shadow">
          <a href="#{src}" class="popup">
            <img src="#{src}" class="shadow big" />
          </a>
        </span>
      eos
    end

  end


  class NewsImgUrlTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def render(context)
      dt = context['page']['date'].strftime("%Y-%m-%d")
      "/images/news/#{dt}/#{@text}"
    end

  end


end

Liquid::Template.register_tag('news_img_big', Jekyll::NewsImgBigTag)

Liquid::Template.register_tag('news_img', Jekyll::NewsImgTag)

Liquid::Template.register_tag('news_img_url', Jekyll::NewsImgUrlTag)

