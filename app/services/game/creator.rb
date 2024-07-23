class Game::Creator

  require "open-uri"
  require "nokogiri"

  def initialize(bar_code)
    @barcode = bar_code
  end

  def call
    url = "https://www.philibertnet.com/fr/recherche?search_query=#{@barcode}&submit_search="

    html_file = URI.open(url).read; nil
    html_doc = Nokogiri::HTML.parse(html_file); nil
    # html_doc = Nokogiri::HTML('<div class="wrapper_product_2"><p class="s_title_block"><a href="https://www.philibertnet.com/fr/djeco/6647-batawaf-3070900051041.html?search_query=3070900051041&amp;results=1" title="Bata-waf -jeu de cartes">Bata-waf -jeu de cartes</a></p><p class="price_container"><span class="price">8,50 €</span></p><div class="ukooreviews_all_stars"><div class="rating-stars"><span><svg class="icon svg-illus_rating"><use xlink:href="#svg-illus_rating-stars"></use></svg><span style="width: 90%"></span></span><span>4.5/5</span></div><div class="rating_details"><p>Détails des notes :</p><ul><li class="ukooreviews_group_2"><p>Note des Blogueurs :</p><div class="rating-stars"><span><svg class="icon svg-illus_rating"><use xlink:href="#svg-illus_rating-stars"></use></svg><span style="width: 74%"></span></span><span>3.7/5</span></div></li><li class="ukooreviews_group_0"><p>Note des Clients :</p><div class="rating-stars"><span><svg class="icon svg-illus_rating"><use xlink:href="#svg-illus_rating-stars"></use></svg><span style="width: 94%"></span></span><span>4.7/5</span></div></li></ul></div></div><p class="product_desc">Jeu de bataille. C'est le plus grand chien qui gagne ! Et si deux chiens sont de la même taille, attention ! Il y'a Bata-waf !</p><ul class="illustrated_features"> <li class="langue tooltips" title="Langue(s)">Allemand, Anglais, Français, ... </li><li class="age tooltips" title="Âge"><span>à partir de 3 ans</span></li><li class="nb_joueurs tooltips" title="Nombre de joueurs"><span>2 à 4 joueur(s)</span></li><li class="duree_partie tooltips" title="Durée d'une partie"><span>moins de 30mn</span></li></ul><div class="wrapper_product_features_buttons"><div><ul class="illustrated_features"> <li class="langue tooltips" title="Langue(s)">Allemand, Anglais, Français, ... </li><li class="age tooltips" title="Âge"><span>à partir de 3 ans</span></li><li class="nb_joueurs tooltips" title="Nombre de joueurs"><span>2 à 4 joueur(s)</span></li><li class="duree_partie tooltips" title="Durée d'une partie"><span>moins de 30mn</span></li></ul><div class="ukooreviews_all_stars"><div class="rating-stars"><span><svg class="icon svg-illus_rating"><use xlink:href="#svg-illus_rating-stars"></use></svg><span style="width: 90%"></span></span><span>4.5/5</span></div><div class="rating_details"><p>Détails des notes :</p><ul><li class="ukooreviews_group_2"><p>Note des Blogueurs :</p><div class="rating-stars"><span><svg class="icon svg-illus_rating"><use xlink:href="#svg-illus_rating-stars"></use></svg><span style="width: 74%"></span></span><span>3.7/5</span></div></li><li class="ukooreviews_group_0"><p>Note des Clients :</p><div class="rating-stars"><span><svg class="icon svg-illus_rating"><use xlink:href="#svg-illus_rating-stars"></use></svg><span style="width: 94%"></span></span><span>4.7/5</span></div></li></ul></div></div><p>Vendu par Philibert</p></div><div class="wrapper_buttons"><div><div><a class="ajax_add_to_cart_button" rel="ajax_id_product_6647" href="https://www.philibertnet.com/fr/panier?add=1&amp;id_product=6647&amp;token=bca22ff6b9609dad1a8de3313fc48838">Ajouter au panier</a><a class="lnk_view" href="https://www.philibertnet.com/fr/djeco/6647-batawaf-3070900051041.html?search_query=3070900051041&amp;results=1">Plus d'infos</a></div></div></div></div></div>')
    description = html_doc.css(".product_desc").text.strip
    title = html_doc.css(".s_title_block").text.strip
    img = html_doc.css(".wrapper_product_1 img").attr("src").value

    OpenStruct.new(
      description: description,
      title: title,
      img: img
    )
  end
end
