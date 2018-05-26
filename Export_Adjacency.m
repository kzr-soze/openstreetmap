% Script to generate and save connectivity matrix

clear all;
clc;

filename = input('Name of .osm file under data folder: ','s');
file = ['data/',filename, '.osm'];

% convert XML -> MATLAB struct
[parsed_osm, osm_xml] = parse_openstreetmap(file);

% find connectivity, assumes one-way roads
[connectivity_matrix, intersection_node_indices] = extract_connectivity(parsed_osm);
intersection_nodes = get_unique_node_xy(parsed_osm, intersection_node_indices);

% Check for and delete previous output folder
if (exist(['data/',filename,'/'],'dir'))
    rmdir(['data/',filename,'/'],'s');
end

mkdir(['data/',filename,'/']);
adjacency = full(connectivity_matrix);
inter_xys = intersection_nodes.xys;
inter_osm_id = intersection_nodes.id;


dlmwrite(['data/',filename,'/adjacency.txt'],adjacency,'delimiter','\t');
dlmwrite(['data/',filename,'/intersection_indices.txt'],intersection_node_indices,'delimiter','\t');
dlmwrite(['data/',filename,'/intersection_geo.txt'],inter_xys,'delimiter','\t');
dlmwrite(['data/',filename,'/intersection_osm_id.txt'],inter_osm_id,'delimiter','\t');