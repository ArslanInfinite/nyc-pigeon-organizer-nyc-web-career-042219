def nyc_pigeon_organizer(data)
  pigeon_hierarchy = {}
  data.each do |category, new_hash|
    new_hash.each do |information, array|
      array.each do |name|
        pigeon_hierarchy[name] = {} if pigeon_hierarchy[name].nil?
        pigeon_hierarchy[name][category] = [] if pigeon_hierarchy[name][category].nil?
        pigeon_hierarchy[name][category] << information.to_s
      end
    end
  end
  pigeon_hierarchy
end
