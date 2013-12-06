module ProductsHelper

def format_time(dt, format=:long, blank_message="&nbsp;")
    dt.blank? ? blank_message : dt.strftime('%d,%b %Y')
  end
end
