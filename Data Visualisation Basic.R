## Data Visualisation=====================================================================
# Pie Chart
# Syntax.......
# pie(x, labels, radius, main, col, clockwise)
## Following is the description of the parameters used:
#  x :  is a vector containing the numeric values used in the pie chart.
#  labels:  is used to give description to the slices.
#  radius:  indicates the radius of the circle of the pie chart.(value between -1 and +1).
#  main:  indicates the title of the chart.
#  col:  indicates the color palette.
#  clockwise:  is a logical value indicating if the slices are drawn clockwise or anti
# clockwise.
?pie
x <- c(21, 62, 10, 53)
x
labels <- c("London", "New York", "Singapore", "Mumbai")
labels

pie(x,labels)

pie(x, labels, main="City pie chart", col=rainbow(length(x))) # main - title ke liye
?pie
piepercent<- round(100*x/sum(x), 1)

pie(x, labels=piepercent, main="City pie chart",col = rainbow(length(x)))

legend("topleft", c("London","New York","Singapore","Mumbai"), cex=0.5,
       fill=rainbow(length(x)))
legend("topleft", labels, cex=0.5,
       fill=rainbow(length(x)))
## 3D Pie Charts--------------------------------------------------------------------
# install.packages("plotrix")
library(plotrix)     
x <- c(21, 62, 10,53)
lbl <- c("London","New York","Singapore","Mumbai")
pie3D(x,labels=lbl,explode=0.1,
      main="Pie Chart of Countries")
?pie3D

## Bar Charts------------------------------------------------------------------------

# Syntax.....
# barplot(H,xlab,ylab,main, names.arg,col)

# Following is the description of the parameters used:
#  H is a vector or matrix containing numeric values used in bar chart.
#  xlab is the label for x axis.
#  ylab is the label for y axis.
#  main is the title of the bar chart.
#  names.arg is a vector of names appearing under each bar.
#  col is used to give colors to the bars in the graph.

H <- c(7,12,28,3,41)
barplot(H)
M <- c("Mar","Apr","May","Jun","Jul")
barplot(H, names.arg=M,xlab="Month",ylab="Revenue",col=c("green","red", "blue", "brown","yellow"),
        main="Revenue chart", sub = "R-programming",  border="brown")
?barplot

## Group Bar Chart and Stacked Bar Chart

colors <- c("green","red","yellow")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow=3,ncol=5,byrow=T)
barplot(Values,main="Total
Revenue",names.arg=months,xlab="Month",ylab="Revenue",col=colors)
legend("topleft", regions, cex=0.6, fill=colors)
length(Values)
Values
## Boxplots

# Syntax.....
# boxplot(x,data,notch,varwidth,names,main)
# Following is the description of the parameters used:
#  x is a vector or a formula.
#  data is the data frame.
#  notch is a logical value. Set as TRUE to draw a notch.
#  varwidth is a logical value. Set as true to draw width of the box proportionate to
# the sample size.
#  names are the group labels which will be printed under each boxplot.
#  main is used to give a title to the graph.
View(mtcars)
?mtcars
input <- mtcars[,c('mpg','cyl')]
class(input)
head(input,12)
tail(input)
boxplot(mpg ~ cyl, data=mtcars,
        xlab="Number of Cylinders",
        ylab="Miles Per Gallon",
        col=c("green","yellow","purple"),
        main="Mileage Data"
        )
boxplot(mtcars$mpg)
boxplot(mtcars$wt)
hist(mtcars$mpg)

tapply(mtcars$mpg, mtcars$cyl, summary)
E <- tapply(mtcars$mpg, mtcars$cyl, mean)
barplot(E)
library(vcd)
Arthritis


?mode
## Boxplot with Notch.......

boxplot(mpg ~ cyl, data=mtcars,
        xlab="Number of Cylinders",
        ylab="Miles Per Gallon",
        main="Mileage Data",
        notch=TRUE,
        varwidth=TRUE,
        col=c("green","yellow","purple"),
        names=c("High","Medium","Low"))


## Histograms..............

# SYNTAX...........
# hist(v,main,xlab,xlim,ylim,breaks,col,border)

# Following is the description of the parameters used:
#    v is a vector containing numeric values used in histogram.
#  main indicates title of the chart.
#  col is used to set color of the bars.
#  border is used to set border color of each bar.
#  xlab is used to give description of x-axis.
#  xlim is used to specify the range of values on the x-axis.
#  ylim is used to specify the range of values on the y-axis.
#  breaks is used to mention the width of each bar.


v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab="Weight",col="yellow",border="blue", breaks = 4)
?hist
# Range of X and Y values
hist(mtcars$mpg)
boxplot(mtcars$mpg)
v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab="Weight",col="green",border="red",xlim = c(0,50), ylim = c(0,5),
     breaks = 3 )


