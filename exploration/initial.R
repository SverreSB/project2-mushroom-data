#p_color_by_odor = mush[mush$odor != "a" & mush$odor != "l" &  mush$odor != "n",]$cap_color
#e_color_by_odor = mush[mush$odor == "a" | mush$odor == "l" |  mush$odor == "n",]$cap_color
#lbl = mush[mush$odor == "a" | mush$odor == "l" |  mush$odor == "n",]$label
#barplot(table(mush$label, mush$odor))
#plot(p_color_by_odor)
#plot(table(lbl, e_color_by_odor))

data = "https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data"
mush = read.csv(url(data), na.strings = "?")
names(mush) <- c("class","cap_shape", "cap_surface", "cap_color", "bruises", "odor", 
                "gill_attachment", "gill_spacing", "gill_size", "gill_color", 
                "stalk_shape", "stalk_root", "stalk_surface_above", "stalk_surface_below",
                "stalk_color_above", "stalk_color_below", "veil_type", "veil_color", 
                "ring_number", "ring_type", "spore_print_color", "population", "habitat")


# class
levels(mush$class)[match("e",levels(mush$class))] <- "edible"
levels(mush$class)[match("p",levels(mush$class))] <- "poisonous"

# cap_shape
levels(mush$cap_shape)[match("b",levels(mush$cap_shape))] <- "bell"
levels(mush$cap_shape)[match("c",levels(mush$cap_shape))] <- "conical"
levels(mush$cap_shape)[match("x",levels(mush$cap_shape))] <- "convex"
levels(mush$cap_shape)[match("f",levels(mush$cap_shape))] <- "flat"
levels(mush$cap_shape)[match("k",levels(mush$cap_shape))] <- "knobbed"
levels(mush$cap_shape)[match("s",levels(mush$cap_shape))] <- "sunken"

# cap_surface
levels(mush$cap_surface)[match("f",levels(mush$cap_surface))] <- "fibrous"
levels(mush$cap_surface)[match("g",levels(mush$cap_surface))] <- "grooves"
levels(mush$cap_surface)[match("y",levels(mush$cap_surface))] <- "scaly"
levels(mush$cap_surface)[match("s",levels(mush$cap_surface))] <- "smooth"

# cap_color
levels(mush$cap_color)[match("n",levels(mush$cap_color))] <- "brown"
levels(mush$cap_color)[match("b",levels(mush$cap_color))] <- "buff"
levels(mush$cap_color)[match("c",levels(mush$cap_color))] <- "cinnamon"
levels(mush$cap_color)[match("g",levels(mush$cap_color))] <- "gray"
levels(mush$cap_color)[match("r",levels(mush$cap_color))] <- "green"
levels(mush$cap_color)[match("p",levels(mush$cap_color))] <- "pink"
levels(mush$cap_color)[match("u",levels(mush$cap_color))] <- "purple"
levels(mush$cap_color)[match("e",levels(mush$cap_color))] <- "red"
levels(mush$cap_color)[match("w",levels(mush$cap_color))] <- "white"
levels(mush$cap_color)[match("y",levels(mush$cap_color))] <- "yellow"

# bruises
levels(mush$bruises)[match("t",levels(mush$bruises))] <- "true"
levels(mush$bruises)[match("f",levels(mush$bruises))] <- "false"

# odor
levels(mush$odor)[match("a",levels(mush$odor))] <- "almond"
levels(mush$odor)[match("l",levels(mush$odor))] <- "anis"
levels(mush$odor)[match("c",levels(mush$odor))] <- "creosote"
levels(mush$odor)[match("y",levels(mush$odor))] <- "fishy"
levels(mush$odor)[match("f",levels(mush$odor))] <- "foul"
levels(mush$odor)[match("m",levels(mush$odor))] <- "musty"
levels(mush$odor)[match("n",levels(mush$odor))] <- "none"
levels(mush$odor)[match("p",levels(mush$odor))] <- "pungent"
levels(mush$odor)[match("s",levels(mush$odor))] <- "spicy"

# gill_attachment
levels(mush$gill_attachment)[match("a",levels(mush$gill_attachment))] <- "attached"
levels(mush$gill_attachment)[match("d",levels(mush$gill_attachment))] <- "descending"
levels(mush$gill_attachment)[match("f",levels(mush$gill_attachment))] <- "free"
levels(mush$gill_attachment)[match("n",levels(mush$gill_attachment))] <- "notched"

