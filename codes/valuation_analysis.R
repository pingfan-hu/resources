library(tidyverse)
library(here)

valuation_df <- read_csv(here('yangyang', 'valuation_analysis.csv')) %>%
    mutate(
        Revenue = as.numeric(gsub("\\$|,", "", Revenue)),
        `Operating Income` = as.numeric(gsub("\\$|,", "", `Operating Income`)),
        `Free Cash Flow` = as.numeric(gsub("\\$|,", "", `Free Cash Flow`))
    ) %>% 
    pivot_longer(names_to = 'Categories',
                 values_to = 'values',
                 cols = -year)

valuation_df$Categories <- factor(valuation_df$Categories, 
                                  levels = c("Revenue",
                                             "Operating Income",
                                             "Free Cash Flow"))

valuation_plot <- valuation_df %>% 
    ggplot(aes(x = year,
               y = values / 1000,
               color = Categories)) +
    annotate('rect',
             xmin = 2023, xmax = Inf,
             ymin = -Inf, ymax = Inf,
             fill = 'grey', alpha = 0.3) +
    geom_line(linetype = 'dashed') +
    geom_line(
        data = valuation_df %>% filter(year <= 2023),
        linetype = 'solid'
    ) +
    scale_x_continuous(breaks = seq(2018, 2027, by = 1)) +
    labs(x = 'Year',
         y = 'Values (Billion USD)',
         title = 'Valuation Analysis & Forecasting') +
    theme_bw(base_family = 'Ubuntu')

valuation_plot

ggsave(
    filename = here('figures', 'valuation_plot.png'), 
    plot = valuation_plot,
    width = 6, 
    height = 6 / 1.618
)