## Line Graphs----------------------------------------------------


# SYNTAX
# plot(v,type,col,xlab,ylab)

# Following is the description of the parameters used:
#    v is a vector containing the numeric values.
#  type takes the value "p" to draw only the points, "i" to draw only the lines and "o"
# to draw both points and lines.
#  xlab is the label for x axis.
#  ylab is the label for y axis.
#  main is the Title of the chart.
#  col is used to give colors to both the points and lines.

v <- c(7,12,28,3,41)
plot(v)
plot(v,type="o",col="red",xlab="Month",ylab="Rain fall",main="Rain fall chart", lty = 8, lwd=1.5)
plot(mtcars$mpg, type = "b")

v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)
u <- c(5,9,3,2,10,7)
plot(v,type="b",col="red", xlab="Month",ylab="Rain fall",
     main="Rain fall chart")
?plot
lines(u, type="o", col="blue")
lines(t, type="o", col="green")
# Scatter Plot-----------------------------

# SYNTAX......................
# plot(x, y, main, xlab, ylab, xlim, ylim, axes)

# Following is the description of the parameters used:
#    x is the data set whose values are the horizontal coordinates.
#  y is the data set whose values are the vertical coordinates.
#  main is the tile of the graph.
#  xlab is the label in the horizontal axis.
#  ylab is the label in the vertical axis.
#  xlim is the limits of the values of x used for plotting.
#  ylim is the limits of the values of y used for plotting.
#  axes indicates whether both axes should be drawn on the plot.

md <- mtcars[,c('wt','mpg')]
print(head(md))
plot(x=md$wt,y=md$mpg,
     xlab="Weight",
     ylab="Milage",
     xlim=c(2.5,5),
     ylim=c(15,30),
     main="Weight vs Milage", pch = 25
)
plot(mtcars$wt, mtcars$mpg)
plot(mtcars$hp, mtcars$wt)
# Scatterplot Matrices--------

# Syntax-------------

# pairs(formula, data)

# Following is the description of the parameters used:
#    formula represents the series of variables used in pairs.
#  data represents the data set from which the variables will be taken.

pairs(~wt+mpg+disp+cyl,data=mtcars,
      main="Scatterplot Matrix")


#==========================
# Graphical Parameters
#==========================
# You can customize many features of your graphs (fonts, colors, axes, titles) 
# through graphic options.
# 
# One way is to specify these options in through the par( ) function. If you set 
# parameter values here, the changes will be in effect for the rest of the session 
# or until you change them again. The format is par(optionname=value, optionname=value, ...)


# Set a graphical parameter using par()


?par
par()              # view current settings
opar <- par()      # make a copy of current settings
par(col.lab="red") # red x and y labels
hist(mtcars$mpg)    # create a plot with these new settings
boxplot(md$mpg, xlab = "Mileage", ylab = "US/gallon")

par(opar)          # restore original settings

# A second way to specify graphical parameters is by providing the 
# optionname=value pairs directly to a high level plotting function. 
# In this case, the options are only in effect for that specific graph.

# Set a graphical parameter within the plotting function
hist(mtcars$mpg, col.lab="brown",cex.axis = 1.5, cex.lab = 1.5, cex.main = 1.5)#ex-   axixs scale size 

# Text and Symbol Size
# The following options can be used to control text and symbol size in graphs.
# 
# option	description
# cex	number indicating the amount by which plotting text and symbols should be scaled relative to the default. 1=default, 1.5 is 50% larger, 0.5 is 50% smaller, etc.
# cex.axis	magnification of axis annotation relative to cex
# cex.lab	magnification of x and y labels relative to cex
# cex.main	magnification of titles relative to cex
# cex.sub	magnification of subtitles relative to cex
?pch
# Plotting Symbols
# Use the pch= option to specify symbols to use when plotting points.(see fig 'point_PCH') 
# For symbols 21 through 25, specify border color (col=) and fill color (bg=).