# gill_spacing
levels(mush$gill_spacing)[match("c",levels(mush$gill_spacing))] <- "close"
levels(mush$gill_spacing)[match("w",levels(mush$gill_spacing))] <- "crowded"
levels(mush$gill_spacing)[match("d",levels(mush$gill_spacing))] <- "distant"

# gill_size
levels(mush$gill_size)[match("b",levels(mush$gill_size))] <- "broad"
levels(mush$gill_size)[match("n",levels(mush$gill_size))] <- "narrow"

# gill_color
levels(mush$gill_color)[match("k",levels(mush$gill_color))] <- "black"
levels(mush$gill_color)[match("n",levels(mush$gill_color))] <- "brown"
levels(mush$gill_color)[match("b",levels(mush$gill_color))] <- "buff"
levels(mush$gill_color)[match("h",levels(mush$gill_color))] <- "chocalate"
levels(mush$gill_color)[match("g",levels(mush$gill_color))] <- "gray"
levels(mush$gill_color)[match("r",levels(mush$gill_color))] <- "green"
levels(mush$gill_color)[match("o",levels(mush$gill_color))] <- "orange"
levels(mush$gill_color)[match("p",levels(mush$gill_color))] <- "pink"
levels(mush$gill_color)[match("u",levels(mush$gill_color))] <- "purple"
levels(mush$gill_color)[match("e",levels(mush$gill_color))] <- "red"
levels(mush$gill_color)[match("w",levels(mush$gill_color))] <- "white"
levels(mush$gill_color)[match("y",levels(mush$gill_color))] <- "yellow"

# stalk_shape
levels(mush$stalk_shape)[match("e",levels(mush$stalk_shape))] <- "enlarging"
levels(mush$stalk_shape)[match("t",levels(mush$stalk_shape))] <- "tapering"

# stalk_root
levels(mush$stalk_root)[match("b",levels(mush$stalk_root))] <- "bulbose"
levels(mush$stalk_root)[match("c",levels(mush$stalk_root))] <- "club"
levels(mush$stalk_root)[match("u",levels(mush$stalk_root))] <- "cup"
levels(mush$stalk_root)[match("e",levels(mush$stalk_root))] <- "equal"
levels(mush$stalk_root)[match("z",levels(mush$stalk_root))] <- "rhizomorphs"
levels(mush$stalk_root)[match("r",levels(mush$stalk_root))] <- "rooted"
levels(mush$stalk_root)[match("?",levels(mush$stalk_root))] <- "missing"

# stalk_surface_above
levels(mush$stalk_surface_above)[match("f",levels(mush$stalk_surface_above))] <- "fibrous"
levels(mush$stalk_surface_above)[match("y",levels(mush$stalk_surface_above))] <- "scaly"
levels(mush$stalk_surface_above)[match("k",levels(mush$stalk_surface_above))] <- "silky"
levels(mush$stalk_surface_above)[match("s",levels(mush$stalk_surface_above))] <- "smooth"

# stalk_surface_below
levels(mush$stalk_surface_below)[match("f",levels(mush$stalk_surface_below))] <- "fibrous"
levels(mush$stalk_surface_below)[match("y",levels(mush$stalk_surface_below))] <- "scaly"
levels(mush$stalk_surface_below)[match("k",levels(mush$stalk_surface_below))] <- "silky"
levels(mush$stalk_surface_below)[match("s",levels(mush$stalk_surface_below))] <- "smooth"

# stalk_color_above
levels(mush$stalk_color_above)[match("n",levels(mush$stalk_color_above))] <- "brown"
levels(mush$stalk_color_above)[match("b",levels(mush$stalk_color_above))] <- "buff"
levels(mush$stalk_color_above)[match("c",levels(mush$stalk_color_above))] <- "cinnamon"
levels(mush$stalk_color_above)[match("g",levels(mush$stalk_color_above))] <- "gray"
levels(mush$stalk_color_above)[match("o",levels(mush$stalk_color_above))] <- "orange"
levels(mush$stalk_color_above)[match("p",levels(mush$stalk_color_above))] <- "pink"
levels(mush$stalk_color_above)[match("e",levels(mush$stalk_color_above))] <- "red"
levels(mush$stalk_color_above)[match("w",levels(mush$stalk_color_above))] <- "white"
levels(mush$stalk_color_above)[match("y",levels(mush$stalk_color_above))] <- "yellow"

