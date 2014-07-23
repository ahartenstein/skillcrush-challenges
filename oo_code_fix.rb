class Animal

    def traits (species, name: "None", owner: "None", speak: "I'm sorry, I don't know what sound that animal makes. Please specify in the traits.")
        @species = species
        @name = name
        @owner = owner
        @speak = speak
    end

    def get_species
        return @species
    end

    def get_name
        return @name
    end

    def get_owner
        return @owner
    end

    def talk
        case @species
            when "Ferret"
                @speak = "squeeeeee"
            when "Chincilla"
                @speak = "eeeep"
            when "Parrot"
                @speak = "chirp chirp"
            else 
                @speak = @speak
        end
        return @speak
    end
end

my_ferret = Animal.new
my_ferret.traits("Ferret", name:"Fredo")
ferretname = my_ferret.get_name
 
my_parrot = Animal.new
my_parrot.traits("Parrot", name:"Budgie")
parrotname = my_parrot.get_name
 
my_chincilla = Animal.new
my_chincilla.traits("Chincilla", name:"Dali")
chincillaname = my_chincilla.get_name
 
puts "#{ferretname} says #{my_ferret.talk},
#{parrotname} says #{my_parrot.talk},
and #{chincillaname} says #{my_chincilla.talk}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect