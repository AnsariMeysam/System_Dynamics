clc
clear all 
%% Introducing parameters, variables, and input data %%
% Farmer Total Net Income; defined as FTNI (Objective Function)
% Cost Ratio; defined as CR (Input Data)
% Price; defined as P (Input Data)
% Unit Yield; defined as UY (Input Data)
% Area of each crop; defined as a (Variable)
% Total Cropland Area; defined as A (Input Data)
% Crop Demand; defined as CD (Input Data)
% Total Agriculture Demand; defined as TAD (Input Data)
%% Defining Input Data %%

UY=[
3.0091453	2.1419654	3.1838847	2.5395269	2.9266200	3.3181843	3.5541655	3.8193564	3.8851758	4.1563599	4.6196606	3.8575355	2.7429271	4.0528652	3.8805912
3.7005067	1.5784343	2.8894654	1.6762869	2.0183669	2.9905981	3.3433861	3.1165115	3.2959243	3.4951393	3.1356968	3.1210815	2.3525546	3.3192785	3.9235909
10.3248059	9.4399086	15.4626974	17.0983509	14.6232253	11.8659789	18.5863165	23.5439494	18.2906433	22.7762961	20.6642527	33.7932904	15.9097015	22.3825619	17.9613874
30.6234683	17.0428760	29.2858832	30.4473037	20.7854707	26.3357542	28.4726696	29.3165653	36.7071927	35.5291335	40.7202169	32.5513876	26.3188040	41.6621742	48.9573599
6.4999143	6.1999413	6.6999268	7.2000000	7.2000373	7.3167601	7.7369198	8.2610695	7.0435514	11.2892776	10.8081543	10.0057348	8.1487836	9.7580695	10.5740896
34.2197474	43.3447127	61.9481975	45.5337047	43.2442146	44.3094434	47.1511029	50.5118444	42.1130354	52.4217415	51.0493101	47.8178693	50.2661873	55.1997883	64.8533468
8.5505882	7.5321888	9.9014423	22.1230769	20.7249762	12.4137862	12.1747954	18.4076462	22.9798680	15.6344615	18.7474747	14.6882403	18.2873065	23.3302206	19.5065723
2.0000000	2.0000000	2.0000000	1.2974359	0.5074074	2.0000000	2.2000000	2.1183673	2.0959786	1.9220000	2.3467378	3.1483871	2.6995498	2.1057686	2.7529490
22.7849091	19.0303030	31.4386713	33.6473808	25.6009991	30.9434902	35.2583861	28.3935664	27.0940000	24.9362069	36.4294722	40.3589443	38.6436107	39.7753954	36.4907356
14.5819820	4.0810289	9.6763333	9.2059471	15.9509138	14.5042553	11.4833333	19.0671111	18.1057061	32.0170391	24.3109091	33.6911290	9.4071691	24.5113485	13.0155763
1.6149065	1.9786397	2.4473327	2.7386713	2.7715238	2.2280584	2.6052632	2.7616418	2.2063291	2.2901499	3.1000000	2.6947883	3.1200000	1.5500000	1.6122253
29.8046209	33.1810584	21.8915053	22.9744248	30.6197595	15.9481911	30.0435270	31.0740149	32.2047935	27.8282400	36.4349919	35.0530113	34.9875859	39.5012374	31.0828273
9.2240244	6.5504320	7.8216561	5.7788795	9.4992778	8.5145360	9.4269553	8.8103953	8.3386118	7.9902958	13.2601786	11.0218099	10.6337575	10.4559572	11.0007268
12.5989848	11.3144504	16.3719530	14.7795921	14.3674112	14.3326517	14.1875714	14.4044971	3.9491998	13.7500000	11.8991484	14.4993793	11.0760551	8.2880022	8.8006745
8.6100000	10.1347418	10.1110016	9.4629273	1.3687249	10.2147248	8.9762538	11.0064002	11.2525111	10.9330869	12.3015679	12.6149307	10.5000000	10.7305162	10.7379819
16.1000000	13.7106020	16.3200044	15.3122799	13.9033867	14.0671128	12.3680201	13.1474380	13.0142899	14.0000000	11.4452173	14.8893920	10.0875002	14.0013785	14.0000000
0.9500000	1.1304819	0.9690013	0.8854282	0.8927544	0.8889269	0.8301927	0.8399055	0.9364675	0.9563378	0.6749654	0.9218989	0.7157428	0.7877462	0.7929402];

