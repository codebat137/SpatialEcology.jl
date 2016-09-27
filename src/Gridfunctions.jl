xmin(g::GridTopology) = g.xmin
ymin(g::GridTopology) = g.ymin
cellsize(g::GridTopology) = g.xcellsize, g.ycellsize
xcellsize(g::GridTopology) = g.xcellsize
ycellsize(g::GridTopology) = g.ycellsize
xcells(g::GridTopology) = g.xcells
ycells(g::GridTopology) = g.ycells
cells(g::GridTopology) = g.xcells, g.ycells
xmax(g::GridTopology) = g.xmin + g.xcellsize*g.xcells
ymax(g::GridTopology) = g.ymin + g.ycellsize*g.ycells
xrange(g::GridTopology) = xmin(g):xcellsize(g):xmax(g)
yrange(g::GridTopology) = ymin(g):ycellsize(g):ymax(g)
boundingbox(g::GridTopology) = Bbox(xmin(g), xmax(g), ymin(g), ymax(g))
show(io::IO, b::Bbox) = println("xmin:\t$(g.xmin)\nxmax:\t$(g.xmax)\nymin:\t$(g.ymin)\nymax:\t$(g.ymax)\n")

xmin(g::GridData) = xmin(g.grid)
ymin(g::GridData) = ymin(g.grid)
cellsize(g::GridData) = cellsize(g.grid)
xcellsize(g::GridData) = xcellsize(g.grid)
ycellsize(g::GridData) = ycellsize(g.grid)
xcells(g::GridData) = xcells(g.grid)
ycells(g::GridData) = ycells(g.grid)
cells(g::GridData) = cells(g.grid)
xmax(g::GridData) = xmax(g.grid)
ymax(g::GridData) = ymax(g.grid)
xrange(g::GridData) = xrange(g.grid)
yrange(g::GridData) = yrange(g.grid)
boundingbox(g::GridData) = boundingbox(g.grid)
