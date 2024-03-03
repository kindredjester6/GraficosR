library(ggplot2)
library(dplyr)
library(crayon)
df <- read.csv("jobs_in_data.csv")


#x <- c(c(c(12),5), c(6,9), c(7,4))
#salary <- filter(csv_data, job_category )

ejeX <- aes(x=job_category, fill=work_setting)

ggplot(df, ejeX ) + 
  geom_bar() +
  theme(axis.text.x = element_text
        (size = 9, 
          color = "blue",
          face = "italic", 
          angle = 320,
          vjust = 0.9,
          hjust = -0.009)) + 
  labs(x = "Job Category",
       y = "Count",
       title = "Data Science: Count by job category",
       fill = "work setting"
       ) +
  theme(legend.text = element_text
        (
          color = "red",
          face = "bold"),
        axis.title = element_text(size = 12),
        )