# Lines
# You can change lines using the following options. This is particularly useful 
# for reference lines, axes, and fit lines.(see fig 'lines_type')
# 
# option	description
# lty	line type. see the chart below.
# lwd	line width relative to the default (default=1). 2 is twice as wide.
??lty
# Colors
# Options that specify colors include the following.(see fig 'colorchart')
# 
# option	description
# col	Default plotting color. Some functions (e.g. lines) accept a vector of values that are recycled.
# col.axis	color for axis annotation
# col.lab	color for x and y labels
# col.main	color for titles
# col.sub	color for subtitles
# fg	plot foreground color (axes, boxes - also sets col= to same)
# bg	plot background color

# You can specify colors in R by index, name, hexadecimal, or RGB.
# For example col=1, col="white", and col="#FFFFFF" are equivalent.

# You can also create a vector of n contiguous colors using the functions 
# rainbow(n), heat.colors(n), terrain.colors(n), topo.colors(n), and cm.colors(n).
# 
# colors() returns all available color names.

# Fonts
# You can easily set font size and style, but font family is a bit more complicated.
# 
# option	description
# font	Integer specifying font to use for text.
# 1=plain, 2=bold, 3=italic, 4=bold italic, 5=symbol
# font.axis	font for axis annotation
# font.lab	font for x and y labels
# font.main	font for titles
# font.sub	font for subtitles
# ps	font point size (roughly 1/72 inch)
# text size=ps*cex
# family	font family for drawing text. Standard values are "serif", "sans", 
# "mono", "symbol". Mapping is device dependent.

# In windows, mono is mapped to "TT Courier New", serif is mapped to"TT Times New 
# Roman", sans is mapped to "TT Arial", mono is mapped to "TT Courier New", and 
# symbol is mapped to "TT Symbol" (TT=True Type). You can add your own mappings.

# Type family examples - creating new mappings
plot(1:10,1:10,type="n")

 windowsFonts(
   A=windowsFont("Arial Black"),
   B=windowsFont("Bookman Old Style"),
  C=windowsFont("Comic Sans MS"),
  D=windowsFont("Symbol")
)
text(3,3,"Cypher Analytica Default")
text(4,4,family="A","Cypher Analytica from Arial Black")
text(5,5,family="B","Cypher Analytica from Bookman Old Style")
text(6,6,family="C","Cypher Analytica from Comic Sans MS")
text(7,7,family="D", "Cypher Analytica from Symbol")




# Margins and Graph Size
# You can control the margin size using the following parameters.
# 
# option	description
# mar	numerical vector indicating margin size c(bottom, left, top, right) in 
# lines. default = c(5, 4, 4, 2) + 0.1
# mai	numerical vector indicating margin size c(bottom, left, top, right) in inches
# pin	plot dimensions (width, height) in inches


#===============
# Axes and Text
#================
# Many high level plotting functions (plot, hist, boxplot, etc.) allow you to 
# include axis and text options (as well as other graphical parameters). For example


# Specify axis options within plot()

# plot(x, y, main="title", sub="subtitle",
#      xlab="X-axis label", ylab="y-axix label",
#      xlim=c(xmin, xmax), ylim=c(ymin, ymax))


# For finer control or for modularization, you can use the functions 
# described below.
# 
# Titles
# Use the title( ) function to add labels to a plot.

# title(main="main title", sub="sub-title",
#       xlab="x-axis label", ylab="y-axis label")

# Many other graphical parameters (such as text size, font, rotation, and 
# color) can also be specified in the title( ) function.

# Add a red title and a blue subtitle. Make x and y
# labels 25% smaller than the default and green.

# title(main="My Title", col.main="red",
#       sub="My Sub-title", col.sub="blue",
#       xlab="My X label", ylab="My Y label",
#       col.lab="green", cex.lab=0.75)

# Text Annotations
# Text can be added to graphs using the text( ) and mtext( ) functions. 
# text( ) places text within the graph while mtext( ) places text in one 
# of the four margins.

# text(location, "text to place", pos, ...)
# mtext("text to place", side, line=n, ...)

# Common options are described below.
# 
# option	description
# location	location can be an x,y coordinate. Alternatively, the text can 
# be placed interactively via mouse by specifying location as locator(1).
# pos	position relative to location. 1=below, 2=left, 3=above, 4=right. 
# If you specify pos, you can specify offset= in percent of character width.
# side	which margin to place text. 1=bottom, 2=left, 3=top, 4=right. 
# you can specify line= to indicate the line in the margin starting with 
# 0 and moving out. you can also specify adj=0 for left/bottom alignment 
# or adj=1 for top/right alignment.

