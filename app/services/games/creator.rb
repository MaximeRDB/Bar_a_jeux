module Games
  class Creator

    require "open-uri"
    require "nokogiri"

    def initialize(bar_code)
      @barcode = bar_code
    end

    def call
      url = "https://www.philibertnet.com/fr/recherche?search_query=#{@barcode}&submit_search="

      html_file = URI.open(url).read; nil
      html_doc = Nokogiri::HTML.parse(html_file); nil
      description = html_doc.css(".product_desc").text.strip
      name = html_doc.css(".s_title_block").text.strip
      img = html_doc.css(".wrapper_product_1 img").attr("src").value

      Game.new(
        description: description,
        name: name,
        image_link: img
      )
    end
  end
end
