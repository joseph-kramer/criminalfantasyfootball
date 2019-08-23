class PagesController < ApplicationController
  def about
  end

  def faq
  end

  def rules
    @characteristics = Characteristic.all
  end

end
