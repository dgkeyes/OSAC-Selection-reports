# Bring all related plots together using patchwork

library(patchwork)

(ethnicity_plot_applicants + ethnicity_plot_applicants) +
     ethnicity_plot_applicants
     plot_layout()

ggsave("plots/assembled/gender-ethnicity.pdf",
       height = 6,
       width = 12,
       device = cairo_pdf)

