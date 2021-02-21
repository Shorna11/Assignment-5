library(tidyverse)
library(ggplot2)
library(viridis)
library(FSAdata)

FSAdata::SiscowetMI2004

head(SiscowetMI2004)

SiscowetMI2004 %>%
  ggplot(aes(x=len,
             y=wgt)) +
  geom_point()


SiscowetMI2004 %>%
  ggplot(aes(x=len,
             y=wgt,
             color=locID)) +
  geom_point() +
  xlab("Total length (mm)") +
  ylab("Weight (g)") +
  labs(title = "Lengths and weights for male and female Siscowet Lake Trout captured \n at four locations in Michigan waters of Lake Superior",
       color= "Locations") +
  scale_color_viridis_d() +
  theme_minimal() +
  theme(plot.title.position = "panel",
        axis.title.y = element_text(angle = 90, vjust = .8,size=12),
        axis.text = element_text(size=12),
        legend.position = c(.85, .85)) +
  geom_smooth(method = "lm", se = FALSE)

