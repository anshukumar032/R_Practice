
#Advance Data Visualization
library("ggplot2")

mpg
str(mpg)


ggplot(mpg, aes(x=displ, y= hwy))+geom_point()

ggplot(mpg, aes(displ,city,colours=class))+`geom_point()`

ggplot(mpg, aes(displ,cty,colour=class))+geom_point()


ggplot(mpg , aes(displ ,hwy))+geom_point()+facet_wrap()

ggplot(mpg , aes(displ ,hwy))+geom_point()+facet_wrap("class")

ggplot(mpg , aes(displ ,hwy))+geom_smooth()+facet_wrap("class")

ggplot(mpg , aes(displ ,hwy))+geom_boxplot()+facet_wrap("class")


ggplot(mpg , aes(displ ,hwy))+geom_smooth(span=0.2)



ggplot(mpg, aes(drv,hwy)) + geom_point()

ggplot(mpg, aes(drv,hwy)) + geom_jitter()

ggplot(mpg, aes(drv,hwy)) + geom_boxplot()

ggplot(mpg, aes(drv,hwy)) + geom_violin()

ggplot(mpg, aes(drv)) + geom_histogram()


ggplot(mpg, aes(hwy))+geom_histogram()

ggplot(mpg, aes(hwy))+geom_freqpoly()

ggplot(mpg, aes(hwy))+geom_freqpoly(binwidth = 2.5)

ggplot(mpg, aes(hwy))+geom_freqpoly(binwidth = 1)

ggplot(mpg, aes(displ ,colour = drv))+ geom_freqpoly(binwidth=0.5)

ggplot(mpg, aes(displ , fill=drv))+geom_histogram(binwidth=0.5)+facet_wrap("drv", ncol = 1)

ggplot(mpg, aes(manufacture))+geom_bar()

ggplot(mpg, aes(manufacturer))+geom_bar()

#Creating dataset

drugs <-data.frame(drug=c("a","b","c"),effects=c(4.2,9.7,6.1))
drugs

ggplot(drugs, aes(drugs,effects))+geom_bar(stat="identity")

#Working on the Economics dataset

economics

ggplot(economics, aes(date, unemploy/pop))+ geom_line()

ggplot(economics, aes(date, uempmed ))+ geom_line()

ggplot(economics , aes(unemploy/pop, uempmed))+geom_path()+geom_point()

year <-function(x) as.POSIXlt(x)$year +1900

ggplot(economics , aes(unemploy/pop, uempmed))+geom_path(colour="grey50")+ 
  geom_point(aes(colour=year(date)))

df = data.frame(x=c(3,1,5), y=c)
df

# this possen later by see the ss

install.packages("ggplot")

library("ggplot")
ggplot(faithful ,aes(eruptions ,waiting))+geom_contour(aes(z=density, colour=..level))

2+2


require("ggplot")

library("ggplot")


ggplot2(faithful, aes(eruptions, waiting))+geom_contour(aes(z=density, colour =..level..))

faithful

ggplot(faithful , aes(eruptions, waiting))+geom_raster(aes())                                                         

#cutting the value form the table
small<-faithful[seq(1, nrow(faithful), by =10),]
small

ggplot(small, aes(eruptions, waiting))+geom_point(aes(size=desnsity), 
                                                  alpha=1/3)+scale_size_area()

library("ggplot2")
ggplot(faithfuld,aes(eruptions, waiting))+geom_contour(aes(z=density, colour=..level..))

ggplot(faithfuld,aes(eruptions, waiting))+geom_raster(aes(fill=density))

small<-faithfuld[seq(1,nrow(faithfuld),  by= 10),]
small


ggplot(small,aes(eruptions,witing))+geom_point(ace(size=density), alpha =1/3)+scale_size_area()

y<-c(18,11,16)
y

#Creating the datafarme from the outside 
df<-data.frame(x=1:3, y=y,se=c(1.2,0.5,1.0))
df

base<-ggplot(df, aes(x,y,ymin=y-se,ymax = y+es))

base+geom_crossbar()
base+geom_crossbar()
base+geom_smooth(stat ="identity")

#Weighted Data

midwest

str(midwest)

ggplot(midwest,aes(percwhite,percbelowpoverty))+geom_point()

ggplot(midwest,aes(percwhite,percbelowpoverty))+geom_point(aes(size=poptotal/1e6))+
  scale_size_area("Population\n (millions)",breaks =c(0.5,1,2,4))


ggplot(midwest,aes(perwhite,percbelowpoverty))+geom_point()+geom_smooth(method = lm,size=1)

ggplot(mi_counties, aes(long,lat))+geom_polygon(aes(group=group))+coord_quickmap()

library("ggplot2")

map_data()
yes
mno
2+2

mi_counties<-map_data("county","michigan")

mi_counties

mi_counties
ggplot(mi_counties,aes(long,lat))+geom_polygon(aes(group=group))+coord_quickmap()

ggplot(mi_counties, aes(long,lat))+geom_polygon(aes(group=group),fill = NA, 
                                      colour ="grey50")+coord_quickmap()

mi_cities<-maps::us.cities
us.cities
mi_cities

ggplot(mi_cities,aes(long,lat))+geom_point(aes(size=pop))+scale_size_area()+coord_quickmap()

library("ggplot2")

diamonds

ggplot(diamonds, aes(depth))+ geom_histogram()


ggplot(diamonds, aes(depth)+ geom_freqpoly(aes(fill=cut), bandwidth = 0.1,  position = "fill"
            , na.rm="TRUE")+ xlim(58,68)+theme(legend.position ="none"))
       



norm <- ggplot(df, aes(x,y))+xlab(NULL)+ylab(NULL)

norm<-ggplot(df, aes(x,y))+xlab(NULL)+ylab(NULL)
norm
norm+geom_point()
norm+geom_point(shape=1)
norm+geom_point(shape=".")

diamonds
ggplot(diamonds, aes(colour))+geom_bar()

ggplot(diamonds, aes(color)) + geom_bar()
ggplot(diamonds, aes(colour, price))+ geom_bar(stat = "summary_bin", fun.y=mean)


ggplot(diamonds, aes(table, depth))+ geom_bin2d(binwidth=1, na.rm = TRUE)
+ xlim(50,70)+ylim(50,70)

y<- c(18,11,16)
y
df<-data.frame(var1 = c(10,25,8),var2=c("beer","wine","cheese"),var3=c(TRUE,TRUE,FALSE),
               row.names = c("billy","bob","thronton"))
df
write.csv(df,file = "export.csv")

install.packages("xlsx")
library("xlsx")
require("xlsx")
library(xlsx)

require(xlsx)

newiris<-iris

#Removing any colums from the dataset

newiris$Species<-NULL
newiris
(kc<-kmeans(newiris,3))
table(iris$Species, kc$cluster)

plot(newiris[c("Sepal.Length","Sepal.Width")], col=ks$culster)

plot(newiris[c("sepal.Length","Sepal.Wedth"), col=kc$cluster])

library("leaflet")
quakes

#shorting some surtain values

data = quakes[1:20]

leaflet((data= quakes[1:20,]) %>% addTiles() %>% 
          addMarkers(~long, ~lat, popup= ~as.character(mag), label = ~as.character(mag)))



install.packages("shiny")

library(shiny)
library(leaflet)
r_colors <- rgb(t(col2rgb(colors()) / 255))
                



