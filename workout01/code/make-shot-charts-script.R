#
#title: "make-shot-charts-script.R"
#description:
#input:
#output: github_document
#

library(ggplot2)
library(readr)
library(jpeg)
library(grid)

###4.1

Court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
 #Curry Shot Chart
Curry_shot_chart <- ggplot(data = Curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') + theme_minimal()

ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/stephen-curry-shot-chart.pdf", plot = Curry_shot_chart, height = 5, width = 6.5, device = "pdf")
 #Iguodala Shot Chart
Iguodala_shot_chart <- ggplot(data = Iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal()

ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/andre-iguodala-shot-chart.pdf", plot = Iguodala_shot_chart, height = 5, width = 6.5, device = "pdf")
 #Green Shot Chart
Green_shot_chart <- ggplot(data = Green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') + theme_minimal()

ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/draymond-green-shot-chart.pdf", plot = Green_shot_chart, height = 5, width = 6.5, device = "pdf")
 #Thompson Shot Chart
Thompson_shot_chart <- ggplot(data = Thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()

ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/klay-thompson-shot-chart.pdf", plot = Thompson_shot_chart, height = 5, width = 6.5, device = "pdf")
 #Durant Shot Chart
Durant_shot_chart <- ggplot(data = Durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()

ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/kevin-durant-shot-chart.pdf", plot = Durant_shot_chart, height = 5, width = 6.5, device = "pdf")

###4.2
shots_data

gsw_shot_charts <- ggplot(data = shots_data) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: All Players (2016 season)') + theme_minimal() + facet_wrap(~ name)

gsw_shot_charts

ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/gsw-shot-charts.pdf", plot = gsw_shot_charts, height = 7, width = 8, device = "pdf")
ggsave("/Users/thomashoversen-juckett/Desktop/workout01/images/gsw-shot-charts.png", plot = gsw_shot_charts, height = 7, width = 8, device = "png")








