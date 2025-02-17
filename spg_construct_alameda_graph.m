% SPG_CONSTRUCT_ALAMEDA_GRAPH Constructs the Alameda graph as 
% presented in:
%
% Behjat, et al., 'Signal-adapted tight frames on graphs', 
% IEEE Trans. Signal Process., 2016,  doi: 10.1109/TSP.2016.2591513.
%
% Output:
% 'G'       : Graph structure.
%
%
% Example:
%
% >> G = SPG_CONSTRUCT_ALAMEDA_GRAPH;
% >> gsp_plot_graph(G)
%
% ------------------------------------------------------------
% Copyright (C) 2016, Hamid Behjat.
% This file is part of SPG (signal processing on graphs) package - v1.00
% 
% Download: miplab.epfl.ch/software/
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

function G = spg_construct_alameda_graph

load('alameda.mat') 
% To see how 'alameda.mat' is extracted from the raw data, please 
% refer to the following script:
% spg/data/alameda/alameda_raw/spg_extract_alameda_signalSet.m

allVDSs = [];
allFWYs = [];
allAbsPMs = [];
allLongitudes = [];
allLatitudes = [];

% concatanate all VDS IDs.
for iMonth = 1:60
    eval(['allVDSs = [allVDSs; VDS_',num2str(iMonth), '];'])
    eval(['allFWYs = [allFWYs; Fwy_',num2str(iMonth), '];'])
    eval(['allAbsPMs = [allAbsPMs; AbsPM_',num2str(iMonth), '];'])
    eval(['allLongitudes = [allLongitudes; Longitude_',num2str(iMonth), '];'])
    eval(['allLatitudes = [allLatitudes; Latitude_',num2str(iMonth), '];'])
end

% Determine how many different Vehichle Detector Stations (VDS)
% exist (number of graph vertices).

[C_vds,IA_vds,IC_vds]=unique(allVDSs);
% C_vds: unique VDS IDs : 597 detectors

[C_fw,IA_fw,IC_fw]=unique(allFWYs);
% C_fw: # of unique freeways: 20

vertex_ID = C_vds;
vertex_Fwy = allFWYs(IA_vds);
vertex_absPM = allAbsPMs(IA_vds);
vertex_Longitude = allLongitudes(IA_vds);
vertex_Latitude = allLatitudes(IA_vds);

% inspect some samples
%whos vertex_ID vertex_Fwy vertex_absPM vertex_Longitude vertex_Latitude
vertex_ID(1:3);
vertex_Fwy(1:3);
vertex_absPM(1:3);
vertex_Longitude(1:3);
vertex_Latitude(1:3);

for k =1:numel(C_fw)
    eval(['VDSs_FWY_',num2str(k),'=[];'])
    eval(['AbsPM_VDSs_FWY_',num2str(k),'=[];'])
    eval(['Longitude_VDSs_FWY_',num2str(k),'=[];'])
    eval(['Latitude_VDSs_FWY_',num2str(k),'=[];'])
end

