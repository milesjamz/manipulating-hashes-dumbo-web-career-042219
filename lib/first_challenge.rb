def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |name, data|
      if name == "Freddy Mercury" #find the name at level 1
      data.each do |key, value|
         if key == :favorite_icecream_flavors #check the condition
            #delete_if method acts like each
            value.delete_if {|flavor| flavor = "strawberry" } 
         end
      end
      end
   end
   contacts
end