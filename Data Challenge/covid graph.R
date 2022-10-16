#code using covid19.analytics package to create graph of cumulative case worldwide in and US

#install.packages("covid19.analytics")
library(covid19.analytics)

#Data
ag <- covid19.data(case = 'aggregated')
tsc <- covid19.data(case = 'ts-confirmed')
ts.all <- covid19.data(case = "ts-all")

#Summary
report.summary(Nentries = 10, graphical.output = T)

#totals per location
tots.per.location(tsc,geo.loc = 'US')

#totals
totals.plt(ts.all)
totals.plt(ts.all, c('US')) 