for iVDS =1:numel(vertex_ID)
    
    switch vertex_Fwy{iVDS}
        
        case C_fw(1)
            
            VDSs_FWY_1 = [VDSs_FWY_1; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_1 = [AbsPM_VDSs_FWY_1; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_1 = [Longitude_VDSs_FWY_1; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_1 = [Latitude_VDSs_FWY_1; vertex_Latitude(iVDS)];
            
            
        case C_fw(2)
            
            VDSs_FWY_2 = [VDSs_FWY_2; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_2 = [AbsPM_VDSs_FWY_2; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_2 = [Longitude_VDSs_FWY_2; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_2 = [Latitude_VDSs_FWY_2; vertex_Latitude(iVDS)];
            
        case C_fw(3)
            
            VDSs_FWY_3 = [VDSs_FWY_3; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_3 = [AbsPM_VDSs_FWY_3; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_3 = [Longitude_VDSs_FWY_3; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_3 = [Latitude_VDSs_FWY_3; vertex_Latitude(iVDS)];
            
        case C_fw(4)
            
            VDSs_FWY_4 = [VDSs_FWY_4; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_4 = [AbsPM_VDSs_FWY_4; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_4 = [Longitude_VDSs_FWY_4; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_4 = [Latitude_VDSs_FWY_4; vertex_Latitude(iVDS)];
            
        case C_fw(5)
            
            VDSs_FWY_5 = [VDSs_FWY_5; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_5 = [AbsPM_VDSs_FWY_5; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_5 = [Longitude_VDSs_FWY_5; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_5 = [Latitude_VDSs_FWY_5; vertex_Latitude(iVDS)];
            
        case C_fw(6)
            
            VDSs_FWY_6 = [VDSs_FWY_6; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_6 = [AbsPM_VDSs_FWY_6; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_6 = [Longitude_VDSs_FWY_6; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_6 = [Latitude_VDSs_FWY_6; vertex_Latitude(iVDS)];
            
        case C_fw(7)
            
            VDSs_FWY_7 = [VDSs_FWY_7; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_7 = [AbsPM_VDSs_FWY_7; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_7 = [Longitude_VDSs_FWY_7; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_7 = [Latitude_VDSs_FWY_7; vertex_Latitude(iVDS)];
            
        case C_fw(8)
            
            VDSs_FWY_8 = [VDSs_FWY_8; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_8 = [AbsPM_VDSs_FWY_8; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_8 = [Longitude_VDSs_FWY_8; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_8 = [Latitude_VDSs_FWY_8; vertex_Latitude(iVDS)];
            
        case C_fw(9)
            
            VDSs_FWY_9 = [VDSs_FWY_9; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_9 = [AbsPM_VDSs_FWY_9; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_9 = [Longitude_VDSs_FWY_9; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_9 = [Latitude_VDSs_FWY_9; vertex_Latitude(iVDS)];
            
        case C_fw(10)
            
            VDSs_FWY_10 = [VDSs_FWY_10; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_10 = [AbsPM_VDSs_FWY_10; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_10 = [Longitude_VDSs_FWY_10; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_10 = [Latitude_VDSs_FWY_10; vertex_Latitude(iVDS)];
            
        case C_fw(11)
            
            VDSs_FWY_11 = [VDSs_FWY_11; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_11 = [AbsPM_VDSs_FWY_11; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_11 = [Longitude_VDSs_FWY_11; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_11 = [Latitude_VDSs_FWY_11; vertex_Latitude(iVDS)];
            
        case C_fw(12)
            
            VDSs_FWY_12 = [VDSs_FWY_12; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_12 = [AbsPM_VDSs_FWY_12; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_12 = [Longitude_VDSs_FWY_12; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_12 = [Latitude_VDSs_FWY_12; vertex_Latitude(iVDS)];
            
        case C_fw(13)
            
            VDSs_FWY_13 = [VDSs_FWY_13; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_13 = [AbsPM_VDSs_FWY_13; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_13 = [Longitude_VDSs_FWY_13; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_13 = [Latitude_VDSs_FWY_13; vertex_Latitude(iVDS)];
            
        case C_fw(14)
            
            VDSs_FWY_14 = [VDSs_FWY_14; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_14 = [AbsPM_VDSs_FWY_14; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_14 = [Longitude_VDSs_FWY_14; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_14 = [Latitude_VDSs_FWY_14; vertex_Latitude(iVDS)];
            
        case C_fw(15)
            
            VDSs_FWY_15 = [VDSs_FWY_15; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_15 = [AbsPM_VDSs_FWY_15; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_15 = [Longitude_VDSs_FWY_15; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_15 = [Latitude_VDSs_FWY_15; vertex_Latitude(iVDS)];
            
        case C_fw(16)
            
            VDSs_FWY_16 = [VDSs_FWY_16; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_16 = [AbsPM_VDSs_FWY_16; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_16 = [Longitude_VDSs_FWY_16; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_16 = [Latitude_VDSs_FWY_16; vertex_Latitude(iVDS)];
            
        case C_fw(17)
            
            VDSs_FWY_17 = [VDSs_FWY_17; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_17 = [AbsPM_VDSs_FWY_17; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_17 = [Longitude_VDSs_FWY_17; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_17 = [Latitude_VDSs_FWY_17; vertex_Latitude(iVDS)];
            
        case C_fw(18)
            
            VDSs_FWY_18 = [VDSs_FWY_18; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_18 = [AbsPM_VDSs_FWY_18; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_18 = [Longitude_VDSs_FWY_18; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_18 = [Latitude_VDSs_FWY_18; vertex_Latitude(iVDS)];
            
        case C_fw(19)
            
            VDSs_FWY_19 = [VDSs_FWY_19; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_19 = [AbsPM_VDSs_FWY_19; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_19 = [Longitude_VDSs_FWY_19; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_19 = [Latitude_VDSs_FWY_19; vertex_Latitude(iVDS)];
            
        case C_fw(20)
            
            VDSs_FWY_20 = [VDSs_FWY_20; vertex_ID(iVDS)];
            AbsPM_VDSs_FWY_20 = [AbsPM_VDSs_FWY_20; vertex_absPM(iVDS)];
            Longitude_VDSs_FWY_20 = [Longitude_VDSs_FWY_20; vertex_Longitude(iVDS)];
            Latitude_VDSs_FWY_20 = [Latitude_VDSs_FWY_20; vertex_Latitude(iVDS)];
            
    end
end


for k =1:numel(C_fw)
    eval(['[AbsPM_VDSs_FWY_',num2str(k),'_sorted, dummy] = sort(AbsPM_VDSs_FWY_',num2str(k),');'])
    eval(['VDSs_FWY_',num2str(k),'_sorted = VDSs_FWY_',num2str(k),'(dummy);'])
    eval(['Longitude_VDSs_FWY_',num2str(k),'_sorted = Longitude_VDSs_FWY_',num2str(k),'(dummy);'])
    eval(['Latitude_VDSs_FWY_',num2str(k),'_sorted = Latitude_VDSs_FWY_',num2str(k),'(dummy);'])
end

% create an adjacency matrix of the VDSs of each of the freeways
for  k =1:numel(C_fw)
    
    eval(['NN = numel(VDSs_FWY_',num2str(k),'_sorted);'])
    eval(['Adj_FWY_',num2str(k),' = zeros(NN);'])
    
    for iRow =1:NN-1
        eval(['Adj_FWY_',num2str(k),'(iRow,iRow+1) = 1;'])
        eval(['Adj_FWY_',num2str(k),'(iRow+1,iRow) = 1;'])
    end
    
end

% for simplicity, we skip freeways: 9 , 18 and 20.
% This is because these freeways only have 1 or 2 VDSs: in total 4.
% Thus, 17 freeways left, with 597-4 VDSs, i.e. 593 graph vertices.
NNN = numel(C_vds)-4;

% Adjacency matrix for the whole Alameda county: only coding 
% freeways alone.. not their junctions.
Adj = blkdiag(...
    Adj_FWY_1, Adj_FWY_2, Adj_FWY_3, Adj_FWY_4, Adj_FWY_5,...
    Adj_FWY_6, Adj_FWY_7, Adj_FWY_8,                   Adj_FWY_10,...
    Adj_FWY_11, Adj_FWY_12, Adj_FWY_13, Adj_FWY_14, Adj_FWY_15,...
    Adj_FWY_16, Adj_FWY_17,                    Adj_FWY_19                   );

coords1 = [];
coords2 = [];

for  k =[1:8,10:17,19] %:numel(C_fw)
    eval(['coords1 = [coords1;Longitude_VDSs_FWY_',num2str(k),'_sorted];'])
    eval(['coords2 = [coords2;Latitude_VDSs_FWY_',num2str(k),'_sorted];'])
end

Coords = [coords1,coords2];

G_temp.A = Adj;
G_temp.W = Adj;
G_temp.coords = Coords;
G_temp.coords_limits = [NaN,NaN];
G_temp.N = NNN; %numel(C_vds);
G_temp.edge_width = 1;
G_temp.edge_color = [0.5 0.5 0.5];
G_temp.edge_style = '-';
G_temp.vertex_size = 15;
G_temp.vertex_color = 'k';
G_temp.vertex_edge_color = 'k';


% plot temporary graph -- (freeways nor connected)
if 0
    gsp_plot_graph(G_temp)
end

% Completing the graph  ----------------------------------------------

% Adding freeway junctions. i.e. extra edges to have a single connected graph.
% Specifically defined by looking at google maps. (3-5 March 2016)
allVDSs_sorted = [...
    VDSs_FWY_1_sorted;   VDSs_FWY_2_sorted;  VDSs_FWY_3_sorted; VDSs_FWY_4_sorted; VDSs_FWY_5_sorted;...
    VDSs_FWY_6_sorted;   VDSs_FWY_7_sorted;  VDSs_FWY_8_sorted;                                VDSs_FWY_10_sorted;...
    VDSs_FWY_11_sorted; VDSs_FWY_12_sorted; VDSs_FWY_13_sorted; VDSs_FWY_14_sorted; VDSs_FWY_15_sorted;...
    VDSs_FWY_16_sorted; VDSs_FWY_17_sorted;                                  VDSs_FWY_19_sorted ...
    ];
% Now, each VDS has an index, i.e., 1:NNN, which specifies its position in the graph.

%The nodes that are connected at junctions:
junctionA = [401697,401705,404295,406605,401695,402444,401608,404725];
junctionB = [400496,400758,401557,400186,400674,401545];
junctionC = [406695,401259,400681,400321,400685];
junctionD = [404294,404280,401841,401686,406766,404283,406767,402539];
junctionE = [401392,401385,400252,401068,400788,402532,400486];
junctionF = [401390,403280,401898,401478,401899,401481,401911,400642];
junctionG = [400980,401273,401190,400609];
junctionH = [401698,401491,401471,401156,404669,400075,401657,401539];

[duumyA, indA] = ismember(junctionA,allVDSs_sorted);
[duumyB, indB]  = ismember(junctionB,allVDSs_sorted);
[duumyC, indC] = ismember(junctionC,allVDSs_sorted);
[duumyD, indD] = ismember(junctionD,allVDSs_sorted);
[duumyE, indE]  = ismember(junctionE,allVDSs_sorted);
[duumyF, indF]  = ismember(junctionF,allVDSs_sorted);
[duumyG, indG] = ismember(junctionG,allVDSs_sorted);
[duumyH, indH] = ismember(junctionH,allVDSs_sorted);

edges_junction_A_row      = [indA(2),indA(2),indA(6),indA(6),indA(7),indA(7),indA(4),indA(4)];
edges_junction_A_column = [indA(3),indA(5),indA(1),indA(8),indA(5),indA(3),indA(8),indA(1)];

edges_junction_B_row      = [indB(1),indB(1),indB(2),indB(2)];
edges_junction_B_column = [indB(4),indB(6),indB(3),indB(5)];


edges_junction_C_row      = [indC(2),indC(2),indC(4)];
edges_junction_C_column = [indC(3),indC(5),indC(1)];


edges_junction_D_row      = [indD(2),indD(4),indD(5),indD(7)];
edges_junction_D_column = [indD(3),indD(1),indD(6),indD(8)];


edges_junction_E_row      = [indE(2),indE(4),indE(1),indE(6)];
edges_junction_E_column = [indE(3),indE(2),indE(5),indE(7)];


edges_junction_F_row      = [indF(1),indF(1),indF(1),indF(2),indF(2),indF(2),indF(4),indF(6),indF(5),indF(3)];
edges_junction_F_column = [indF(3),indF(6),indF(7),indF(8),indF(5),indF(4),indF(7),indF(8),indF(7),indF(8)];


edges_junction_G_row      = [indG(2),indG(1)];
edges_junction_G_column = [indG(4),indG(3)];


edges_junction_H_row      = [indH(6),indH(5),indH(1),indH(2),indH(1)];
edges_junction_H_column = [indH(7),indH(8),indH(6),indH(3),indH(4)];


Adj_full = Adj;

for k =1:numel(edges_junction_A_row)
    Adj_full(edges_junction_A_row(k),edges_junction_A_column(k)) = 1;
    Adj_full(edges_junction_A_column(k),edges_junction_A_row(k)) = 1;
    
end

for k =1:numel(edges_junction_B_row)
    Adj_full(edges_junction_B_row(k),edges_junction_B_column(k)) = 1;
    Adj_full(edges_junction_B_column(k),edges_junction_B_row(k)) = 1;
    
end

for k =1:numel(edges_junction_C_row)
    Adj_full(edges_junction_C_row(k),edges_junction_C_column(k)) = 1;
    Adj_full(edges_junction_C_column(k),edges_junction_C_row(k)) = 1;
    
end

for k =1:numel(edges_junction_D_row)
    Adj_full(edges_junction_D_row(k),edges_junction_D_column(k)) = 1;
    Adj_full(edges_junction_D_column(k),edges_junction_D_row(k)) = 1;
    
end

for k =1:numel(edges_junction_E_row)
    Adj_full(edges_junction_E_row(k),edges_junction_E_column(k)) = 1;
    Adj_full(edges_junction_E_column(k),edges_junction_E_row(k)) = 1;
    
end

for k =1:numel(edges_junction_F_row)
    Adj_full(edges_junction_F_row(k),edges_junction_F_column(k)) = 1;
    Adj_full(edges_junction_F_column(k),edges_junction_F_row(k)) = 1;
    
end

for k =1:numel(edges_junction_G_row)
    Adj_full(edges_junction_G_row(k),edges_junction_G_column(k)) = 1;
    Adj_full(edges_junction_G_column(k),edges_junction_G_row(k)) = 1;
    
end

for k =1:numel(edges_junction_H_row)
    Adj_full(edges_junction_H_row(k),edges_junction_H_column(k)) = 1;
    Adj_full(edges_junction_H_column(k),edges_junction_H_row(k)) = 1;
    
end


G = G_temp;
G.A = Adj_full;
G.W = G.A;
G.laplacianType = 'combinatorial';

% plot the full graph (a single connected graph)
if 0
    gsp_plot_graph(G)
    title('Alameda Road graph')
end

% Note that for the illustration in:
%
% Behjat, et al., 'Signal-adapted tight frames on graphs', 
% IEEE Trans. Signal Process., 2016,  doi: 10.1109/TSP.2016.2591513,
%
% the two last nodes on freeway I680-S were removed in favour of a 
% nicer illustraton since they looked quite outliered. However, their 
% data is used in the analysis.
