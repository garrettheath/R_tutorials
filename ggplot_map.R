# Garrett Heath
# tutorial to work with maps

#reference: https://www.datanovia.com/en/blog/how-to-create-a-map-using-ggplot2/
#install and load packages
install.packages(c("sf", "ggplot2", "leaflet", "dplyr", "tmap", "tmaptools", "maps"))
library(sf)
library(ggplot2)
library(leaflet)
library(dplyr)
library(tmap)
library(tmaptools)
require(maps)
require(viridis)
theme_set(
  theme_void()
)

#retrieve the world map and plot it
world_map <- map_data("world")
ggplot(world_map, aes(x = long, y = lat, group = group)) + geom_polygon(fill="lightgray", colour = "white")

#retrieve states map and plot it
states_map <- map_data("state")
> ggplot(states_map, aes(x = long, y = lat, group = group)) + geom_polygon(fill="lightgray", colour = "white")