P=[
170.630	149.140	146.110	136.360	145.840	142.060	165.810	164.260	185.040	202.520	229.350	316.440	259.310	256.520	393.710
97.238	85.053	75.938	77.234	93.937	108.968	104.718	98.988	95.077	116.615	172.382	200.477	128.382	158.376	207.219
123.500	187.800	171.600	165.800	86.200	119.400	133.200	109.300	78.300	182.200	277.900	138.400	199.800	272.200	203.300
139.400	174.600	59.200	69.300	98.000	79.200	64.700	100.600	109.200	115.400	121.400	258.000	125.500	209.600	252.600
117.172	101.617	90.294	88.219	89.609	99.334	105.186	111.778	98.405	121.589	163.257	223.248	165.542	186.007	291.782
7.275	8.083	8.982	10.567	11.741	13.812	16.250	19.118	21.242	24.990	27.767	32.667	38.432	42.702	55.101
192.700	161.900	163.200	133.200	100.200	140.500	119.400	194.300	149.200	235.700	220.100	226.200	270.800	336.900	513.900
383.800	402.700	537.100	618.200	578.900	610.600	383.800	383.800	383.800	383.800	383.800	383.800	383.800	383.800	383.800
52.700	39.900	36.500	41.700	45.500	41.200	45.000	49.900	54.200	54.200	59.500	66.900	78.000	87.900	92.600
86.382	172.167	109.637	138.915	94.157	80.990	96.973	88.387	120.004	142.655	124.978	172.742	289.950	194.448	173.063
602.723	545.863	477.037	423.630	457.543	477.804	421.139	441.246	501.947	545.161	581.814	687.302	760.349	877.624	988.983
102.100	79.200	75.700	71.700	70.900	61.300	73.700	102.400	58.600	112.600	104.000	141.100	139.800	121.100	143.200
132.851	78.323	113.290	131.416	115.002	94.084	99.157	144.045	141.661	140.085	155.937	267.846	190.138	182.887	287.935
56.400	310.400	229.700	203.800	241.800	295.900	382.900	765.500	296.300	426.600	568.300	523.600	1286.00	675.500	456.600
261.800	233.000	215.900	211.400	141.900	170.000	149.700	178.200	174.700	223.100	276.200	583.900	395.900	345.500	549.600
217.700	168.500	203.400	197.700	161.000	254.800	194.200	207.200	214.800	304.200	423.000	464.300	634.400	594.100	699.600
4403.70	3792.10	6222.70	3586.30	3674.70	2520.70	2252.50	3598.80	3640.40	3321.50	3991.20	4584.70	6606.50	6768.30	7472.80];

CR=[ 
0.70
0.97
0.56
0.37
0.28
0.45
0.54
0.63
0.89
0.60
0.56
0.60
0.38
0.38
0.23
0.23
0.20
];

CD=[
6500
6500
13000
13500
11500
12000
9500
15000
15000
15000
14500
9500
8550
15500
10000
15500
8000
];
% Define the objective function coefficients
f = -reshape((1 - CR) .* (P .* UY), [], 1);

% Define the inequality constraints
A = [];
b = [];
% Crop area constraints
lb = zeros(17*15, 1);
ub = repmat(233605.85, 17*15, 1);
% Total crop area constraint
Aeq_area = kron(eye(15), ones(1, 17));
beq_area = repmat(233605.85, 15, 1);
% Water consumption constraint
Aeq_water = reshape(CD', [], 1);
beq_water =2000; %29258;

% Solving the linear programming problem
options = optimoptions('linprog', 'Display', 'off');
x = linprog(f, A, b, Aeq_area, beq_area, lb, ub, [], options);

% Reshaping the solution vector to obtain the optimal allocation matrix
a_opt = reshape(x, 17, 15)';

% Calculate the FTNI (Farmer Total Net Income) value
FTNI = sum((1 - CR) .* (P .* UY .* a_opt'), 'double');

OAs = a_opt';

% Displaying the optimal allocation matrix
disp('Optimal Allocation of Crops:');
disp(OAs);

% Displaying the FTNI value
fprintf('FTNI: %.2f\n', FTNI);
