library(extrafont)

tfff_theme <- theme_minimal(base_family = "Calibri",
                            base_size = 13)

tfff_theme_faceted <- theme(legend.position = "right",
                            strip.text = element_text(face = "bold",
                                                      size = 15)) 