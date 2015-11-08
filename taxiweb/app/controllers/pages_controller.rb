class PagesController < ApplicationController
  layout 'internal', except: [:index]
  
  def index
  end

  def about_us
  end

  def faq
  end

  def tos
  end

  def contact_us
  end
end