# Labeling points
# You can use the text( ) function (see above) for labeling point as well as for 
# adding other text annotations. Specify location as a set of x, y coordinates 
# and specify the text to place as a vector of labels. The x, y, and label vectors 
# should all be the same length.
View(mtcars)
# Example of labeling points
attach(mtcars)
plot(wt, mpg, main="Milage vs. Car Weight",
     xlab="Weight", ylab="Mileage", pch=1, col="blue")
text(wt, mpg, row.names(mtcars), cex=0.6, pos=4, col="red")

# Math Annotations
# You can add mathematically formulas to a graph using TEX-like rules. 
# See help(plotmath) for details and examples.
# 
# Axes
# You can create custom axes using the axis( ) function.

# axis(side, at=, labels=, pos=, lty=, col=, las=, tck=, ...)

# where
# 
# option	description
# side	an integer indicating the side of the graph to draw the axis (1=bottom, 
# 2=left, 3=top, 4=right)
# at	a numeric vector indicating where tic marks should be drawn
# labels	a character vector of labels to be placed at the tickmarks
# (if NULL, the at values will be used)
# pos	the coordinate at which the axis line is to be drawn.
# (i.e., the value on the other axis where it crosses)
# lty	line type
# col	the line and tick mark color
# las	labels are parallel (=0) or perpendicular(=2) to axis
# tck	length of tick mark as fraction of plotting region (negative number is 
# outside graph, positive number is inside, 0 suppresses ticks, 1 creates 
# gridlines) default is -0.01
# 
# (...)	other graphical parameters

# If you are going to create a custom axis, you should suppress the axis 
# automatically generated by your high level plotting function. The option 
# axes=FALSE suppresses both x and y axes. xaxt="n" and yaxt="n" suppress 
# the x and y axis respectively. Here is a (somewhat overblown) example.

# A Silly Axis Example

# specify the data
x <- c(1:10); y <- x; z <- 10/x

# create extra margin room on the right for an axis
par(mar=c(5, 4, 4, 8) + 0.1)

# plot x vs. y
plot(x, y,type="b", pch=21, col="red",
     yaxt="n", lty=3, xlab="", ylab="")

# add x vs. 1/x
lines(x, z, type="b", pch=22, col="blue", lty=2)

# draw an axis on the left
axis(2, at=x,labels=x, col.axis="red", las=2)

# draw an axis on the right, with smaller text and ticks
axis(4, at=z,labels=round(z,digits=2),
     col.axis="blue", las=2, cex.axis=0.7, tck=-.05)

# add a title for the right axis
mtext("y=1/x", side=4, line=3, cex.lab=1,las=2, col="blue")

# add a main title and bottom and left axis labels
title("An Example of Creative Axes", xlab="X values",
      ylab="Y=X")



# Minor Tick Marks
# The minor.tick( ) function in the Hmisc package adds minor tick marks.
# 
# # Add minor tick marks
# library(Hmisc)
# minor.tick(nx=n, ny=n, tick.ratio=n)
# 
# nx is the number of minor tick marks to place between x-axis major tick marks.
# ny does the same for the y-axis. tick.ratio is the size of the minor tick mark 
# relative to the major tick mark. The length of the major tick mark is retrieved 
# from par("tck").



# Reference Lines
# Add reference lines to a graph using the abline( ) function.
# 
# abline(h=yvalues, v=xvalues)
# 
# Other graphical parameters (such as line type, color, and width) can also be 
# specified in the abline( ) function.



# add solid horizontal lines at y=1,5,7
abline(h=c(1,5,7))
# add dashed blue verical lines at x = 1,3,5,7,9
abline(v=seq(1,10,2),lty=2,col="blue")

abline(c(0,0), c(10,10))

