%% ��������ָ����ֵ������÷�
weight = [-0.031975742
0.161897337
0.059201123
0.057884302
0.057884302
0.073173823
0.053315083
0.057616019
0.052075813
0.056897074
0.059353508
0.064163208
0.073565065
0.073565065
0.064275641
0.067108379
];

data = [
    220	215	210	204	227	11.5	11.1
103100	133297	51795.02638	91686.6496	110700	254987.4	411122
34.5921	40.1428621	29.5175464	25.660089	51.1287	0.6234	0.7898
0.41312	0.4612	0.38725	0.452213	0.6352	0.532820426	0.415966218
13.88	14.67	10	11	14	1088.11	90.19
48.8	48.9	43.2	46.76	47.43112	0.856	0.872
398	399	596.1365678	666.9362	475.3635719	134.9837	360.75857
22.05	23.06	19.05	23.53	25.232	3.510610854	2.774597409
0.004072473	0.004357448	0.003578	0.004298	0.0056323	0.003	0.0018
0.000498429	0.000642528	0.00040557	0.000492	0.0005062	0.029365797	0.198125261
34686	34699	16769.34	27154	28137	32404	91256
97.33	97.54	98.3483044	98.442687	97.2131	0.931	0.038
10141.49718	13263.04321	9785.52	10634.88	15146.112	10813.6686	11965.318
0.1673431	0.1759051	0.126234	0.161241	0.1823123	0.378383608	0.705679261
36.06	35.87	33.12	34.14	36.63	34	70.34
107	114	152	167	535	96	86
];

pm_25 = data(1,:);
gdp_avg = data(2,:);
third_ratio = data(3,:);
house_avg = data(4,:);
green_area_avg = data(5,:);
high_stu_ratio = data(6,:);
people_density = data(7,:);
path_avg = data(8,:);
bed_avg = data(9,:);
bus_avg = data(10,:);
salary_avg = data(11,:);
work_ratio = data(12,:);
infrastr_avg = data(13,:);
car_avg = data(14,:);
agriculture_ratio = data(15,:);
scene_num = data(16,:);

% �������ݹ�һ������
[pm_25n, pm_25s] = mapminmax(pm_25);
[gdp_avgn, gdp_avgs] = mapminmax(gdp_avg);
[third_ration, third_ratios] = mapminmax(third_ratio);
[house_avgn, house_avgs] = mapminmax(house_avg);
[green_area_avgn, green_area_avgs] = mapminmax(green_area_avg);
[high_stu_ration, high_stu_ratios] = mapminmax(high_stu_ratio);
[people_densityn, people_densitys] = mapminmax(people_density);
[path_avgn, path_avgs] = mapminmax(path_avg);
[bed_avgn, bed_avgs] = mapminmax(bed_avg);
[bus_avgn, bus_avgs] = mapminmax(bus_avg);
[salary_avgn, salary_avgs] = mapminmax(salary_avg);
[work_ration, work_ratios] = mapminmax(work_ratio);
[infrastr_avgn, infrastr_avgs] = mapminmax(infrastr_avg);
[car_avgn, car_avgs] = mapminmax(car_avg);
[agri_ration, agri_ratios] = mapminmax(agriculture_ratio);
[scene_numn, scene_nums] = mapminmax(scene_num);
input = [
    pm_25n; gdp_avgn; third_ration; house_avgn; green_area_avgn;
    high_stu_ration; people_densityn; path_avgn; bed_avgn; bus_avgn; 
    salary_avgn; work_ration; infrastr_avgn; car_avgn; agri_ration;
    scene_numn
];
input = input + 1;
input = input / 2;


lishui_score = 0;
sonoma_score = 0;
lishui_col = 1;
sonoma_col = 7;
for i=1:length(weight);
    lishui_score = lishui_score + weight(i) * input(i, lishui_col);
    sonoma_score = sonoma_score + weight(i) * input(i, sonoma_col);
end;