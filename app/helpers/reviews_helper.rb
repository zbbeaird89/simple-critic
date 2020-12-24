module ReviewsHelper

  def review_card_star_rating_partial_path(i, review)
    if i < review.average_rating
      "shared/cards/card/star-on.html.erb"
    else
      "shared/cards/card/star-off.html.erb"
    end
  end

end
