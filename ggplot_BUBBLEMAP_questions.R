
save(Brazil_bound_sf, file = "./100_Extra/Brazil_bound_sf.Rdata")
save(Brazil_cit_longlat, file = "./100_Extra/Brazil_cit_longlat.Rdata")
save(Brazil_cit_sf, file = "./100_Extra/Brazil_cit_sf.Rdata")



class(Brazil_cit_longlat$"2016") # numeric
is.na(Brazil_cit_longlat$"2016") # 0 missing

# Plot does not Work
gg_bra2_2016 <- ggplot() + 
	geom_sf (data = Brazil_bound_sf, aes(fill = NULL), alpha = .1,colour = "darkgrey",size = 0.3) +
	geom_point(data = Brazil_cit_longlat, aes( x = lon, y = lat, size = "2016"),
				  fill = "red", color = "grey", alpha = .2) + 
	scale_size_continuous()  +
	
	coord_sf(crs = st_crs(Brazil_bound_sf), datum = NA) + 
	# labs(x = NULL, y = NULL,
	#     title = "Cities in LAC region",
	#     subtitle = "population in 2016" ,
	#     caption  = paste("Sources: UN", "\n","Prepared on", format(Sys.Date(), format="%d %B %Y"))) +
	theme_void() 

gg_bra2_2016

# Error: Discrete value supplied to continuous scale