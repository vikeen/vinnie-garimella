class StaticPagesController < ApplicationController
  def home
    @artwork_types = ArtworkType.all;
  end

  def contact
  end

  def cvv
  end
end
