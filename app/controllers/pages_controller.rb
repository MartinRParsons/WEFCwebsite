class PagesController < ApplicationController
  
  def home
  
  end
  
  def cal
    
    cal_date
    render "calendar/show"
  end
  
  
  private
  def cal_date
  
  if ['january','february','march','april','may','june','july','august','september','october','november','december'].include? params[:month]
    month = Date::MONTHNAMES.index(params[:month].capitalize)
    year = Date.today.year
    year = params[:year] if(Date.today.year-10..Date.today.year+30).to_a.include?(params[:year].to_i)
    date = '01-'+month.to_s+'-'+year.to_s
    @date = Date::strptime(date, "%d-%m-%Y")
    
    else
    @date = Date.today.at_beginning_of_month
  end
  
  end
  
end