# stalk_color_below
levels(mush$stalk_color_below)[match("n",levels(mush$stalk_color_below))] <- "brown"
levels(mush$stalk_color_below)[match("b",levels(mush$stalk_color_below))] <- "buff"
levels(mush$stalk_color_below)[match("c",levels(mush$stalk_color_below))] <- "cinnamon"
levels(mush$stalk_color_below)[match("g",levels(mush$stalk_color_below))] <- "gray"
levels(mush$stalk_color_below)[match("o",levels(mush$stalk_color_below))] <- "orange"
levels(mush$stalk_color_below)[match("p",levels(mush$stalk_color_below))] <- "pink"
levels(mush$stalk_color_below)[match("e",levels(mush$stalk_color_below))] <- "red"
levels(mush$stalk_color_below)[match("w",levels(mush$stalk_color_below))] <- "white"
levels(mush$stalk_color_below)[match("y",levels(mush$stalk_color_below))] <- "yellow"

# veil_type
levels(mush$veil_type)[match("p",levels(mush$veil_type))] <- "partial"
levels(mush$veil_type)[match("u",levels(mush$veil_type))] <- "universal"

# veil_color
levels(mush$veil_color)[match("n",levels(mush$veil_color))] <- "brown"
levels(mush$veil_color)[match("o",levels(mush$veil_color))] <- "orange"
levels(mush$veil_color)[match("w",levels(mush$veil_color))] <- "white"
levels(mush$veil_color)[match("y",levels(mush$veil_color))] <- "yellow"

# ring_number
levels(mush$ring_number)[match("n",levels(mush$ring_number))] <- "none"
levels(mush$ring_number)[match("o",levels(mush$ring_number))] <- "one"
levels(mush$ring_number)[match("t",levels(mush$ring_number))] <- "two"

# ring_type
levels(mush$ring_type)[match("c",levels(mush$ring_type))] <- "cobwebby"
levels(mush$ring_type)[match("e",levels(mush$ring_type))] <- "evanescent"
levels(mush$ring_type)[match("f",levels(mush$ring_type))] <- "flaring"
levels(mush$ring_type)[match("l",levels(mush$ring_type))] <- "large"
levels(mush$ring_type)[match("n",levels(mush$ring_type))] <- "none"
levels(mush$ring_type)[match("p",levels(mush$ring_type))] <- "pendant"
levels(mush$ring_type)[match("s",levels(mush$ring_type))] <- "sheathing"
levels(mush$ring_type)[match("z",levels(mush$ring_type))] <- "zone"

# spore_print_color
levels(mush$spore_print_color)[match("k",levels(mush$spore_print_color))] <- "black"
levels(mush$spore_print_color)[match("n",levels(mush$spore_print_color))] <- "brown"
levels(mush$spore_print_color)[match("b",levels(mush$spore_print_color))] <- "buff"
levels(mush$spore_print_color)[match("h",levels(mush$spore_print_color))] <- "chocalate"
levels(mush$spore_print_color)[match("r",levels(mush$spore_print_color))] <- "green"
levels(mush$spore_print_color)[match("o",levels(mush$spore_print_color))] <- "orange"
levels(mush$spore_print_color)[match("u",levels(mush$spore_print_color))] <- "purple"
levels(mush$spore_print_color)[match("w",levels(mush$spore_print_color))] <- "white"
levels(mush$spore_print_color)[match("y",levels(mush$spore_print_color))] <- "yellow"

# population
levels(mush$population)[match("a",levels(mush$population))] <- "abundant"
levels(mush$population)[match("c",levels(mush$population))] <- "clustered"
levels(mush$population)[match("n",levels(mush$population))] <- "numerous"
levels(mush$population)[match("s",levels(mush$population))] <- "scattered"
levels(mush$population)[match("v",levels(mush$population))] <- "several"
levels(mush$population)[match("y",levels(mush$population))] <- "solitary"

# habitat
levels(mush$habitat)[match("g",levels(mush$habitat))] <- "grasses"
levels(mush$habitat)[match("l",levels(mush$habitat))] <- "leaves"
levels(mush$habitat)[match("m",levels(mush$habitat))] <- "meadows"
levels(mush$habitat)[match("p",levels(mush$habitat))] <- "paths"
levels(mush$habitat)[match("u",levels(mush$habitat))] <- "urban"
levels(mush$habitat)[match("w",levels(mush$habitat))] <- "waste"
levels(mush$habitat)[match("d",levels(mush$habitat))] <- "woods"








