def nyc_pigeon_organizer(data)
    final = {}
  names = []

  #Create 'names' array with all unique names of pigeons
  data.each do |c_g_l, attribute|
    attribute.each do |feature, name|
      name.each do |firstname|
        names << (firstname) if !names.include?(firstname)
      end
    end
  end
  
  names.each do |nam|
    final[nam] = Hash.new {|key,value| key[value] = []}
    data.each do |c_g_l, attribute|
      final[nam][c_g_l]
      attribute.each do |feature, namearray|
        namearray.each do |uname|
          final[uname][c_g_l] << feature.to_s if uname == nam
        end
      end   
    end
  end
  final
end
