This is a fork of the openstreetmap package for Matlab written by Ioannis Filippidis and available at https://github.com/johnyf/openstreetmap.
Filippidis has licensed it under the 2-clause BSD license. The original README file for the
package is below, after the instructions for how to use this fork

To use:

1. Obtain the `map.osm` file and place it within the `data/` subfolder

2. Add the `Dependencies` folder and all subfolders to the file path before running

3. Run `Extract_Adjacency.m` to create a folder under data containing the adjacency matrix
for the map data as well as all indices, node ids, and geographic locations needed
to label the rows and columns of the matrix.

The matrix is formatted as a tab-separated-value .txt file.


Original README:

Summary
-------
Load map, extract connectivity, plot road network & find shortest paths from OpenStreetMap `XML` file.

Description
-----------
This software package includes functions for working with OpenStreetMap XML Data files (extension `.osm`), as downloaded from [here](http://www.openstreetmap.org), to:

1. Import and parse the `XML` data file and store the parsed data in a `MATLAB` structure. This data represents the graph of the transportation network.

2. Plot the `MATLAB` structure to get a visualization of the transportation network, its nodes and their labels.

3. Extract the adjacency matrix of the directed graph representing the network's connectivity (i.e., road intersections).

4. Find shortest routes between nodes within the network. Note that distance is measured as the number of transitions between intersection nodes, not over the map.

Download
--------
[Distribution zip](http://www.mathworks.com/matlabcentral/fileexchange/35819-openstreetmap-functions?download=true) from the File Exchange.
Includes dependencies.

Documentation
-------------
Included in `PDF` format in the [distribution zip](http://www.mathworks.com/matlabcentral/fileexchange/35819-openstreetmap-functions?download=true).

Dependencies
------------
- [xml2struct](http://www.mathworks.com/matlabcentral/fileexchange/28518-xml2struct)
- [gaimc: graph algorithms](http://www.mathworks.com/matlabcentral/fileexchange/24134-gaimc-graph-algorithms-in-matlab-code)
- [Lat/Lon aspect ratio](http://www.mathworks.com/matlabcentral/fileexchange/32462-correctly-proportion-a-latlon-plot)
- [plot 2/3d point(s)](http://www.mathworks.com/matlabcentral/fileexchange/34731-plot-23d-points)

License
-------
This package is licensed under the 2-clause BSD license.
The authors of dependencies are included to enable their inclusion for distribution here.