# Legend
# Add a legend with the legend() function.
# 
# legend(location, title, legend, ...)
# 
# Common options are described below.
# 
# option	description
# location	There are several ways to indicate the location of the legend. 
# You can give an x,y coordinate for the upper left hand corner of the legend. 
# You can use locator(1), in which case you use the mouse to indicate the location 
# of the legend. You can also use the keywords "bottom", "bottomleft", "left", 
# "topleft", "top", "topright", "right", "bottomright", or "center". If you use a 
# keyword, you may want to use inset= to specify an amount to move the legend 
# into the graph (as fraction of plot region).
# title	A character string for the legend title (optional)
# legend	A character vector with the labels
# ...	Other options. If the legend labels colored lines, specify col= and a 
# vector of colors. If the legend labels point symbols, specify pch= and a 
# vector of point symbols. If the legend labels line width or line style, use 
# lwd= or lty= and a vector of widths or styles. To create colored boxes for 
# the legend (common in bar, box, or pie charts), use fill= and a vector of colors.
# Other common legend options include bty for box type, bg for background color, 
# cex for size, and text.col for text color. Setting horiz=TRUE sets the legend 
# horizontally rather than vertically.



# Legend Example
attach(mtcars)
boxplot(mpg~cyl, main="Milage by Car Weight",
        xlab="Number of Cylinder", ylab = "Mileage",
        col=terrain.colors(3))
legend("topright", inset=.07, title="Number of Cylinders",
       c("4","6","8"), fill=terrain.colors(3), horiz=T)
legend("topright",title="Number of Cylinders",
       c("4","6","8"), fill=terrain.colors(3), horiz=TRUE)
?legend
#-------------------
## Combining Plots
# ------------------
# R makes it easy to combine multiple plots into one overall graph, using either 
# the par( ) or layout( ) function.
# 
# With the par( ) function, you can include the option mfrow means number of mutiple
# figures row wise,  mfrow=c(nrows, ncols) 
# to create a matrix of nrows x ncols plots that are filled in by row. 
# mfcol means number of mutiple figure coloumn wise, mfcol=c(nrows, ncols) fills in the matrix by columns.

# Four figures arranged in 2 rows and 2 columns
attach(mtcars)
P1 <- par(mfrow=c(2,2))
plot(wt,mpg, main="Scatterplot of wt vs. mpg")
barplot(table(mtcars$cyl), main = "Boxplot of number of cylinder")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")
par(P1)
par()
# Three figures arranged in 3 rows and 1 column
attach(mtcars)
par(mfrow=c(1,3))
hist(wt)
hist(mpg)
hist(disp)
par(mfrow = c(1,1))

# The layout( ) function has the form layout(mat) where
# mat is a matrix object specifying the location of the N figures to plot.

# One figure in row 1 and two figures in row 2
attach(mtcars)
layout(matrix(c(1,1,2,3), 2, 2, byrow = F))
hist(wt)
hist(mpg)
hist(disp)

# Optionally, you can include widths= and heights= options in the layout( ) 
# function to control the size of each figure more precisely. These options 
# have the form
# widths= a vector of values for the widths of columns
# heights= a vector of values for the heights of rows.
# 
# Relative widths are specified with numeric values. Absolute widths 
# (in centimetres) are specified with the lcm() function.

# One figure in row 1 and two figures in row 2
# row 1 is 1/3 the height of row 2
# column 2 is 1/4 the width of the column 1
attach(mtcars)
layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE),
       widths=c(3,1), heights=c(1,2))
hist(wt)
hist(mpg)
hist(disp)


## Creating a figure arrangement with fine control
#---------------------------------------------------
# In the following example, two box plots are added to scatterplot 
# to create an enhanced graph.

# Add boxplots to a scatterplot
par(fig=c(0,0.8,0,0.8), new=TRUE)
plot(mtcars$wt, mtcars$mpg, xlab="Car Weight",
     ylab="Miles Per Gallon")
par(fig=c(0,0.8,0.55,1), new=TRUE)
boxplot(mtcars$wt, horizontal=TRUE, axes=FALSE)
par(fig=c(0.65,1,0,0.8),new=TRUE)
boxplot(mtcars$mpg, axes=FALSE)
mtext("Enhanced Scatterplot", side=3, outer=TRUE, line=-3)

par(fig=c(0,0.8,0,0.8), new=TRUE)
plot(mtcars$wt, mtcars$mpg, xlab="Car Weight",
     ylab="Miles Per Gallon")
par(fig=c(0,0.8,0.55,1), new=TRUE)
hist(mtcars$wt, horizontal=TRUE, axes=FALSE)
par(fig=c(0.65,1,0,0.8),new=TRUE)
hist(mtcars$mpg, axes=FALSE)
mtext("Enhanced Scatterplot", side=3, outer=TRUE, line=-3)

