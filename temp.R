gender %>% 
     ggplot(aes(x = year_label, 
                y = n, 
                fill = gender_single,
                group = gender_single)) +
     geom_area(position = "fill") +
     tfff_theme +
     tfff_theme_faceted +
     theme(legend.position = "none",
           axis.title = element_blank(),
           panel.grid.minor.x = element_blank(),
           panel.grid.major.x = element_blank()) 
     scale_fill_manual(values = c(tfff_dark_green,
                                  tfff_light_green,
                                  tfff_yellow))
