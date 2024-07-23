class Game::Creator

  require "open-uri"
  require "nokogiri"

  def initialize(bar_code)
    @barcode = bar_code
  end

  def call
    barcode = 
    url = "https://www.philibertnet.com/fr/recherche?search_query=#{barcode}&submit_search="

    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML.parse(html_file)

html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  puts element.text.strip
  puts element.attribute("href").value
end
  end
end
