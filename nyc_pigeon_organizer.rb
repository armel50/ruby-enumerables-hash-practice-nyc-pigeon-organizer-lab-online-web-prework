def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_data = data
  hash = {}
    pigeon_data.each do |key, val|
       #p key
       #key will take the value like :color :gender :lives
       #p val

      val.each do |key_val, val_val|
        #p key_val
        #key_val will take value like :purple :grey
# :white
# :brown
# :male
# :female
# "Subway"
# "Central Park"
# "Library"
# "City Hall"


      #p val_val
      #val_val is an array containing the names
      val_val.each do |name|
      if !hash[name]
      puts "pushing #{name} in hash"
       hash[name] = {
         :color => [],
         :gender => [],
         :lives =>[]
       }
       end
      if pigeon_data[:lives][key_val] != nil
        if  pigeon_data[:lives][key_val].include?(name)
          hash[name][:lives].push("#{key_val}")
              
        end
       end

        if pigeon_data[:gender][key_val] != nil
        if  pigeon_data[:gender][key_val].include?(name)
          hash[name][:gender].push("#{key_val}")
              
        end
       end
        if pigeon_data[:color][key_val] != nil
        if  pigeon_data[:color][key_val].include?(name)
          hash[name][:color].push("#{key_val}")
              
        end
       end


      end

      end
    end

    hash
end

