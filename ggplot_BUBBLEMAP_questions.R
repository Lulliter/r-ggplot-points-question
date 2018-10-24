# data available here 
https://github.com/Lulliter/r-ggplot-points-question


# Plot does not Work
gg_bra2_2016 <- ggplot() + 
	geom_sf (data = Brazil_bound_sf, aes(fill = NULL), alpha = .1,colour = "darkgrey",size = 0.3) +
	geom_point(data = Brazil_cit_longlat, aes( x = lon, y = lat, size = "2016"),
				  fill = "red", color = "grey", alpha = .2) + 
	scale_size_continuous()  +
	
	coord_sf(crs = st_crs(Brazil_bound_sf), datum = NA) + 
	theme_void() 

gg_bra2_2016

# Error: Discrete value supplied to continuous scale