par()

#================
# Lattice Graphs
#================
# The lattice package, written by Deepayan Sarkar, attempts to improve on base 
# R graphics by providing better defaults and the ability to easily display 
# multivariate relationships. In particular, the package supports the creation 
# of trellis graphs - graphs that display a variable or the relationship between 
# variables, conditioned on one or more other variables.
# 
# The typical format is
# 
# graph_type(formula, data=)
# 
# where graph_type is selected from the listed below. formula specifies the 
# variable(s) to display and any conditioning variables . For example ~x|A means 
# display numeric variable x for each level of factor A. y~x | A*B means display 
# the relationship between numeric variables y and x separately for every 
# combination of factor A and B levels. ~x means display numeric variable x alone.

# graph_type	description	formula examples
# barchart	bar chart	x~A or A~x
# bwplot	boxplot	x~A or A~x
# cloud	3D scatterplot	z~x*y|A
# contourplot	3D contour plot	z~x*y
# densityplot	kernal density plot	~x|A*B
# dotplot	dotplot	~x|A
# histogram	histogram	~x
# levelplot	3D level plot	z~y*x
# parallel	parallel coordinates plot	data frame
# splom	scatterplot matrix	data frame
# stripplot	strip plots	A~x or x~A
# xyplot	scatterplot	y~x|A
# wireframe	3D wireframe graph	z~y*x

# Here are some examples. They use the car data (mileage, weight, number of gears, 
# number of cylinders, etc.) from the mtcars data frame.

# Lattice Examples
library(lattice)
attach(mtcars)

# create factors with value labels
gear.f<-factor(gear,levels=c(3,4,5),
               labels=c("3gears","4gears","5gears"))
cyl.f <-factor(cyl,levels=c(4,6,8),
               labels=c("4cyl","6cyl","8cyl"))

# kernel density plot
densityplot(~mpg,
            main="Density Plot",
            xlab="Miles per Gallon")

# kernel density plots by factor level
densityplot(~mpg|cyl.f,
            main="Density Plot by Number of Cylinders",
            xlab="Miles per Gallon")

# kernel density plots by factor level (alternate layout)
densityplot(~mpg|cyl.f,
            main="Density Plot by Numer of Cylinders",
            xlab="Miles per Gallon",
            layout=c(1,3))

# boxplots for each combination of two factors
bwplot(cyl.f~mpg|gear.f,
       ylab="Cylinders", xlab="Miles per Gallon",
       main="Mileage by Cylinders and Gears",
       layout=(c(1,3)))
       
# scatterplots for each combination of two factors
xyplot(mpg~wt|cyl.f*gear.f,
      main="Scatterplots by Cylinders and Gears",
      ylab="Miles per Gallon", xlab="Car Weight")
       
# 3d scatterplot by factor level
cloud(mpg~wt*qsec|cyl.f, main="3D Scatterplot by Cylinders")
       
# dotplot for each combination of two factors
dotplot(cyl.f~mpg|gear.f,
        main="Dotplot Plot by Number of Gears and Cylinders",
        xlab="Miles Per Gallon")
       
# scatterplot matrix
splom(mtcars[c(1,3,4,5,6)], main="MTCARS Data")

# Customizing Lattice Graphs
# Unlike base R graphs, lattice graphs are not effected by many of the options 
# set in the par( ) function. To view the options that can be changed, look at 
# help(xyplot). It is frequently easiest to set these options within the high 
# level plotting functions described above. Additionally, you can write 
# functions that modify the rendering of panels. Here is an example.

# Customized Lattice Example
library(lattice)
panel.smoother <- function(x, y) {
  panel.xyplot(x, y) # show points
  panel.loess(x, y)  # show smoothed line
}
attach(mtcars)
hp <- cut(hp,3) # divide horse power into three bands
xyplot(mpg~wt|hp, scales=list(cex=.8, col="red"),
       panel=panel.smoother,
       xlab="Weight", ylab="Miles per Gallon",
       main="MGP vs Weight by Horse Power")

#====================
# Probability Plots
#====================
# This section describes creating probability plots in R for both didactic 
# purposes and for data analyses.
# 
# Probability Plots for Teaching and Demonstration
# When I was a college professor teaching statistics, I used to have to draw 
# normal distributions by hand. They always came out looking like bunny rabbits. 
# What can I say?
#   
#   R makes it easy to draw probability distributions and demonstrate statistical 
# concepts. Some of the more common probability distributions available in R are 
# given below.

