## ----eval=FALSE---------------------------------------------------------------
# install.packages("devtools")
# devtools::install_github("ManuelSpinola/paisaje")

## -----------------------------------------------------------------------------
library(paisaje)
library(ggplot2)
library(sf)
library(h3jsr)

## -----------------------------------------------------------------------------
nc = st_read(system.file("shape/nc.shp", package="sf"))

## -----------------------------------------------------------------------------
h3_grid_nc <- get_h3_grid(nc, resolution = 4)

## -----------------------------------------------------------------------------
ggplot() +
  theme_minimal() +
  geom_sf(data = nc, color = "blue", linewidth = 0.5) +
  geom_sf(data = h3_grid_nc, alpha = 0.4, color = "coral", linewidth = 0.5)

