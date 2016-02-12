module WitsHelper
  def format_date(date)
    date.strftime("%A, %d %b %Y %l:%M %p")
  end
end
