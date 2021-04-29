module WinesHelper
  def sort_strains(wine_strains)
    wine_strains.map{|wine_strain| [wine_strain.strain.name, wine_strain.percentage]}
                .map{|wine_strain| "#{wine_strain.first} (#{wine_strain.second}%)"}
                .sort
                .join(', ')
  end
end
