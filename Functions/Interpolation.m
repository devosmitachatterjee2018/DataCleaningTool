function [NRSME_pred,PEC_pred] = Interpolation(app,noofrows,noofcolumns,missingpercentagetobeimputed,noofnumericalfeatures,noofcategoricalfeatures)
% Predict errors using regression
r = noofrows/noofcolumns;
m = missingpercentagetobeimputed;

if m==0
    NRSME_pred = 0;
    PEC_pred = 0;
else
    %%
    % Numerical features
    if noofcategoricalfeatures == 0
        ratio = [8;8;8;8;8;8;8;8;8;8;2;2;2;2;2;2;2;2;2;1;1;1;1;1;1;1;1;0.5;0.5;0.5;0.5;0.5;0.5];
        missingPercentage = [0;10;20;30;40;50;60;70;80;90;0;10;20;30;40;50;60;70;80;0;10;20;30;40;50;60;70;0;10;20;30;40;50];
        NRSME = [0;0.1297;0.1957;0.2629;0.3307;0.4006;0.4886;0.5919;0.7462;0.9394;0;0.1588;0.2558;0.3692;0.4427;0.5371;0.6637;0.8100;0.9751;0;0.2076;0.3434;0.5057;0.6191;0.7450;0.8105;0.9387;0;0.2319;0.4173;0.5012;0.6034;0.7781];
        tbl = table(ratio,missingPercentage,NRSME);
        mdl = fitlm(tbl,'NRSME~ratio+missingPercentage')
        NRSME_pred = predict(mdl,[r, m]);
        PEC_pred = 0;
        
        % Categorical features
    elseif noofnumericalfeatures == 0
        ratio = [8;8;8;8;8;8;8;8;8;8;2;2;2;2;2;2;2;2;2;1;1;1;1;1;1;1;1;0.5;0.5;0.5;0.5;0.5];
        missingPercentage = [0;10;20;30;40;50;60;70;80;90;0;10;20;30;40;50;60;70;80;0;10;20;30;40;50;60;70;0;10;20;30;40];
        PEC = [0;0.0278;0.0552;0.0830;0.1086;0.1315;0.1802;0.2228;0.2549;0.3225;0;0.0198;0.0444;0.0716;0.0975;0.1160;0.1593;0.1556;0.2667;0;0.0346;0.0642;0.0667;0.1210;0.1605;0.1951;0.2272;0;0.0389;0.0722;0.0833;0.1278];
        tbl = table(ratio,missingPercentage,PEC);
        mdl = fitlm(tbl,'PEC~ratio+missingPercentage');
        PEC_pred = predict(mdl,[r, m]);
        NRSME_pred = 0;
        
        % Numerical & Categorical features
    else
        ratio = [8;8;8;8;8;8;8;8;8;8;2;2;2;2;2;2;2;2;2;2;1;1;1;1;1;1;1;1;1;0.5;0.5;0.5;0.5;0.5;0.5;0.5;0.5];
        missingPercentage = [0;10;20;30;40;50;60;70;80;90;0;10;20;30;40;50;60;70;80;90;0;10;20;30;40;50;60;70;80;0;10;20;30;40;50;60;70];
        NRSME = [0;0.1760;0.2400;0.3119;0.3773;0.4339;0.5055;0.6097;0.7026;0.9060;0;0.1662;0.2759;0.3194;0.4057;0.5084;0.5952;0.7122;0.8802;1.0429;0;0.1920;0.1879;0.3350;0.2766;0.5758;0.6796;0.9322;0.9764;0;0.1034;0.3924;0.5625;0.5808;0.8146;0.7004;0.8986];
        tbl1 = table(ratio,missingPercentage,NRSME);
        mdl1 = fitlm(tbl1,'NRSME~ratio+missingPercentage');
        NRSME_pred = predict(mdl1,[r, m]);
        PEC = [0;0.0192;0.0448;0.0638;0.1008;0.1311;0.1539;0.2134;0.2567;0.3338;0;0.0231;0.0449;0.0769;0.0870;0.1222;0.1620;0.2019;0.2444;0.2972;0;0.0194;0.0398;0.0722;0.0806;0.1426;0.1769;0.2454;0.3120;0;0.0278;0.0481;0.0815;0.1333;0.1500;0.2704;0.2352];
        tbl2 = table(ratio,missingPercentage,PEC);
        mdl2 = fitlm(tbl2,'PEC~ratio+missingPercentage');
        PEC_pred = predict(mdl2,[r, m]);
    end
end
end