class MapPrinter
  def initialize(array_map)
    @array_map = array_map
  end

  def print
    headers = ['#'].push(('A'..'J').to_a).flatten.join((' - '))
    map = headers + "<br>"
    (0..9).to_a.each do |i|
      first_in_line = 10 * i
      last_in_line = first_in_line + 9
      line_elements = @array_map[first_in_line..last_in_line]
      line = [i+1].push(line_elements).flatten.join(' - ')
      map += "#{line}<br>"
    end
    map.html_safe
  end


end