# distribution	R name	distribution	R name
# Beta	beta	Lognormal	lnorm
# Binomial	binom	Negative Binomial	nbinom
# Cauchy	cauchy	Normal	norm
# Chisquare	chisq	Poisson	pois
# Exponential	exp	Student t	t
# F	f	Uniform	unif
# Gamma	gamma	Tukey	tukey
# Geometric	geom	Weibull	weib
# Hypergeometric	hyper	Wilcoxon	wilcox
# Logistic	logis	 	 
# 
# For a comprehensive list, see Statistical Distributions on the R wiki. 
# The functions available for each distribution follow this format:
#   
#   name	description
# dname( )	density or probability function
# pname( )	cumulative density function
# qname( )	quantile function
# Rname( )	random deviates

# For example, pnorm(0) =0.5 (the area under the standard normal curve to the 
# left of zero). qnorm(0.9) = 1.28 (1.28 is the 90th percentile of the standard 
# normal distribution). rnorm(100) generates 100 random deviates from a standard 
# normal distribution.
# 
# Each function has parameters specific to that distribution. For example, 
# rnorm(100, m=50, sd=10) generates 100 random deviates from a normal distribution 
# with mean 50 and standard deviation 10.
# 
# You can use these functions to demonstrate various aspects of probability 
# distributions. Two common examples are given below.

# Display the Student's t distributions with various
# degrees of freedom and compare to the normal distribution

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

degf <- c(1, 3, 8, 30)
colors <- c("red", "blue", "darkgreen", "gold", "black")
labels <- c("df=1", "df=3", "df=8", "df=30", "normal")

plot(x, hx, type="l", lty=2, xlab="x value",
     ylab="Density", main="Comparison of t Distributions")

for (i in 1:4){
  lines(x, dt(x,degf[i]), lwd=2, col=colors[i])
}


# Children's IQ scores are normally distributed with a
# mean of 100 and a standard deviation of 15. What
# proportion of children are expected to have an IQ between
# 80 and 120?

mean=100; sd=15
lb=80; ub=120

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
     main="Normal Distribution", axes=FALSE)

i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
                signif(area, digits=3))
mtext(result,3)
axis(1, at=seq(40, 160, 20), pos=0)
legend("topright", inset=.05, title="Distributions",
       labels, lwd=2, lty=c(1, 1, 1, 1, 2), col=colors)


# Fitting Distributions
# There are several methods of fitting distributions in R. Here are some options.
# 
# You can use the qqnorm( ) function to create a Quantile-Quantile plot evaluating 
# the fit of sample data to the normal distribution. More generally, the qqplot( ) 
# function creates a Quantile-Quantile plot for any theoretical distribution.

# Q-Q plots
par(mfrow=c(1,2))

# create sample data
x <- rt(100, df=3)

# normal fit
qqnorm(x); qqline(x)

# t(3Df) fit
qqplot(rt(1000,df=3), x, main="t(3) Q-Q Plot",
       ylab="Sample Quantiles")
abline(0,1)

# The fitdistr( ) function in the MASS package provides maximum-likelihood fitting 
# of univariate distributions. The format is fitdistr(x, densityfunction) where x 
# is the sample data and densityfunction is one of the following: "beta", "cauchy", 
# "chi-squared", "exponential", "f", "gamma", "geometric", "log-normal", "lognormal", 
# "logistic", "negative binomial", "normal", "Poisson", "t" or "weibull".

# Estimate parameters assuming log-Normal distribution

# create some sample data
x <- rlnorm(100)

# estimate paramters
library(MASS)
fitdistr(x, "lognormal")


# Visualizing Categorical Data
# The vcd package provides a variety of methods for visualizing multivariate 
# categorical data, inspired by Michael Friendly's wonderful "Visualizing 
# Categorical Data". Extended mosaic and association plots are described here. 
# Each provides a method of visualizng complex data and evaluating deviations 
# from a specified independence model. For more details, see The Strucplot Framework.

# Mosaic Plots
# For extended mosaic plots, use mosaic(x, condvar=, data=) where x is a table or 
# formula, condvar= is an optional conditioning variable, and data= specifies a 
# data frame or a table. Include shade=TRUE to color the figure, and legend=TRUE 
# to display a legend for the Pearson residuals.

