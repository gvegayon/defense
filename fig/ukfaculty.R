library(netplot)
library(magrittr)
data(UKfaculty, package="igraphdata")

set.seed(1231)
graphics.off()
oldpar <- par(lwd=10)
svg(file = "ukfaculty-igraph.svg", width = 7, height=5)
#nplot(UKfaculty, vertex.color = "gray40", edge.width = 2)
nplot(
  UKfaculty,
  vertex.color = "gray40",
  edge.width = 2,
  edge.line.breaks=4,
  edge.color = ~ ego(alpha=.1) + alter,
  edge.color.alpha=c(.2, .7),
  edge.color.mix=.9
)
dev.off()
par(oldpar)

