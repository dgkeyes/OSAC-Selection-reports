# Functions ---------------------------------------------------------------

int_breaks <- function(x, n = 5) pretty(x, n)[pretty(x, n) %% 1 == 0] 

# Colors ------------------------------------------------------------------

tfff_dark_green <- "#265142"
tfff_light_green <- "#B5CC8E"
tfff_orange <- "#e65100"
tfff_yellow <- "#FBC02D"
tfff_blue <- "#283593"
tfff_red <- "#B71C1C"
tfff_brown <- "#51261C"
tfff_dark_gray <- "#545454"
tfff_medium_gray <- "#a8a8a8"
tfff_light_gray <- "#eeeeee"


# Themes ------------------------------------------------------------------

library(extrafont)

tfff_theme <- theme_minimal(base_family = "Calibri") 

tfff_theme_faceted <- theme(legend.position = "right",
                            strip.text = element_text(hjust = 0.5),
                            plot.title = element_text(face = "bold",
                                                      size = 11,
                                                      hjust = 0.5)) 




# Facetted area chart -----------------------------------------------------

facetted_area_plot <- function(.data, xvar, yvar, facetvar, cols) { 
     
     xvar <- enquo(xvar)
     yvar <- enquo(yvar)
     facetvar <- enquo(facetvar)
     
     .data %>% 
          ggplot(aes(x = !!(xvar), 
                     y = !!(yvar), 
                     fill = !!(facetvar))) +
          geom_area() +
          facet_grid(cols = vars(!!(facetvar))) +
          tfff_theme +
          tfff_theme_faceted +
          theme(legend.position = "none",
                axis.title = element_blank(),
                panel.grid.minor.x = element_blank(),
                panel.grid.minor.y = element_blank(),
                # axis.text.x = element_blank(),
                panel.grid.major.x = element_blank()) 
}