# Mosaic Plot Example
library(vcd)
mosaic(HairEyeColor, shade=TRUE, legend=TRUE)
View(HairEyeColor)

# Association Plots
# To produce an extended association plot use assoc(x, row_vars, col_vars) where x 
# is a contingency table, row_vars is a vector of integers giving the indices of 
# the variables to be used for the rows, and col_vars is a vector of integers 
# giving the indices of the variables to be used for the columns of the association 
# plot.

# Association Plot Example
library(vcd)
assoc(HairEyeColor, shade=TRUE)


# Correlograms
# Correlograms help us visualize the data in correlation matrices. For details, 
# see Corrgrams: Exploratory displays for correlation matrices.
# 
# In R, correlograms are implimented through the corrgram(x, order = , panel=, 
# lower.panel=, upper.panel=, text.panel=, diag.panel=) function in the corrgram package.
# 
# Options
# x is a data frame with one observation per row.
# 
# order=TRUE will cause the variables to be ordered using principal component 
# analysis of the correlation matrix.
# 
# panel= refers to the off-diagonal panels. You can use lower.panel= and 
# upper.panel= to choose different options below and above the main diagonal 
# respectively. text.panel= and diag.panel= refer to the main diagnonal. 
# Allowable parameters are given below.
# 
# off diagonal panels
# panel.pie (the filled portion of the pie indicates the magnitude of the correlation)
# panel.shade (the depth of the shading indicates the magnitude of the correlation)
# panel.ellipse (confidence ellipse and smoothed line)
# panel.pts (scatterplot)
# 
# main diagonal panels
# panel.minmax (min and max values of the variable)
# panel.txt (variable name).

# First Correlogram Example
library(corrgram)
corrgram(mtcars, order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")


# Second Correlogram Example
library(corrgram)
corrgram(mtcars, order=TRUE, lower.panel=panel.ellipse,
         upper.panel=panel.pts, text.panel=panel.txt,
         diag.panel=panel.minmax,
         main="Car Mileage Data in PC2/PC1 Order")

# Third Correlogram Example
library(corrgram)
corrgram(mtcars, order=NULL, lower.panel=panel.shade,
         upper.panel=NULL, text.panel=panel.txt,
         main="Car Milage Data (unsorted)")


# Changing the colors in a correlogram
# You can control the colors in a correlogram by specifying 4 colors in the 
# colorRampPalette( ) function within the col.corrgram( ) function. Here is 
# an example.

# Changing Colors in a Correlogram
library(corrgram)
col.corrgram <- function(ncol){   
  colorRampPalette(c("darkgoldenrod4", "burlywood1",
                     "darkkhaki", "darkgreen"))(ncol)
}
corrgram(mtcars, order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt,
         col.regions = col.corrgram,
         main="Correlogram of Car Mileage Data (PC2/PC1 Order)")


#======================
# Interactive Graphics
#======================
# There are a several ways to interact with R graphics in real time. 
# Three methods are described below.
# 
# GGobi
# GGobi is an open source visualization program for exploring high-dimensional 
# data. It is freely available for MS Windows, Linux, and Mac platforms. 
# It supports linked interactive scatterplots, barcharts, parallel coordinate 
# plots and tours, with both brushing and identification. A good tutorial is 
# included with the GGobi manual. You can download the software here.
# 
# Once GGobi is installed, you can use the ggobi( ) function in the package 
# rggobi to run GGobi from within R . This gives you interactive graphics 
# access to all of your R data! See An Introduction to RGGOBI.

# Interact with R data using GGobi
library(rggobi)
g <- ggobi(mydata)


# iPlots
# The iplots package provide interactive mosaic plots, bar plots, box plots, 
# parallel plots, scatter plots and histograms that can be linked and color 
# brushed. iplots is implimented through the Java GUI for R. For more 
# information, see the iplots website.

# Install iplots
install.packages("iplots",dep=TRUE)

# Create some linked plots
library(iplots)
cyl.f <- factor(mtcars$cyl)
gear.f <- factor(mtcars$factor)
attach(mtcars)
ihist(mpg) # histogram
ibar(carb) # barchart
iplot(mpg, wt) # scatter plot
ibox(mtcars[c("qsec","disp","hp")]) # boxplots
ipcp(mtcars[c("mpg","wt","hp")]) # parallel coordinates
imosaic(cyl.f,gear.f) # mosaic plot

