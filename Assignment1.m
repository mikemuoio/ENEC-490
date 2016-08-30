%%deleted the date column and only imported the Spot Price data
%%saved the file as 'NYH_GasPrices_86-16.xls'
[PRICES] = xlsread('NYH_GasPrices_86-16.xls');

matrix = zeros(12,1);
start = 1;

%%June
JunePrices = [];
for i = start:12:length(PRICES)
    JunePrices = [JunePrices PRICES(i)];
end

JuneAverage = mean(JunePrices);
matrix(6,1) = JuneAverage;
start = start+1;

%%July
JulyPrices = [];
for i = start:12:length(PRICES)
    JulyPrices = [JulyPrices PRICES(i)];
end

JulyAverage = mean(JulyPrices);
matrix(7,1) = JulyAverage;
start = start+1;

%%August
AugustPrices = [];
for i = start:12:length(PRICES)
    AugustPrices = [AugustPrices PRICES(i)];
end

AugustAverage = mean(AugustPrices);
matrix(8,1) = AugustAverage;
start = start+1;

%%Semptember
SeptemberPrices = [];
for i = start:12:length(PRICES)
    SeptemberPrices = [SeptemberPrices PRICES(i)];
end

SeptemberAverage = mean(SeptemberPrices);
matrix(9,1) = SeptemberAverage;
start = start+1;

%%October
OctoberPrices = [];
for i = start:12:length(PRICES)
    OctoberPrices = [OctoberPrices PRICES(i)];
end

OctoberAverage = mean(OctoberPrices);
matrix(10,1) = OctoberAverage;
start = start+1;

%%November
NovemberPrices = [];
for i = start:12:length(PRICES)
    NovemberPrices = [NovemberPrices PRICES(i)];
end

NovemberAverage = mean(NovemberPrices);
matrix(11,1) = NovemberAverage;
start = start+1;

%%December
DecemberPrices = [];
for i = start:12:length(PRICES)
    DecemberPrices = [DecemberPrices PRICES(i)];
end

DecemberAverage = mean(DecemberPrices);
matrix(12,1) = DecemberAverage;
start = start+1;

%%January
JanuaryPrices = [];
for i = start:12:length(PRICES)
    JanuaryPrices = [JanuaryPrices PRICES(i)];
end

JanuaryAverage = mean(JanuaryPrices);
matrix(1,1) = JanuaryAverage;
start = start+1;

%%February
FebruaryPrices = [];
for i = start:12:length(PRICES)
    FebruaryPrices = [FebruaryPrices PRICES(i)];
end

FebruaryAverage = mean(FebruaryPrices);
matrix(2,1) = FebruaryAverage;
start = start+1;

%%March
MarchPrices = [];
for i = start:12:length(PRICES)
    MarchPrices = [MarchPrices PRICES(i)];
end

MarchAverage = mean(MarchPrices);
matrix(3,1) = MarchAverage;
start = start+1;

%%April
AprilPrices = [];
for i = start:12:length(PRICES)
    AprilPrices = [AprilPrices PRICES(i)];
end

AprilAverage = mean(AprilPrices);
matrix(4,1) = AprilAverage;
start = start+1;

%%May
MayPrices = [];
for i = start:12:length(PRICES)
    MayPrices = [MayPrices PRICES(i)];
end

MayAverage = mean(MayPrices);
matrix(5,1) = MayAverage;

monthly_averages = matrix;
xlswrite('monthly_average_price.xls',monthly_averages);


