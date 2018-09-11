

ethnicity_plot <- function(applicant_receipient) {     
     ethnicity %>% 
          mutate(group = str_wrap(group, 30)) %>% 
          mutate(year = year - 2000) %>% 
          complete(group, status_calculated, year, fill = list(n = 0)) %>% 
          filter(status_calculated == applicant_receipient) %>% 
          ggplot(aes(x = year, 
                     y = n, 
                     fill = group)) +
          geom_area() +
          facet_wrap(~group,
                     ncol = 7) +
          tfff_theme +
          # labs(title = applicant_receipient) +
          theme(legend.position = "none",
                axis.title = element_blank(),
                panel.grid.minor.x = element_blank(),
                panel.grid.minor.y = element_blank()) +
          scale_fill_manual(values = rev(c(tfff_dark_green,
                                           tfff_light_green,
                                           tfff_yellow,
                                           tfff_orange,
                                           tfff_brown,
                                           tfff_blue,
                                           tfff_red))) 
}
