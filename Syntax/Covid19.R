# Covid19 Data

# Access to the matrix
GDP
pop
pop.density

m.conf.case[c("United Kingdom"), c("2021-10-01")]
m.conf.case[c("Korea, South"), c("2021-10-01")]
m.conf.case[c("China"), c("2021-10-01")]

row.names(m.conf.case)
colnames(m.conf.case)

korea_oct = m.conf.case[c("Korea, South"), c("2021-10-01")]
korea_sep = m.conf.case[c("Korea, South"), c("2021-09-01")]
korea_oct - korea_sep

japan_oct = m.conf.case[c("Japan"), c("2021-10-01")]
japan_sep = m.conf.case[c("Japan"), c("2021-09-01")]
japan_oct - japan_sep


# barplot
barplot(GDP)
barplot(sort(GDP, decreasing=T))

gdp_per_pop = GDP / pop
barplot(sort(gdp_per_pop, decreasing=T))

country.name
country.name <- unlist(df.conf.case[c(1)])

barplot(sort(m.conf.case[,2], decreasing=T))
barplot(sort(m.conf.case[,4], decreasing=T))
barplot(sort(m.conf.case[,13], decreasing=T))


# matplot
matplot(m.conf.case)
matplot(t(m.conf.case))
matplot(t(m.conf.case), type='b', pch=15:20)
matplot(t(m.conf.case), type='b', pch=15:20, col=c(1:6,8), ylab="Confirmed cases")
legend("topright", inset=0.01, legend=country.name, pch=15:20, col=c(1:6,8),horiz=F)


data = m.death.case / m.conf.case
matplot(t(data), type='b', pch=15:20, col=c(1:6,8), ylab="Death cases")
legend("topright", inset=0.01, legend=country.name, pch=15:20, col=c(1:6,8), horiz=F)

colnames(data)
data[,21]
plot(gdp_per_pop, data[,21], ylab="Death rate by GDP per pop")
text(gdp_per_pop, data[,21], row.names(data), cex=1, pos=4, col="blue")

plot(pop.density, data[,21], ylab="Death rate by population density")
text(pop.density, data[,21], row.names(data), cex=1, pos=3, col="blue")     

m1 <- m.conf.case[,-1]
m2 <- m.conf.case[,-21]
m3 <- m1-m2
View(m3)

matplot(t(m3), type='b', pch=0:7, col=c(1:7), ylab="Confirmed cases")
legend("topleft", inset=0.01, legend=country.name, pch=0:7, col=c(1:7), horiz=F)
