local addonInfo, privateVars = ...

---------- init namespace ---------

local _internal		= privateVars.internal

---------- init local variables ---------

---------- init variables ---------

---------- local function block ---------

if privateVars.questLoader == nil then privateVars.questLoader = {} end

privateVars.questLoader["classic"] =
function() 
_internal.loadQuests({
q000000006F7183F5={lvl=1}
,q262ED9A000000000={lvl=1,type={14,7}}
,q65ACA5B100000000={lvl=1,type={14,7}}
,q2BC0C66200000000={lvl=1,type={3}}
,q560794CB00000000={lvl=1,type={3}}
,q1F8C17AA00000000={lvl=1,type={10,3},giver='U5AACB7C9707AABEC'}
,q437F7C2800000000={lvl=1,type={10,3},giver='U7B9802940EFC9CEE'}
,q080D8629DE459753={lvl=1,domain="guild"}
,q1B3A26E2D47FC52B={lvl=1,domain="guild"}
,q3AAC84E315DF3F56={lvl=1,domain="guild"}
,q57CD3EEEFA3ECB95={lvl=1,domain="guild"}
,q7D661083A932C919={lvl=1,domain="guild"}
,q05838AD9B1D15FD6={lvl=1,domain="guild"}
,q06CAAF9A00000000={lvl=1,giver='U02ADDBFD530EEECE'}
,q3516671600000000={lvl=1,giver='U43AEFDB254BF1C59'}
,q5B99B5A1A58C3DC7={lvl=1,domain="guild"}
,q6E113775D1CAE806={lvl=1,domain="guild"}
,q2C69E14D00000000={lvl=1,type={14,7}}
,q7DB6CCBC00000000={lvl=1,type={14,7}}
,q0B10EBE000000000={lvl=1, grp=3,giver='U26BA854F50B8CBEF'}
,q709136A200000000={lvl=1, grp=3,giver='U693EFBF844DC25E1'}
,q10CD8A617A814BE9={lvl=1}
,q315F9E4A629FFEF5={lvl=1,giver='U3268C9E95D9919A4'}
,q3BAABFAC29966494={lvl=1,giver='U3268C9E95D9919A4'}
,q59A1CDE9F9EA8DBD={lvl=1,giver='U3268C9E95D9919A4'}
,q5F3E33E9CC34A4BF={lvl=1,giver='U3268C9E95D9919A4'}
,q69076E14CF4E326A={lvl=1}
,q6E10D74BA0B6D93E={lvl=1}
,q6EC84FBBCEB71E8C={lvl=1}
,q15F25526E6CFD5D3={lvl=1,scene="Life Factory",type={8},giver='U3B05765B389FCC9F'}
,q7AB7D31F5E02605B={lvl=1,giver='U5B7FE13F2F4B3E3F'}
,q3A8018D41A751E5D={lvl=1,scene="The Caul",type={1},giver='U28B3E3811A404E05'}
,q574A9AC38F58B593={lvl=1,type={7},giver='U6461B07202246AB6'}
,q5EED1D95873702FA={lvl=1,type={7},giver='U6461B07313122D87'}
,q6E399CE7C1F6E177={lvl=1,type={7},giver='U6461B0743C48D094'}
,q0ABBF00C212801C2={lvl=1,domain="guild"}
,q0E4FCB9BA695D222={lvl=1,domain="guild"}
,q0FD504A3D03E4AFF={lvl=1,domain="guild"}
,q1C1A6EA73984BDA1={lvl=1,domain="guild"}
,q1CBDD335F01E3F18={lvl=1,domain="guild"}
,q1D6330012FF0AB64={lvl=1,domain="guild"}
,q21991B8BC76BFDBC={lvl=1,domain="guild"}
,q228A1978D480E801={lvl=1,domain="guild"}
,q336E93CD4237303C={lvl=1,domain="guild"}
,q3AFF777F4B8267D3={lvl=1,domain="guild"}
,q42A907F08439D37D={lvl=1,domain="guild"}
,q4B94F56F8BCC48FB={lvl=1,domain="guild"}
,q56BD00E48B2C0697={lvl=1,domain="guild"}
,q5CA5DA56E6AC4991={lvl=1,domain="guild"}
,q683425E0E673C4A2={lvl=1,domain="guild"}
,q696467E9C72706CE={lvl=1,domain="guild"}
,q6C9507E5F6A07574={lvl=1,domain="guild"}
,q78A1260AF10B99F5={lvl=1,domain="guild"}
,q798938F7D7B50DC9={lvl=1,domain="guild"}
,q7A44733498EFDB3C={lvl=1,domain="guild"}
,q06DE574EE00B25E8={lvl=1,domain="guild"}
,q07E72D5CAF756992={lvl=1,domain="guild"}
,q1045A8D401395C2D={lvl=1,domain="guild"}
,q17B84FFAAF8070E8={lvl=1,domain="guild"}
,q2286506F7F5DBCE0={lvl=1,domain="guild"}
,q4A89005A96996CDB={lvl=1,domain="guild"}
,q4F1C61363005BF4C={lvl=1,domain="guild"}
,q52059C5BEA90ECD6={lvl=1,domain="guild"}
,q58410976BC9E590A={lvl=1,domain="guild"}
,q617352EFCFA3A75F={lvl=1,domain="guild"}
,q65C63514B362FC8D={lvl=1,domain="guild"}
,q66F8A53BFA35B547={lvl=1,domain="guild"}
,q69CBFE95FBC4A908={lvl=1,domain="guild"}
,q69DD0E9B09AC1F74={lvl=1,domain="guild"}
,q75009F80CC754999={lvl=1,domain="guild"}
,q7CA89EC8CDE89EE7={lvl=1,domain="guild"}
,q7F4DCDA3FFF04240={lvl=1,domain="guild"}
,q3F2B621A9E955B01={lvl=1,domain="guild"}
,q59B7ACDF8BEB85C8={lvl=1,domain="guild"}
,q6951EC1F809139EE={lvl=1,domain="guild"}
,q6939AA40D9EE4F63={lvl=1,type={3}}
,q2604CAC1E66CF65D={lvl=1,domain="guild"}
,q12EAA93ACA8771EC={lvl=1,type={7,3}}
,q389B5DED94F5D768={lvl=1,type={3,7}}
,q40D0B964F90CB1E2={lvl=1,type={3,7}}
,q74608496811A751A={lvl=1,type={7,3}}
,q29A7745B00000000={lvl=1,giver='U7A7C087951A4A8E7'}
,q20E18F2900000000={lvl=1,giver='U43AEFDB254BF1C59'}
,q54ABCF9200000000={lvl=1,giver='U02ADDBFD530EEECE'}
,q1EF286D900000000={lvl=1,type={7,3}}
,q2405D23E00000000={lvl=1,type={7,3}}
,q039BE48400000000={lvl=1,type={3},giver='U4A77DFAC4B4F6BCC'}
,q1681087D00000000={lvl=1,type={3},giver='U03FCB9E574A86A74'}
,q44563BEB00000000={lvl=1,giver='U540A9BFA5F083A13'}
,q0173975579E1753F={lvl=1,type={3,7}}
,q19D1171038FFC243={lvl=1,type={3,7}}
,q7F217D93D417CDF8={lvl=1,domain="guild"}
,q62EEDE3CC6D16EEC={lvl=1,type={3}}
,q3D57733FA5256E59={lvl=1,type={7},giver='U6461B07A1977B22F'}
,q3D14B22E00000000={lvl=1}
,q66CE85F700000000={lvl=1}
,q0CDC50EA93DC9F10={lvl=1,domain="guild"}
,q1F528CE5C1719AE8={lvl=1,domain="guild"}
,q255BD514CF551E2F={lvl=1,domain="guild"}
,q2BEE5B0DB2B70D08={lvl=1,domain="guild"}
,q34ACCB72009BB602={lvl=1,domain="guild"}
,q372E45EBE85F2914={lvl=1,domain="guild"}
,q379357C1E33AEA29={lvl=1,domain="guild"}
,q39D7F688B330D2F2={lvl=1,domain="guild"}
,q3E074840931494CD={lvl=1,domain="guild"}
,q4C4BA21B84D62A02={lvl=1,domain="guild"}
,q737400DA2609E0BE={lvl=1,domain="guild"}
,q30100CB9697B7E19={lvl=1,type={7,3}}
,q7F12BAEAAA27864A={lvl=1,type={3,7}}
,q1B2134194066E8AD={lvl=1,domain="guild"}
,q0525765CC1016D01={lvl=1,domain="guild"}
,q0594E3F9F94D9F8A={lvl=1,domain="guild"}
,q12AFE6280B0DB123={lvl=1,domain="guild"}
,q13A45FA0A3F44981={lvl=1,domain="guild"}
,q2A7BAA53A4B15D79={lvl=1,domain="guild"}
,q3C0AC09B7E6BD5FB={lvl=1,domain="guild"}
,q40128F771F278D53={lvl=1,domain="guild"}
,q4028A8887CE45951={lvl=1,domain="guild"}
,q67A53DC85925DF71={lvl=1,domain="guild"}
,q67F309BF3CF619C8={lvl=1,domain="guild"}
,q0825C71AA002A7BB={lvl=1,domain="guild"}
,q0A429772AE7716BE={lvl=1,domain="guild"}
,q153E50F28EE4896F={lvl=1,domain="guild"}
,q16D2877925656852={lvl=1,domain="guild"}
,q1C158903A3835C32={lvl=1,domain="guild"}
,q318B05D5A635F6F2={lvl=1,domain="guild"}
,q348047564DEAD1F7={lvl=1,domain="guild"}
,q34BE2F7AB6BBB218={lvl=1,domain="guild"}
,q3E545F788C1DA51A={lvl=1,domain="guild"}
,q654469C180B4FD67={lvl=1,domain="guild"}
,q160CFAFA94129781={lvl=1,type={3,7},giver='U54ACB4AA4496AA01'}
,q1D8FD8DEB0E3F677={lvl=1,type={3,7},giver='U0DC1F6422E0A41DD'}
,qFB056C5C27D76FAB={lvl=1,type={5},giver='UFD22B267779B9FAE'}
,qFA1E2BDF7A1604C6={lvl=1,type={5},giver='UFE339BC10EAD87C7'}
,qFEAFFB8B79CBD495={lvl=1,type={5},giver='UFFBBFEA32FB1FF2F'}
,qFCB45316EAE2D420={lvl=1,type={5},giver='UFFBBFEA438EFA23C'}
,q0B65CE6AC44A5FD3={lvl=1}
,q2E4744D775899287={lvl=1}
,q71E4F1B500000000={lvl=1,craft={{key='I3921F29036776C8D,1C384E5E6BD141EA,,,,,,', count=1}},type={25}}
,q12B37E1B00000000={lvl=1}
,q145DBB2B00000000={lvl=1}
,q413AB40100000000={lvl=1}
,q461C5DA400000000={lvl=1}
,q7A35DE8754FF19FB={lvl=1,domain="guild"}
,q61B82F7700000000={lvl=1,type={3},giver='U3018340A25178ADD'}
,q7184B12C00000000={lvl=1,type={3},giver='U02ADDBFC42D02BF9'}
,q18DF050DE2FEE510={lvl=1,domain="guild"}
,qFF093F5B87EAD057={lvl=1,type={7,3},giver='U0DC1F6422E0A41DD'}
,q6D02F5516C7E4DB9={lvl=1,type={7,3},giver='U54ACB4AA4496AA01'}
,q08C7147A0FE73BB7={lvl=1,type={7},giver='U0DC1F6422E0A41DD'}
,q3EB78A5241F28363={lvl=1,type={7},giver='U54ACB4AA4496AA01'}
,q7AD391D059026307={lvl=1,domain="guild"}
,q0129546700000000={lvl=1,type={3},giver='U4A77DFAC4B4F6BCC'}
,q1A1826AB00000000={lvl=1,type={3},giver='U03FCB9E574A86A74'}
,q16436631C55EDCD5={lvl=1,use={{key='I3EE745A477C28DD1,8006D1BDB6B43D73,,,,,,', count=8}},type={3,7}}
,qFD320953C284F438={lvl=1,type={5},giver='UFD9357F4131C3CB1'}
,qFC00A055416DA9E3={lvl=1,type={5},giver='UFD9357F4131C3CB1'}
,q35DE6A52C3819444={lvl=1,type={3,7},giver='U54ACB4AA4496AA01'}
,q3E0F1E363444EAB5={lvl=1,type={3,7},giver='U0DC1F6422E0A41DD'}
,q1A3E56DBA174E1C6={lvl=1,type={2,3},giver='U145B7FB645B6B4FC'}
,q0A7AD602B728EEEB={lvl=1,giver='U5863277A1BB36D18'}
,q0EC04EDA215BAA19={lvl=1,giver='U5863277769363C35'}
,q11C6E086D2C572DB={lvl=1,giver='U586327787A6CE73A'}
,q2573CE313EBA6CAE={lvl=1,giver='U586327790B5AAA0B'}
,q5E0F3E6DAFE33182={lvl=1,type={5},giver='U276806FF34881CA5'}
,q7600E570BC8F6CB0={lvl=1,type={5},giver='U014B085D492430F9'}
,qFD8B5FE685AA73E9={lvl=1,type={5},giver='UFE339BC10EAD87C7'}
,qFB5A1E4AF5C0D19E={lvl=1,type={5},giver='UFD22B267779B9FAE'}
,q4530D60526D7087C={lvl=1,type={3,7},giver='U1E29CA0F75F51F78'}
,q4C9A70E2E9AF63AC={lvl=1,type={3,7},giver='U1E29CA0F75F51F78'}
,q26EA30779F155BD1={lvl=1,type={7,3}}
,q1C5D24EB99FDBB27={lvl=1,type={7,3}}
,q6F29C0FCCD493D30={lvl=1,type={3,7}}
,q07C89C6C00000000={lvl=1}
,q4222CAC270D10A97={lvl=1,type={4},giver='U15AF83604F4DE562'}
,q6D498B161608581B={lvl=1,type={4},giver='U50740AB408ED4F82'}
,q3686DA57E3686EFD={lvl=1,type={5},giver='U3E4494A7285DDD7A'}
,q4CDC944DF02ABB3A={lvl=1,type={5},giver='U4794F3B35F2929AD'}
,qFD55EFE599C10FCD={lvl=1,type={4},giver='U276806FF34881CA5'}
,q2BE004B7FB3ECBF7={lvl=1,type={4},giver='U014B085D492430F9'}
,q054866D100000000={lvl=1,type={3},giver='U12E0C22B7857756C'}
,q461A464500000000={lvl=1,type={3},giver='U0F131A257D84D0A0'}
,q129E132622926F21={lvl=1,type={4},giver='U276806FF34881CA5'}
,q143F692FD9E361BB={lvl=1,type={4},giver='U014B085D492430F9'}
,q00D96C1600000000={lvl=1,type={3}}
,q0C61E9B800000000={lvl=1,type={3}}
,q18C97745054E26F8={lvl=1,type={3}}
,q0A16E84270E644EE={lvl=1,type={7},giver='U67C5C76F78850085'}
,q0B647E793598A9EE={lvl=1,domain="guild"}
,q0E5BE419BF687091={lvl=1,domain="guild"}
,q1211C851B3592922={lvl=1,domain="guild"}
,q1688211297E64E92={lvl=1,domain="guild"}
,q1A1C355C11A23A40={lvl=1,domain="guild"}
,q4048BB3BDB843C8C={lvl=1,domain="guild"}
,q60F49049DE2A0103={lvl=1,domain="guild"}
,q6FB6C737E21A9BC7={lvl=1,domain="guild"}
,q60FDFA0EF7E07B48={lvl=1,domain="guild"}
,q1B77C01CC3B644F4={lvl=1}
,q0B9C214CBD2A500E={lvl=1,type={7},giver='U1E29CA0F75F51F78'}
,q5B2951378F928D7F={lvl=1,type={7},giver='U1E29CA0F75F51F78'}
,q40F2CC96E764C54A={lvl=1,type={3,7},giver='U1E29CA0F75F51F78'}
,q5B4A55AD67181932={lvl=1,type={3,7},giver='U1E29CA0F75F51F78'}
,q1E533A0A5C958F09={lvl=1,type={7,3},giver='U512814DF24D84EB6'}
,q422806BAE16C94B0={lvl=1,type={7,3},giver='U11A2780A2F865470'}
,q076E4E7600000000={lvl=1,type={7,3},giver='U3FD8423364C88F64'}
,q2864C63E00000000={lvl=1,type={7,3},giver='U41EEB7B07171B147'}
,q3A6ADA8E00000000={lvl=1,type={3}}
,q460DB48E00000000={lvl=1,type={3}}
,q14D7DB12B91EC9CE={lvl=1,type={7},giver='U0F131A257D84D0A0'}
,q4F0A0A2398502ED3={lvl=1,type={7},giver='U12E0C22B7857756C'}
,q10DAD4B700000000={lvl=1,type={13},giver='U3018340A25178ADD'}
,q460D631C00000000={lvl=1,type={13},giver='U02ADDBFC42D02BF9'}
,q66DF68EA00000000={lvl=1,type={11,1,3}}
,q7128A2A700000000={lvl=1,type={11,1,3}}
,q04C9700A9064178F={lvl=1,domain="guild"}
,q0614A244C5EA69BE={lvl=1,domain="guild"}
,q1980CE5556916591={lvl=1,domain="guild"}
,q198B45F51FC616C5={lvl=1,domain="guild"}
,q1B75AE897D34A83F={lvl=1,domain="guild"}
,q2DAC0CBEA65A306A={lvl=1,domain="guild"}
,q43613A8B9E8B2679={lvl=1,domain="guild"}
,q43B59D5CB38BA1F6={lvl=1,domain="guild"}
,q46ED9A08DC4D8C15={lvl=1,domain="guild"}
,q4795CDBAB327B021={lvl=1,domain="guild"}
,q4F5F62D07F1E09F2={lvl=1,domain="guild"}
,q617EC808FA4A00B3={lvl=1,domain="guild"}
,q672C9B8D2C30B2B6={lvl=1,domain="guild"}
,q72ABFD599348E51C={lvl=1,domain="guild"}
,q76B71152DB5E1076={lvl=1,domain="guild"}
,q791F0A3FD316FD43={lvl=1,domain="guild"}
,q00A89E65C4D0C623={lvl=1,type={3,7}}
,q2D2C7410C6C625AA={lvl=1,type={7,3}}
,q2D88A2B5E39A26D6={lvl=1,type={3,7}}
,q309AFFE021478B14={lvl=1,type={7,3}}
,q3E6F5F63ABE35A60={lvl=1,type={7,3}}
,q4087D3C826DC41CC={lvl=1,type={7,3}}
,q44F734099E593381={lvl=1,type={7,3}}
,q48B4C3046ED9C257={lvl=1,type={3,7}}
,q4A6DBDCDD7164032={lvl=1,type={7,3}}
,q5894C2461326CFF0={lvl=1,type={7,3}}
,q6923039CD1EF2FB3={lvl=1,type={3,7}}
,q7917CCFF8A9890ED={lvl=1,type={7,3}}
,q0FF3C13AB6042858={lvl=1,domain="guild"}
,q1DDA2F7FEC6CEB7B={lvl=1,domain="guild"}
,q4233A3D21DA5C9DF={lvl=1,domain="guild"}
,q7C190BD7AB896BDE={lvl=1,domain="guild"}
,q7D2A9BA2589F62A1={lvl=1,domain="guild"}
,q3B6FE1EFB6D57ADB={lvl=1,domain="guild"}
,q155BE9BF107A142A={lvl=1,type={3}}
,q2B8DCF2CDEC74B20={lvl=1,domain="guild"}
,q14ECBEE288550BFA={lvl=1,type={4},giver='U014B085D492430F9'}
,q5FDC90D9CC4C5BB5={lvl=1,type={4},giver='U276806FF34881CA5'}
,q119152C3583B2D29={lvl=1,type={3},giver='U04E6F6D806C528C3'}
,q7BE42160B60A46DB={lvl=1,type={3},giver='U2A78E42275D5E668'}
,q34F78B869A0C628E={lvl=1,domain="guild"}
,q36066485B8F7225D={lvl=1,domain="guild"}
,q46CB08CBB8E99EA2={lvl=1,domain="guild"}
,q4749C55B9EEE57EC={lvl=1,domain="guild"}
,q65CFCCB70C7A0677={lvl=1,domain="guild"}
,q666104637463B58C={lvl=1,domain="guild"}
,q700B014C44C1960A={lvl=1,domain="guild"}
,q74AD17BB582A1B02={lvl=1,domain="guild"}
,q5FF434B000000000={lvl=1,type={3,6}}
,q63FF2C3200000000={lvl=1,type={6,3}}
,q664F953E00000000={lvl=1,type={7},giver='U5999EB04361316E1'}
,q67AC529A00000000={lvl=1,type={7},giver='U211BD9DB0055D66F'}
,q46B989D800000000={lvl=1,type={3,10}}
,q5C58B23E00000000={lvl=1,type={10,3}}
,q1363FE28D5954EB0={lvl=1,domain="guild"}
,q3A151E58BD36AD89={lvl=1,domain="guild"}
,q45A77B9D00000000={lvl=1,type={7,14}}
,q5286BA7400000000={lvl=1,type={7,14}}
,q66D63E5700000000={lvl=1,type={7,14}}
,q77903AA400000000={lvl=1,type={7,14}}
,q11A02B0B51AD41BD={lvl=1,type={7},giver='U6461B0787F23C4C9'}
,q15AC153AFFE1A267={lvl=1,type={7},giver='U6461B07908198FDE'}
,q6C953AE5D92EC29D={lvl=1,type={7},giver='U2EB62DDB074EF0A7'}
,q4969BA6487369CFB={lvl=1,type={7},giver='U5B15628B7FF72C84'}
,q38A11B4EEFCE1ED8={lvl=1,type={7},giver='U512814DF24D84EB6'}
,q3F3AD20DF449E907={lvl=1,type={7},giver='U11A2780A2F865470'}
,q07EE078D00000000={lvl=1,type={14,7}}
,q0F4805ED00000000={lvl=1,type={7,14}}
,q4DF7A94100000000={lvl=1,type={14,7}}
,q7D7CAC9F00000000={lvl=1,type={14,7}}
,q3CF6B15A1C01ACC1={lvl=1,type={3,18}}
,q4986965447FE0B80={lvl=1,type={3,18}}
,q4901DA2700000000={lvl=1,type={3,10}}
,q69D2790F00000000={lvl=1,type={3,10}}
,q0A0546B000000000={lvl=1, grp=3,giver='U4A77DFAC4B4F6BCC'}
,q227C05C000000000={lvl=1, grp=3,giver='U03FCB9E574A86A74'}
,q0B06702C83982A30={lvl=1}
,q0F39AE4BE10A3E2A={lvl=1}
,q124ED4C97C08A70C={lvl=1}
,q163E95F5BB264460={lvl=1}
,q1D14EBEBA14CF4A4={lvl=1}
,q2F4EAF9891F64538={lvl=1}
,q35C066E89AB4EAD6={lvl=1}
,q3D9393A10221A9CC={lvl=1}
,q43A21B6FF2935EE7={lvl=1}
,q522C7AB6A6993C3F={lvl=1}
,q54961E42B1D00F0D={lvl=1}
,q557C5659AD199E58={lvl=1}
,q5CB7A313D1294D67={lvl=1}
,q6643A7A2FBF4BA44={lvl=1}
,q6A18079338CC610D={lvl=1}
,q6D076A09AA65F800={lvl=1}
,q70AB30540484254D={lvl=1}
,q741F9530043B8D4D={lvl=1}
,q7C9B10B3688EC7CE={lvl=1}
,q7D5B5239FFD3F726={lvl=1}
,q00C35AFF9CA5AA5C={lvl=1}
,q0834A18B67CA95DA={lvl=1}
,q0B72CE004B65CD1C={lvl=1}
,q0E1FB3987B7840FF={lvl=1}
,q157FBDED00B7484F={lvl=1}
,q18CDDD686E6A16B5={lvl=1}
,q22631DB0BE481945={lvl=1}
,q261B9242C121C6F0={lvl=1}
,q3689D32847B345A4={lvl=1}
,q37BB4E7E8D4125CA={lvl=1}
,q4EC7496794F7FE61={lvl=1}
,q53C5449A1EF38A81={lvl=1}
,q55873CED4B99E5B3={lvl=1}
,q56467C1A903DD4FE={lvl=1}
,q5886578CF65816F0={lvl=1}
,q599DD26855175F52={lvl=1}
,q62A5A13AC4A9299B={lvl=1}
,q6C337C81F2C4F814={lvl=1}
,q73F01C1F23F5C590={lvl=1}
,q7AFC8BCFA1CD5918={lvl=1}
,q05C62454A1F40DD4={lvl=1}
,q099348CDB4A352B1={lvl=1}
,q0C66676176E17785={lvl=1}
,q0F410C91838C2522={lvl=1}
,q1967DE899EC94500={lvl=1}
,q21095C9C6C4E256D={lvl=1}
,q210A81BB6239381C={lvl=1}
,q24C9AEB7C2242CE7={lvl=1}
,q26531C5C7CEF05CA={lvl=1}
,q2E03BB58C6F33955={lvl=1}
,q3B857FB66F85A858={lvl=1}
,q3C77A363FE0C9E3D={lvl=1}
,q49E28C12B84258AD={lvl=1}
,q5E010BBCE7A4B1BA={lvl=1}
,q6FF03CE6E6043FD6={lvl=1}
,q73473AD7360BB1FC={lvl=1}
,q75A6E197A1EB7C0D={lvl=1}
,q76AC4189A3767144={lvl=1}
,q7800E35679E0C064={lvl=1}
,q7AC7D2C8F4CCF920={lvl=1}
,q58FBF95B00000000={lvl=1,type={7},giver='U5999EB04361316E1'}
,q73FDE87800000000={lvl=1,type={7},giver='U211BD9DB0055D66F'}
,q0A447789FDB9363D={lvl=1,giver='U1AE0E4AA477FACA4'}
,qFA61CE3D76EBEFA1={lvl=1,type={7},giver='U12E0C22B7857756C'}
,q19530F51A0812E1F={lvl=1,type={7},giver='U0F131A257D84D0A0'}
,q38807F7ADC004913={lvl=1,type={7},giver='U12E0C22B7857756C'}
,q40B7E7183BF76BA7={lvl=1,type={7},giver='U0F131A257D84D0A0'}
,q46CDF22B8116B224={lvl=1,type={7},giver='U0F131A257D84D0A0'}
,q6137336BDA09EBC7={lvl=1,type={7},giver='U12E0C22B7857756C'}
,q05B9940600000000={lvl=1,type={3}}
,q61760CBF00000000={lvl=1,type={3}}
,q47BA1DD4CD5B7D6C={lvl=1,domain="guild"}
,q07ABA76800000000={lvl=1,giver='U3018340A25178ADD'}
,q4EA43A4400000000={lvl=1,giver='U02ADDBFC42D02BF9'}
,q051A5CE200000000={lvl=1,type={3}}
,q142A0A7900000000={lvl=1,type={3}}
,q436DAD13111D963E={lvl=1,type={7},giver='U6461B07171CFA7A1'}
,q72DE920FAFC6DD68={lvl=1,type={7},giver='U6461B06F57BB3A43'}
,q7D0F9E5C8E21AE53={lvl=1,type={7},giver='U6461B0706091FD50'}
,q198862F1BD71C418={lvl=1,type={7,3}}
,q1E67601394310183={lvl=1,type={3,7}}
,q310B60384153E265={lvl=1,type={3}}
,q3B70600765AD203C={lvl=1,type={3}}
,q46E97FA8181CB397={lvl=1,domain="guild"}
,q54FCFC66EB688CF2={lvl=1,type={7},giver='U7B4EAD545093264A'}
,q262049AEF345EA9A={lvl=1,type={7},giver='U7E7782261231F04E'}
,q3758D1AC9BA73035={lvl=1,type={7},giver='U7E7782261231F04E'}
,q1C84AE3BDBB887A2={lvl=1,domain="guild"}
,q394075F72ED5758B={lvl=1,domain="guild"}
,q5E4F1D5BFA3603EF={lvl=1,domain="guild"}
,q6DF37DF588D853C7={lvl=1,domain="guild"}
,q2031E607B3452D42={lvl=1,type={3}}
,q3F5E83A800000000={lvl=1,type={11,3}}
,q486014A200000000={lvl=1,type={3,11}}
,q45A8948D00000000={lvl=1,type={3}}
,q56036F1400000000={lvl=1,type={3}}
,q14FFFADE00000000={lvl=1,type={7,14}}
,q412CA9DB00000000={lvl=1,type={7,14}}
,q14AB78B200000000={lvl=1,type={3}}
,q31B15B1F00000000={lvl=1,type={3}}
,q16F8706B00000000={lvl=1,type={3,7}}
,q51791CDD00000000={lvl=1,type={7,3}}
,q2E828616F0716CA1={lvl=1,domain="guild"}
,q2020EDA9BA1B6D7E={lvl=1}
,q0FDD87A000000000={lvl=1,type={3,7}}
,q66C1DF6600000000={lvl=1,type={7,3}}
,q29627AD000000000={lvl=1,type={1,3}}
,q730F531500000000={lvl=1,type={1,3}}
,q7AD1419B29BCF8C1={lvl=1,domain="guild",giver='U6E70B4861BDE77A5'}
,q6F2FD035A0FA4926={lvl=1,type={7},giver='U11B3076717F00200'}
,q04F3FD74CC6D8EB1={lvl=1,domain="guild"}
,q0B9DA044725DA237={lvl=1,domain="guild"}
,q25A65AA9E24EA137={lvl=1,domain="guild"}
,q4F994717C869788D={lvl=1,domain="guild"}
,q54EEDEC5D79C1876={lvl=1,domain="guild"}
,q61572C80DE5D2135={lvl=1,domain="guild"}
,q6ABD51C5F55C7B83={lvl=1,domain="guild"}
,q6AC98192CFAFCF60={lvl=1,domain="guild"}
,q7A2C49BEAC0C80AD={lvl=1,domain="guild"}
,q2F68A61000000000={lvl=1,domain="pvp",type={3},giver='U693EFBF844DC25E1'}
,q4325BD3100000000={lvl=1,domain="pvp",type={3},giver='U0626A65A704B52A2'}
,q2CDC22F900000000={lvl=1,domain="pvp",type={3},giver='U26BA854F50B8CBEF'}
,q54FA2A0100000000={lvl=1,domain="pvp",type={3},giver='U0626A6596712A85D'}
,q3BBA0FD200000000={lvl=1, grp=3,giver='U0626A65A704B52A2'}
,q4E4441A700000000={lvl=1, grp=3,giver='U0626A6596712A85D'}
,q1D7086F600000000={lvl=1,type={3},giver='U37FF8748759718EA'}
,q598FF52A00000000={lvl=1,type={3},giver='U43FE35DE475FD951'}
,q3EB1B94300000000={lvl=1,type={11,3}}
,q4A2AA33900000000={lvl=1,type={3,11}}
,q02B52E8F3064F611={lvl=1,domain="guild"}
,q150E3519DCD52CA3={lvl=1,domain="guild"}
,q1F963DE0FB58DB1D={lvl=1,domain="guild"}
,q2EA3405CA7B99404={lvl=1,domain="guild"}
,q545A0DD5DCBB9106={lvl=1,domain="guild"}
,q56C9D4B901D08004={lvl=1,domain="guild"}
,q5CA26249C4CB9EA8={lvl=1,domain="guild"}
,q5F3A3F3FAE984E53={lvl=1,domain="guild"}
,q63FFA919C7898212={lvl=1,domain="guild"}
,q6FDCECD59BD71F0B={lvl=1,domain="guild"}
,q091C184651FC16B4={lvl=1,type={3,7}}
,q649F7E3068FC022C={lvl=1,type={7,3}}
,q2DE00880029EE79F={lvl=1,domain="guild"}
,qFD9FA84C7629DC7E={lvl=1,giver='UFFAEA81774E58CDF'}
,q52A7792D00000000={lvl=1,giver='U43AEFDB61016779D'}
,q73D718DA00000000={lvl=1,giver='U02ADDBFA208DBD9A'}
,q2E2CF89C00000000={lvl=1,giver='U43AEFDB36595C6AE'}
,q39741D2800000000={lvl=1,giver='U02ADDBFF0D5D542C'}
,q33C1808800000000={lvl=1,giver='U3018340A25178ADD'}
,q7256EFFB00000000={lvl=1,giver='U02ADDBFC42D02BF9'}
,q2814EA7A5A7C962C={lvl=1,type={4},giver='U014B085D492430F9'}
,q2B04BB2EE820B26D={lvl=1,type={4},giver='U276806FF34881CA5'}
,q55B406C400000000={lvl=1,type={3}}
,q6B04767700000000={lvl=1,type={3}}
,q0758AC2286DF3E67={lvl=1,type={7},giver='U1D0517615BAB7D47'}
,q42AAE3D67EFD3770={lvl=1,domain="guild"}
,q1F7F3E3200000000={lvl=1, grp=3,giver='U0626A6596712A85D'}
,q37C4A25E00000000={lvl=1, grp=3,giver='U0626A65A704B52A2'}
,q5A27C5E81204E464={lvl=1,domain="guild"}
,q0A03207E00000000={lvl=1,giver='U02ADDBFC42D02BF9'}
,q4AFA2A8900000000={lvl=1,giver='U3018340A25178ADD'}
,q240E20C100000000={lvl=1,giver='U3018340A25178ADD'}
,q54D201AF00000000={lvl=1,giver='U02ADDBFC42D02BF9'}
,q055CC3A0886AB7CB={lvl=1,domain="guild"}
,q116899C0905DBE9B={lvl=1,domain="guild"}
,q1A1759CDABD532EB={lvl=1,domain="guild"}
,q1EAA23C9EF7ACD32={lvl=1,domain="guild"}
,q3B665EBECB9A9D34={lvl=1,domain="guild"}
,q3F5480CC83C92A53={lvl=1,domain="guild"}
,q549C866AE654E5FD={lvl=1,domain="guild"}
,q5C8DC0FB1FB141F0={lvl=1,domain="guild"}
,q753668F31CE97528={lvl=1,domain="guild"}
,q75C3A8970A68300A={lvl=1,domain="guild"}
,q1F66B931988EA22B={lvl=1,domain="guild"}
,q3AB28212A9625CB7={lvl=1,domain="guild"}
,q40D01725E74D09BA={lvl=1,domain="guild"}
,q6689B188A639A8D4={lvl=1,domain="guild"}
,q6A5C6CBF40A172F7={lvl=1,domain="guild"}
,q755BD151065B53CA={lvl=1,domain="guild"}
,q6B0D27E9EBA0D421={lvl=1,domain="guild"}
,q56BE0F4000000000={lvl=1,type={7},giver='U5999EB04361316E1'}
,q7F404F0F00000000={lvl=1,type={7},giver='U211BD9DB0055D66F'}
,q1655B0ED23F02F88={lvl=1}
,q4E4DCE8E8A3F112F={lvl=1}
,q2CCCB1E500000000={lvl=1,type={1,11,3}}
,q3E0CF4B900000000={lvl=1,type={3,11,1}}
,q451A3A4600000000={lvl=1,type={4},giver='U56EE87AF0551FDDD'}
,q65840D3D00000000={lvl=1,type={4},giver='U13C8124C4DF5C32A'}
,q0C3141817B6CBFF1={lvl=1,type={4},giver='U276806FF34881CA5'}
,q5F7E82D2A91B67B3={lvl=1,type={4},giver='U014B085D492430F9'}
,q7320F102DC86F7F1={lvl=1,type={7,3}}
,q7C2BDE76C084E22A={lvl=1,type={3,7}}
,q008B9D9C442AD31A={lvl=1,scene="Life Factory",type={8}}
,q027C96DEB809BBB4={lvl=1,scene="Life Factory",type={8}}
,q02FD2CA4B0105B91={lvl=1,scene="Life Factory",type={8}}
,q0589C5E0A6BB3724={lvl=1,scene="Life Factory",type={8}}
,q07B626E2CC704450={lvl=1,scene="Life Factory",type={8},giver='U2864945F01522CE6'}
,q0BFB3E42876A088A={lvl=1,scene="Life Factory",type={8},giver='U535C25B576DAC6D7'}
,q0C6C31797EA88DF2={lvl=1,scene="Life Factory",type={8},giver='U24AB42D87B94E8B3'}
,q0F32FCD3A8EE3C7C={lvl=1,scene="Life Factory",type={8},giver='U16469779648F5245'}
,q0F34532188DFB752={lvl=1,scene="Life Factory",type={8},giver='U28B149C4249A51BA'}
,q10F8447FB10AB901={lvl=1,scene="Life Factory",type={8},giver='U53614641119EDEA5'}
,q11DC0D5E2A54C2ED={lvl=1,scene="Life Factory",type={8},giver='U28B149C4249A51BA'}
,q13657B04FA48EF42={lvl=1,scene="Life Factory",type={8},giver='U16469779648F5245'}
,q143CF9247C533DC2={lvl=1,scene="Life Factory",type={8},giver='U53614641119EDEA5'}
,q16DDDB74E47C5AC6={lvl=1,scene="Life Factory",type={8},giver='U2864945F01522CE6'}
,q18DBC3567DC8558C={lvl=1,scene="Life Factory",type={8},giver='U28B149C4249A51BA'}
,q1A63C44773F0D707={lvl=1,scene="Life Factory",type={8},giver='U53614641119EDEA5'}
,q1F29D5C119251A2B={lvl=1,scene="Life Factory",type={8},giver='U535C25B576DAC6D7'}
,q2285D538D58D4367={lvl=1,scene="Life Factory",type={8}}
,q25E52B5F2C6D08D0={lvl=1,scene="Life Factory",type={8}}
,q31335871CE37B7A5={lvl=1,scene="Life Factory",type={8}}
,q3406A0C7ACF01324={lvl=1,scene="Life Factory",type={8}}
,q39FEAE72E678BC09={lvl=1,scene="Life Factory",type={8},giver='U535C25B576DAC6D7'}
,q3A23BC0B3823FBCB={lvl=1,scene="Life Factory",type={8},giver='U2864945F01522CE6'}
,q3D995EA7CC1CEE02={lvl=1,scene="Life Factory",type={8}}
,q3F6E3315E1CB0C29={lvl=1,scene="Life Factory",type={8},giver='U16469779648F5245'}
,q3FFE97F548DF9BD9={lvl=1,scene="Life Factory",type={8}}
,q4473657AD8F8D779={lvl=1,scene="Life Factory",type={8}}
,q44FA29080FEC60B8={lvl=1,scene="Life Factory",type={8}}
,q47AC719E462CB09C={lvl=1,scene="Life Factory",type={8}}
,q48826451B78A431A={lvl=1,scene="Life Factory",type={8}}
,q48B68771D14D4030={lvl=1,scene="Life Factory",type={8}}
,q491EC941CD83213E={lvl=1,scene="Life Factory",type={8},giver='U2864945F01522CE6'}
,q5010B8537B3FE15C={lvl=1,scene="Life Factory",type={8},giver='U53614641119EDEA5'}
,q53E0D55ACBF6FBBF={lvl=1,scene="Life Factory",type={8}}
,q541308EFECB53EB0={lvl=1,scene="Life Factory",type={8}}
,q55B9969DD1A8DC3F={lvl=1,scene="Life Factory",type={8},giver='U535C25B576DAC6D7'}
,q567C298107F68731={lvl=1,scene="Life Factory",type={8}}
,q597EA2FF052AE2C9={lvl=1,scene="Life Factory",type={8},giver='U28B149C4249A51BA'}
,q5D169D5C626BEA5E={lvl=1,scene="Life Factory",type={8},giver='U24AB42D87B94E8B3'}
,q61B0D00986D424BA={lvl=1,scene="Life Factory",type={8}}
,q62F7B8348CEBA9AC={lvl=1,scene="Life Factory",type={8},giver='U24AB42D87B94E8B3'}
,q631D5EB94FF5E0AD={lvl=1,scene="Life Factory",type={8},giver='U16469779648F5245'}
,q67C11E43C8504966={lvl=1,scene="Life Factory",type={8}}
,q6DE5B1F78C723389={lvl=1,scene="Life Factory",type={8}}
,q71CCA837801D33AF={lvl=1,scene="Life Factory",type={8},giver='U24AB42D87B94E8B3'}
,q773DDF02D378A3B0={lvl=1,scene="Life Factory",type={8}}
,q7B78B30E6ACEDF61={lvl=1,scene="Life Factory",type={8}}
,q7D01AA6CB0A2F5EA={lvl=1,scene="Life Factory",type={8}}
,q44D452DE0EDFB191={lvl=1,domain="guild"}
,q670B6A655BF34BEE={lvl=1,domain="guild"}
,q5F8D13B4D64C51D6={lvl=1,domain="guild"}
,q5FB1FE6B0A1E2EC3={lvl=1,domain="guild"}
,q7083D354C7682A7D={lvl=1,type={3,18}}
,q41F82EDBB6D81D72={lvl=1,type={18,3}}
,q626FE47E47732F7C={lvl=2,scene="The Caul",type={6},giver='U28B3E3811A404E05'}
,q75129985016090BB={lvl=2,scene="Marlin's Watch",type={1}}
,q7F61901EDD62025A={lvl=2,scene="Marlin's Watch",type={1}}
,q32A77BC595EC977A={lvl=2,giver='U035B3AD51EE0E5AB'}
,q44BB7EB4BFC01F04={lvl=2,scene="Marlin's Watch",type={4},giver='U04BBAEE76C5C1310'}
,q3A101BACFF3705BC={lvl=2}
,q4C26521C838C078C={lvl=2}
,q61E27E96950518A4={lvl=2,giver='U1AE0E4AA477FACA4'}
,q6101F65669658220={lvl=2}
,q3C62B29A00000000={lvl=3,scene="The Sinkhole",type={1,4}}
,q5E1AFA8593763879={lvl=3,scene="The Sinkhole",type={1},giver='U297CCE164D5D4466'}
,q5352077500000000={lvl=3,use={{key='I423902563F98D35C,2C63CE4CE06A3B46,,,,,,', count=6}}}
,q2814BFA2CDE69DEC={lvl=3,use={{key='I47B975F229F4EA2F,1C39C5C37C82DC47,,,,,,', count=3}},giver='U7CF26A3468786357'}
,q368920EF00000000={lvl=3,use={{key='I2E937CE552E7C675,D77B5DE2AC5F4E9F,,,,,,', count=6}}}
,q16D7B26E00000000={lvl=3,scene="The Sinkhole",type={4,1}}
,q4B606DA5D7D6A298={lvl=3,scene="Lastlight",type={6}}
,q4AC820F400000000={lvl=3,scene="The Sinkhole",type={1,4}}
,q21014C7C3BE2F4D5={lvl=4,scene="Lastlight",use={{key='I514BA01DBE59C1F1,702981CF817A39E0,,,,,,', count=3}},type={10,1},giver='U297CCE164D5D4466'}
,q112E8F3EA627C2FB={lvl=4,scene="Warden's Hollow",type={8}}
,q2C05F379EDADB168={lvl=4,scene="Warden's Hollow",type={8}}
,q2F45D359A3671009={lvl=4,scene="Warden's Hollow",type={8}}
,q6C25AB58CC0B2CAE={lvl=4,scene="Warden's Hollow",type={8}}
,q5CF0B38EF1339EA8={lvl=4}
,q6D2366261419FA4D={lvl=4,giver='U7CF26A3468786357'}
,q5A127A38C0622472={lvl=4}
,q45663BB544A1FFFC={lvl=4,scene="Lastlight",type={1}}
,q7D1BA8A240B0823B={lvl=5,scene="Dead Wood",type={4,1}}
,q20C81C35D376E692={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q218B67CDA2A3558F={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q2A64F6FBD7A7865A={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q2F987B759A9885D2={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q34B7953FB4047ED8={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q3CFE3E9FB004B24D={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q3D1334F78423D61B={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q44BD03A73DC09C01={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q45A771DB9739F08C={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q6F7D66D894EA5CF7={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q05A9273C7D8123B5={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q0C41A4A2C2F90534={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q1CB6F69CA9B21273={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q574B4B54AD108C5B={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q5BD17E9BB5B46A1B={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q0B952130B38C12E0={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q28DA4FF6D06F4373={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q42C099A3EDD343FA={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q610463A9D4EFEFFF={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q625107E6A720EACA={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q04110DD8AD3852CB={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q06DEDAC8B1A9E01A={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q16D2C5A87F7C1D4A={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q4C378C6AFA1871F1={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q70741E7A6EDD813D={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q0C5FE38AF8214950={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q1C8A081FA89567E3={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q2B1AA1B3B5A4D795={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q3F72D64AD0D588D1={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q777C72FF9A25982D={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q1AE55A3AC8600B31={lvl=5}
,q215E0CAAB280B2BD={lvl=5,scene="Dead Wood",type={1,6},giver='U5568079A32CAB277'}
,q2608995D5062D164={lvl=5,scene="Dead Wood",type={1,6}}
,q2BA17996BAFA78BA={lvl=5,scene="Dead Wood",type={6,1}}
,q2DC15C76DD8B346D={lvl=5,scene="Dead Wood",type={6,1},giver='U5568079A32CAB277'}
,q2E3479F5C5D6FDA3={lvl=5,scene="Dead Wood",type={1,6}}
,q344D62ABE7E3E190={lvl=5,scene="Dead Wood",type={1,6}}
,q5CFEC884E318FED3={lvl=5,scene="Dead Wood",type={1,6},giver='U5568079A32CAB277'}
,q628C2799D1C7D3F5={lvl=5,scene="Dead Wood",type={6,1},giver='U5568079A32CAB277'}
,q0807000CEFBE77B2={lvl=5,giver='U2BA0B645635718DF'}
,q302DB73193F58313={lvl=5}
,q54F8743407D74D29={lvl=5}
,q14DBA414D1148511={lvl=5,scene="Lost March",type={10},giver='U5568079A32CAB277'}
,q6B6D18E0C3C342C3={lvl=5}
,q2F778F38C6C0F869={lvl=5}
,q30B658A4337A92B3={lvl=5}
,q56EC8C55EB1857ED={lvl=5}
,q7A8BF03CA02B39D7={lvl=5}
,q00D501DEBC754C32={lvl=5,giver='U2BA0B645635718DF'}
,q0538D4AF139BA0E1={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q104141A0BA8FCECF={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q46A69DC5980881BD={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q497C275144FEC8C0={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q4A8B31928167A46B={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q5D8F01196E6C676A={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q625AF8AE4386DD07={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q67C483A177FC2F8F={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q71053F88F3826509={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q7E5BC021724C1490={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q0354CD91C0CA04D4={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q061A31464B012769={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q30C062EAE27D52E9={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q402323FD50863EC5={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q5AB82BC16F0E7C8B={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q7C8F04780D1DC3F9={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q7D66723FB4AAF6B2={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q2F723CE9FEFF4801={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q4AC93328D591D3E9={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q4DECB68EBA15AEB3={lvl=5,domain="guild",giver='U75FBE0CA773819E9'}
,q0091ECE3A446FC20={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q084300C9659C5942={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q1130A27D988AA723={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q128FA618910D0BB4={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q188DAD8F59BC3E1E={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q1BD2F91BB64E017A={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q2CC0BF7EBF571350={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q4B7AEEC9B839021E={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q5AD7692AD9AEB20F={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q6683C40FEAB582ED={lvl=5,domain="guild",giver='U501D431647F9ADB3'}
,q36BE25E6F9A94EDB={lvl=5,domain="guild"}
,q4EF25D8AAA899962={lvl=5,scene="Dead Wood",use={{key='I1700F01067AEFBC9,839DDFF834C97F64,,,,,,', count=1}},type={10},giver='U5568079A32CAB277'}
,q26729E120CE04D16={lvl=5,scene="Dead Wood",type={6}}
,q62A7B9BDDB2BC117={lvl=5,giver='U0EB51A6E160B4233'}
,q0F09670700000000={lvl=6,scene="Ark of the Ascended",type={8}}
,q71352A86FD793938={lvl=6,scene="Sanguine Shores",type={9,1}}
,q7BB9CD5800000000={lvl=6,scene="Regent's Cove",type={6}}
,q38F38596F359D725={lvl=6,giver='U2BA0B645635718DF'}
,q39ED7F88D13E2040={lvl=6,scene="Ark of the Ascended",giver='U0EFB3A1A75355CF2'}
,q12143E6A973D0955={lvl=6,giver='U3F63811B10807C40'}
,q0AFE43DB5EC2DBFA={lvl=6,giver='U3F63811B10807C40'}
,q18E803625B67B75F={lvl=6,giver='U3DC0D8D055FFFD9E'}
,q4A27780F00000000={lvl=6,scene="Ark of the Ascended",type={6}}
,q620FDA248D5E37BB={lvl=6,giver='U5885C43B250CB623'}
,q612A8FAC9A323CFA={lvl=6,type={4}}
,q68140D88833AA558={lvl=6,scene="Ark of the Ascended",type={8},giver='U1310897164F9BAA6'}
,q3A776E9598E19BE1={lvl=6,scene="Regent's Cove",type={2,4,8},giver='U2DACB8B1573F4DDE'}
,q398FBB88EC210BB7={lvl=6,scene="Ark of the Ascended",type={6,8},giver='U3DC0D8D055FFFD9E'}
,q2EE1D887119FC06C={lvl=6,scene="Rubicon",type={1,8,11},giver='U0500B05A252B9263'}
,q34BAF7D86F17157E={lvl=6,scene="Lost March",type={10},giver='U53329AB06F945DAA'}
,q3A0E55E800000000={lvl=6,giver='U1BA5D4945CF4EBBB'}
,q4988C39200000000={lvl=6,scene="Regent's Cove",use={{key='I20ABDA1096AAA428,29CDF90344F1E9F8,,,,,,', count=1}},type={10}}
,q77E0502C00000000={lvl=6}
,q6E0E014B91C10DAC={lvl=6,giver='U2BA0B645635718DF'}
,q66489349CBC2595F={lvl=6,scene="Regent's Cove",type={1,9}}
,q12655568ACE72D44={lvl=6}
,q0ABB69E9D0F964E1={lvl=6}
,q622ECE01F31557DA={lvl=6}
,q3634585F086382BA={lvl=6,scene="Rubicon",type={13}}
,q1C97560100000000={lvl=6,scene="Ark of the Ascended",type={8}}
,q21664B8D0ADAD697={lvl=6,scene="Regent's Cove",type={6}}
,q6D2EE3C300000000={lvl=6,scene="Ark of the Ascended",type={6,8}}
,q3752375100000000={lvl=7,scene="Regent's Cove",type={8}}
,q5E9AF090B330D9AA={lvl=7,giver='U3805365A4D87B452'}
,q7D2D27B7AD393824={lvl=7,type={4}}
,q190A3BC1BC44A7C7={lvl=7,craft={{key='I31B292F864193182,0B986897E15782FE,,,,,,', count=2},{key='I63058C0F893D1228,40307E4BD3508A34,,,,,,', count=4}},type={4}}
,q1CBB0FA351569F18={lvl=7,craft={{key='I31B292F864193182,0B986897E15782FE,,,,,,', count=2},{key='I63058C0F893D1228,40307E4BD3508A34,,,,,,', count=4}},type={4}}
,q19EE59C1AD19CCCA={lvl=7,craft={{key='I20D21E3F242DFA22,D2B65AF352175FCB,,,,,,', count=2}},type={25}}
,q741AD201DEE5B892={lvl=7,scene="King's Retreat",craft={{key='I20D21E3F242DFA22,D2B65AF352175FCB,,,,,,', count=2}},type={25}}
,q7EEB117FBEF54A74={lvl=7,craft={{key='I15E2E8DD88CBFD6A,F2A00DFCB2ADC335,,,,,,', count=6}},type={4}}
,q70456DFCE52F3FC0={lvl=7,craft={{key='I15E2E8DD88CBFD6A,F2A00DFCB2ADC335,,,,,,', count=6}},type={4}}
,q32D9FF8769006305={lvl=7,scene="King's Retreat",craft={{key='I4F1C48BC857DEAD4,F8B998D48B06C27D,,,,,,', count=2}},type={25}}
,q5561BD1005A591A5={lvl=7,craft={{key='I4F1C48BC857DEAD4,F8B998D48B06C27D,,,,,,', count=2}},type={25}}
,q4D1EBD1EFB167CCB={lvl=7,craft={{key='I464EE6B8BC1CC996,15284D3C76242A31,,,,,,', count=6}},type={4}}
,q4639DBE4D534D82E={lvl=7,craft={{key='I464EE6B8BC1CC996,15284D3C76242A31,,,,,,', count=6}},type={4}}
,q52B12CAAA296D5FA={lvl=7,scene="King's Retreat",craft={{key='I79DCE4078F0932DE,3DA7070B04F8EE1D,,,,,,', count=2}},type={25}}
,q775530922E5CF8E5={lvl=7,craft={{key='I79DCE4078F0932DE,3DA7070B04F8EE1D,,,,,,', count=2}},type={25}}
,q75D55E4965C8605B={lvl=7,craft={{key='I1E5AFE1E7600F7FE,3217AE5FFDA2867B,,,,,,', count=1},{key='I3C2A497079F8BB7C,4F342B664FFE5241,,,,,,', count=5}},type={4}}
,q6981C4AED1E21471={lvl=7,craft={{key='I3C2A497079F8BB7C,4F342B664FFE5241,,,,,,', count=5},{key='I1E5AFE1E7600F7FE,3217AE5FFDA2867B,,,,,,', count=1}},type={4}}
,q21714E1AD2C93170={lvl=7,craft={{key='I3DF843C842E0A4D5,DCA44D117C009DE8,,,,,,', count=4},{key='I63058C0F893D1228,40307E4BD3508A34,,,,,,', count=2}},type={4}}
,q727A982EBA7E61CB={lvl=7,craft={{key='I3DF843C842E0A4D5,DCA44D117C009DE8,,,,,,', count=4},{key='I63058C0F893D1228,40307E4BD3508A34,,,,,,', count=2}},type={4}}
,q490BB6CA7C833173={lvl=7,craft={{key='I75E718FDB7628C35,ED1538C408C8D02F,,,,,,', count=2}},type={25}}
,q6A2CAEB7D2367470={lvl=7,scene="King's Retreat",craft={{key='I4B4192907292B320,322B35C4DDC56CCE,,,,,,', count=2}},type={25}}
,q1387074DC2CFAD72={lvl=7,craft={{key='I3C2A497079F8BB7C,4F342B664FFE5241,,,,,,', count=5},{key='I389E6268EE3C9D87,37786C734E456324,,,,,,', count=1}},type={4}}
,q15EEC1EEEAEE26C9={lvl=7,craft={{key='I389E6268EE3C9D87,37786C734E456324,,,,,,', count=1},{key='I3C2A497079F8BB7C,4F342B664FFE5241,,,,,,', count=5}},type={4}}
,q0BDF6D6B32A2BEF5={lvl=7,craft={{key='I30C7035476C7CAFE,1D6A3F40EA858AAD,,,,,,', count=6}},type={4}}
,q1E300C0A98D1647C={lvl=7,craft={{key='I30C7035476C7CAFE,1D6A3F40EA858AAD,,,,,,', count=6}},type={4}}
,qFF047444998926B0={lvl=7,craft={{key='I63058C0F893D1228,40307E4BD3508A34,,,,,,', count=6}},type={4}}
,q75427E51C69C48F1={lvl=7,craft={{key='I63058C0F893D1228,40307E4BD3508A34,,,,,,', count=6}},type={4}}
,q219B3B27A867C7E1={lvl=7,scene="King's Retreat",craft={{key='I1D0FEC11531B603F,21B6A3B334EB7EDD,,,,,,', count=2}},type={25}}
,q6939F864C7C66D0F={lvl=7,craft={{key='I1D0FEC11531B603F,21B6A3B334EB7EDD,,,,,,', count=2}},type={25}}
,q3C46222F9819C006={lvl=7,craft={{key='I15CFD471842A2875,D5F0F718019B54D3,,,,,,', count=2}},type={25}}
,q5ECA2BA5B65F23E5={lvl=7,craft={{key='I15CFD471842A2875,D5F0F718019B54D3,,,,,,', count=2}},type={25}}
,q3C24B83114433BB2={lvl=7,craft={{key='I3C2A497079F8BB7C,4F342B664FFE5241,,,,,,', count=6}},type={4}}
,q6B6AA7B10BDAB1C9={lvl=7,craft={{key='I3C2A497079F8BB7C,4F342B664FFE5241,,,,,,', count=6}},type={4}}
,q263F1A5DDC580476={lvl=7,scene="Regent's Cove"}
,q54D16EFD8C2447EA={lvl=7,giver='U5AF9D8E7413E4A75'}
,q413C921500000000={lvl=7,scene="Regent's Cove",type={1}}
,q13985A0500000000={lvl=7}
,q74C50F8BAD2562FB={lvl=7,type={4},giver='U7CC7D8150D5A4C00'}
,q4FF464F189F2F23D={lvl=7,type={4},giver='U30D6F1312E358945'}
,q02271A579AAB42FF={lvl=7,type={4},giver='U30D6F1312E358945'}
,q2C8E67F3AB2347FC={lvl=7,type={4},giver='U7CC7D8150D5A4C00'}
,q47900B1C84582D4C={lvl=7,giver='U7A5BFEB033D3A1F1'}
,q7A9D960600000000={lvl=7,type={3}}
,q45337A4409340020={lvl=7,giver='U3805365A4D87B452'}
,q59E2182B00000000={lvl=7}
,q5F016CEE8798D5D9={lvl=7,scene="Regent's Cove",type={1},giver='U4D1C352A5A8F6980'}
,q732DA27700000000={lvl=7,scene="Regent's Cove",type={4}}
,q35E1A573B589DD49={lvl=7,scene="Regent's Cove",type={10},giver='U2DACB8B1573F4DDE'}
,q026FDC9900000000={lvl=7,giver='U150DF22574E51E46'}
,q75D1031B78EFF724={lvl=7,type={13}}
,q540BF3CF00000000={lvl=7}
,q40355DED019D0172={lvl=8,scene="King's Retreat",type={4},giver='U483A34A870FC8715'}
,q695821AE9C80CC40={lvl=8,scene="Sterling Hills",type={9,1}}
,q510712E6F9A4DD55={lvl=8,scene="Sterling Hills",type={9,1}}
,q22B59C60C33CC1C4={lvl=8,scene="King's Retreat",type={10},giver='U622CBE4F6E65BA76'}
,q0B8E5AF3E637E998={lvl=8,type={11},giver='UFEC009416D58158F'}
,q06AB7DB0971C621D={lvl=8,scene="Warden's Point",use={{key='I532AAC83701B7AA2,F7F0822B49C51EE5,,,,,,', count=1}},type={10},giver='U2DACB8B1573F4DDE'}
,q396D55EE4C4DC22A={lvl=8}
,q599C74042F2072D2={lvl=8}
,q59EE4B94EABD3DE0={lvl=8,scene="King's Retreat",type={1,9}}
,q77F8BB4EDA28FC65={lvl=8,scene="Sterling Hills",type={5},giver='U34D4FE5B197C51B9'}
,q671582739367EBAA={lvl=8,scene="King's Retreat",type={4}}
,q4C8A27E2CAD4FB0D={lvl=8,giver='U53AA54582B53E4F4'}
,q2C7B45E0CFCE976F={lvl=8,type={1,9}}
,q62DE2352A52333DA={lvl=8,type={11,4},giver='U53AA54582B53E4F4'}
,q61E2898696FBDC74={lvl=8,scene="Warden's Point",type={6}}
,q58CE6DE3B6B1036E={lvl=8,type={6},giver='U2859D58D7C75F36E'}
,q2652A5A97552C59D={lvl=8,type={11},giver='UFEC009416D58158F'}
,q78F3AC6900000000={lvl=8,scene="Regent's Cove",type={8}}
,q0A927DB5126B8D8A={lvl=8,type={3,11,1},giver='U6622644000535115'}
,q24E62FBEF0D0B498={lvl=8,type={4},giver='U34D4FE5B197C51B9'}
,q757ECCEBC15619EE={lvl=8,type={11,1,3},giver='U14D60ECE1385711A'}
,q64D9D487D642A1D7={lvl=8,scene="King's Retreat",type={8},giver='U2DACB8B1573F4DDE'}
,q0ADB8BE6D7E37A45={lvl=8,scene="Warden's Point",type={9,1}}
,q2A0377CF948036BF={lvl=9,scene="Kelari Refuge",giver='U652225AD01CF7E61'}
,q08E61D2CD1E5887D={lvl=9,scene="Kelari Refuge",giver='U67BDF0172F46D6A6'}
,q6DB21E04CB252721={lvl=9,scene="Argent Glade",type={5,8},giver='U2859D58D7C75F36E'}
,q24A7BF02D1C3850F={lvl=9,giver='U0B7A6BEE697F46DB'}
,q00A5BADA96EB891C={lvl=9,scene="Sterling Hills",type={4}}
,q7A38199AB36BEC20={lvl=9,scene="Kelari Refuge",giver='U0B8BF2FD489AAF82'}
,q2A4801BAE2F1859C={lvl=9,scene="Kelari Refuge",type={1,9}}
,q073C6E9D001AFA5C={lvl=9,scene="Kelari Refuge",giver='U4ED3802D6C777613'}
,q08AC8D4BE90AE98E={lvl=9,scene="Kelari Refuge",type={4},giver='U5CB0DA9635CC4CBE'}
,q7BAD7BCBF0C4B56A={lvl=9,scene="Kelari Refuge",giver='U1429187653D0E878'}
,q0B6AB09186053492={lvl=9,scene="Kelari Refuge",giver='U4ED3802D6C777613'}
,q325B8B80A4A4B3B7={lvl=9,scene="Kelari Refuge",giver='U16D9DA1311375FB9'}
,q4131D9F56742C494={lvl=9,scene="Kelari Refuge",giver='U652225AD01CF7E61'}
,q393D5C72B134CFB6={lvl=9,scene="Kelari Refuge",giver='U0B8BF2FD489AAF82'}
,q6C18CFC9956B0C3D={lvl=9,scene="Kelari Refuge",giver='U31EC07CB7F6F2EF4'}
,q38D852786617936B={lvl=9,scene="Kelari Refuge",giver='U68F429AB7E5969E0'}
,q2EE945EDB03C02E2={lvl=9,scene="Kelari Refuge",giver='U7F6A37646DB0180B'}
,q500B96DC66B38E6F={lvl=9,scene="Quick's College",type={1}}
,q0B6052A2D7B09286={lvl=9,type={4}}
,q3D05885FE3AF00C6={lvl=9,scene="Quick's College",type={4},giver='U3F6A6AF80F471FAF'}
,q7F807B41C752B951={lvl=9,scene="Kelari Refuge",type={8},giver='U2052023237EAF10F'}
,q5DC9187C6FF17111={lvl=9,scene="Sanguine Shores",type={14},giver='U7E75E1E0685D8B37'}
,q15F97B06F03E6708={lvl=9,scene="Sanguine Shores",giver='U7E75E1E0685D8B37'}
,q04C60AAF4CFA98ED={lvl=9,scene="Kelari Refuge",giver='U16D9DA1311375FB9'}
,q47CBF001C6EE3693={lvl=9,scene="Kelari Refuge",giver='U31EC07CB7F6F2EF4'}
,q78EBD4D7619F4E31={lvl=9,scene="Kelari Refuge",giver='U1429187653D0E878'}
,q7D740478A3D676F8={lvl=9,scene="Sterling Hills",type={2},giver='U2859D58D7C75F36E'}
,q520FD5343BD77E3F={lvl=9,scene="Quick's College",type={4}}
,q22AE11CB00000000={lvl=9,scene="Kelari Refuge"}
,q51D8E923861CF883={lvl=9,scene="Argent Glade",type={6,8},giver='U74C5F0DC227889B1'}
,q7679E347B7ACE0CD={lvl=9,scene="Kelari Refuge",type={8},giver='U483A34A870FC8715'}
,q1218F756A67E37C1={lvl=9,scene="Quick's College",type={4,10},giver='U6591C03F199F3B93'}
,q049B99A57CD35958={lvl=10,domain="ia",type={1}}
,q09F812DA73163037={lvl=10,domain="ia",type={1}}
,q12597D0FEA305938={lvl=10,scene="Kindra's Thicket",type={1,9}}
,q40ACC69F5B099D41={lvl=10,domain="ia",type={1}}
,q72980C8B17AE8E58={lvl=10,domain="ia",type={1}}
,q746574E84B5B8133={lvl=10,domain="ia",type={1}}
,q20595D434E3D6E90={lvl=10,domain="ia",type={1,12,2}}
,q4B50D290D76CC7F9={lvl=10,scene="Argent Glade",giver='U0AE26941549718BE'}
,q1881076D4EDC99D9={lvl=10,domain="ia",type={1}}
,q21DDE786152A5A82={lvl=10,domain="ia",type={1}}
,q2368EA107995A3B5={lvl=10,domain="ia",type={1}}
,q4FF74AE601F4C0EB={lvl=10,domain="ia",type={1}}
,q51BF250736D5DABB={lvl=10,domain="ia",type={1}}
,q228AF7A97A4CFD72={lvl=10,scene="Argent Glade",giver='U09687E791E3C049A'}
,q04DC1EE800000000={lvl=10}
,q3E69F4C900000000={lvl=10}
,q753644CF57B4EE04={lvl=10,domain="ia",type={1,2,12}}
,q69364E5700000000={lvl=10,giver='U3D8EA30F468E8E08'}
,q74B0533400000000={lvl=10,giver='U466F8E012F1FF1FB'}
,q7D5F1F8284CAE2DC={lvl=10,type={8},giver='U6F51FCB1765CC0D6'}
,q19C4DBFF214A7EB6={lvl=10,domain="ia",type={1}}
,q375A3F757879FBE4={lvl=10,domain="ia",type={1}}
,q5B355CA97F0EBA8C={lvl=10,domain="ia",type={1}}
,q6662BEB61A297264={lvl=10,domain="ia",type={1}}
,q71FD2B1E2D38D0C4={lvl=10,domain="ia",type={1}}
,q72E66E1F4A7DB2E5={lvl=10,giver='U05EE8F3A311EF549'}
,q609AEAA00138029F={lvl=10,type={7,3},giver='U7120821D4C613A58'}
,q19F4BDF6EAEC5C63={lvl=10,giver='U24D84377456667A4'}
,q23571EF7AA2A89BC={lvl=10,giver='U7FE2B9961AE65F00'}
,q61227E08905807CB={lvl=10,giver='U6F51FCB1765CC0D6'}
,q2D597A0E3F896F70={lvl=10,giver='U4BB351704D8D6B1C'}
,q53D43743D13E29F1={lvl=10,giver='U1202076961EE642F'}
,q741AC35DBB00EAE4={lvl=10,giver='U4BB351715EFB2E6D'}
,q07ED4574C921BDD4={lvl=10,giver='U3875BDC4714E084F'}
,q10631A14068AE781={lvl=10,scene="Argent Glade",giver='U728FE96B1EB5FA19'}
,q5C17A3B19624E5EB={lvl=10,giver='U0EFB3A1A75355CF2'}
,q3661DD3400000000={lvl=10}
,q5A6B49C700000000={lvl=10}
,q44709D874F4C18BE={lvl=10,giver='U0CA8BC790808533D'}
,q042BC07F6FFC2D24={lvl=10,domain="ia",type={1}}
,q32A705E601DFF936={lvl=10,domain="ia",type={1}}
,q4A247F0236648C35={lvl=10,domain="ia",type={1}}
,q516053DE434C87E6={lvl=10,domain="ia",type={1}}
,q752DE4A34314EA6C={lvl=10,domain="ia",type={1}}
,q153E9EFA955082CD={lvl=10,type={4,7}}
,q547A568B0352CE86={lvl=10,type={7,4}}
,q31AECD7814D0AF5A={lvl=10,type={7}}
,q5D0ED8E6E9FB0021={lvl=10}
,q72C271109C0DBFD3={lvl=10}
,q50B57CCC85E2A9A8={lvl=10,scene="Argent Glade",giver='U66C19FFE0A0A157C'}
,q237073087C1DCC17={lvl=10,scene="Argent Glade",giver='U09687E791E3C049A'}
,q1857FECD16001EB7={lvl=10,scene="Argent Glade",giver='U7DF5EC5C7DDCA515'}
,q52F455AA5C86FE11={lvl=10,scene="Argent Glade",giver='U0AE26941549718BE'}
,q113832E885663824={lvl=10,scene="Argent Glade",giver='U08F29580103E45BA'}
,q70B37FE180F9C1CE={lvl=10,scene="Argent Glade",giver='U728FE96B1EB5FA19'}
,q41AED49453A86A5B={lvl=10,scene="Argent Glade",giver='U7DF5EC5C7DDCA515'}
,q018269B000000000={lvl=10,giver='U768DAC3F7CF2C210'}
,q50B6DB0500000000={lvl=10,giver='U17B78A0F08EC4D7D'}
,q1899C4FE7E28E6E4={lvl=10,domain="ia",type={2}}
,q1F27F9C37FAFFF5F={lvl=10,domain="ia",type={2}}
,q56B51AEC75666889={lvl=10,domain="ia",type={2}}
,q5846C89D726F790B={lvl=10,domain="ia",type={2}}
,q7713A96E3C942A28={lvl=10,domain="ia",type={2}}
,q22F458BE1EA44666={lvl=10,domain="ia",type={6}}
,q27BEF1DB2C51ACA3={lvl=10,domain="ia",type={6}}
,q57E0327E51214692={lvl=10,domain="ia",type={6}}
,q619CE14C3239C707={lvl=10,domain="ia",type={6}}
,q70A8070031D3B296={lvl=10,domain="ia",type={6}}
,q0216B5DF67102FAB={lvl=10,domain="ia",type={6}}
,q09B2D21B52DA4574={lvl=10,domain="ia",type={6}}
,q0DCA54A854BFFE64={lvl=10,domain="ia",type={6}}
,q51BBBAEC7C4888CE={lvl=10,domain="ia",type={6}}
,q5A0945391E6C1946={lvl=10,domain="ia",type={6}}
,q06174F103914EE70={lvl=10,domain="ia",type={1}}
,q0CE4AD403D59FF78={lvl=10,domain="ia",type={1}}
,q24F60EA13DA6D3C1={lvl=10,domain="ia",type={1}}
,q25D896E677E3A5B1={lvl=10,domain="ia",type={1}}
,q571E195C078ED333={lvl=10,domain="ia",type={1}}
,q676FBB8000000000={lvl=10,type={3}}
,q13C5F7A4F1382F9E={lvl=10,giver='U024EC785528CE7B1'}
,q42EA0990745309FE={lvl=10,giver='U5EFA531D3B6C5CB5'}
,q03F74AD45C865AD4={lvl=10,domain="ia",type={6}}
,q1143A10D0E0CCC07={lvl=10,domain="ia",type={6}}
,q4E3A023259B524C6={lvl=10,domain="ia",type={6}}
,q50E68B1152C48512={lvl=10,domain="ia",type={6}}
,q63B4B2067E32DB3B={lvl=10,domain="ia",type={6}}
,q396CEF1A078D5FDC={lvl=10,domain="ia",type={2,12,1}}
,q1BEE14C3C4DD71F7={lvl=10,giver='U070BF6B27DB597FD'}
,q65DEACE1F2474578={lvl=10,scene="Argent Glade",type={6}}
,q253928834288A635={lvl=10,domain="ia",type={1}}
,q125CB7ED0583FDCC={lvl=10,domain="ia",type={12,1,2}}
,q011FC5146E1A1861={lvl=10,domain="ia",type={2}}
,q04B29CF853903319={lvl=10,domain="ia",type={2}}
,q061FF2EA432CD9CA={lvl=10,domain="ia",type={2}}
,q189BDEF650B9A17E={lvl=10,domain="ia",type={2}}
,q209C2E13362BD577={lvl=10,domain="ia",type={2}}
,q2CB2740D39B3CDF4={lvl=10,domain="ia",type={2}}
,q4405A1FC4B4FC5AA={lvl=10,domain="ia",type={2}}
,q5F74C3A02AA6225C={lvl=10,domain="ia",type={2}}
,q60411C2C62C1112B={lvl=10,domain="ia",type={2}}
,q64F2B93E61334DA4={lvl=10,domain="ia",type={2}}
,q00E914DA4DFA49CD={lvl=10,domain="ia",type={1}}
,q036AAB38586F0DAE={lvl=10,domain="ia",type={1}}
,q25F9CE8401F977A6={lvl=10,domain="ia",type={1}}
,q68ED8CE42C74A765={lvl=10,domain="ia",type={1}}
,q74CF7DFB0DCC579E={lvl=10,domain="ia",type={1}}
,q08F9DB6133168268={lvl=10,domain="ia",type={2}}
,q16D426B82BF1E87F={lvl=10,domain="ia",type={2}}
,q26B4E2B91C9B03C0={lvl=10,domain="ia",type={2}}
,q52B49F347B9B294B={lvl=10,domain="ia",type={2}}
,q53FC435FEE6F3D37={lvl=10,scene="Kindra's Thicket",use={{key='I4B5EED9A779683FC,BC73D5DD64275628,,,,,,', count=1}},type={4,10},giver='U5CB0DA9635CC4CBE'}
,q7D30AFFD21E743AC={lvl=10,domain="ia",type={2}}
,q27079EBEE0CA0B9A={lvl=10,giver='U42CB8995164ACFD9'}
,q6CD6C76B7A2B008D={lvl=10,type={4,7}}
,q783455B428220035={lvl=10,type={4,7},giver='U5002EB095C5ED8C9'}
,q221E483A59943E55={lvl=10,type={7,4},giver='U617140633F92052F'}
,q6D86570AC234E86B={lvl=10,type={7,4}}
,q370B020CB376642A={lvl=10,type={4,7},giver='U4A2049863484E029'}
,q6154006312DD7AA4={lvl=10,type={7,4},giver='U4A2049863484E029'}
,q51E2EDF729D76426={lvl=10,scene="Quick's College",type={10},giver='U26FEBF6F25493513'}
,q04BB517A15021861={lvl=10,domain="ia",type={1}}
,q2B38CD4D0EAEE940={lvl=10,domain="ia",type={1}}
,q4BAB2FAE768C5558={lvl=10,domain="ia",type={1}}
,q56AFCAC51055B87C={lvl=10,domain="ia",type={1}}
,q6C658D924E9C09D2={lvl=10,domain="ia",type={1}}
,q63FE4B6479D068DC={lvl=10,scene="Quick's College",type={4},giver='U26FEBF6F25493513'}
,q4231DE2A00000000={lvl=10,type={3,1},giver='U7B9802940EFC9CEE'}
,q7C6A889900000000={lvl=10,type={3,1},giver='U5AACB7C9707AABEC'}
,q34D86E8900000000={lvl=10,giver='U408162D54CE922BF'}
,q6FC1737900000000={lvl=10,giver='U0656CD6458F83481'}
,q33F8E0E400000000={lvl=10,giver='U466F8E012F1FF1FB'}
,q59E560EE00000000={lvl=10,giver='U3D8EA30F468E8E08'}
,q395461755D69A757={lvl=10,scene="Kelari Refuge",type={1,9}}
,q5D23F0F1A69EC0B7={lvl=10,scene="Kindra's Thicket",type={9,1}}
,q1975C5629BC59679={lvl=10,scene="Kindra's Thicket",type={4}}
,q2B055E9C00000000={lvl=10,giver='U466F8E012F1FF1FB'}
,q46CF3EA700000000={lvl=10,giver='U3D8EA30F468E8E08'}
,q7101648C85006389={lvl=10,scene="Quick's College",type={10},giver='U3F6A6AF80F471FAF'}
,q06A09D6B00000000={lvl=10,giver='U408162D54CE922BF'}
,q574A752A00000000={lvl=10,giver='U3B41C26218FCDB92'}
,q40C448DD00000000={lvl=10,type={10,3},giver='U3D8EA30F468E8E08'}
,q76ED589700000000={lvl=10,type={10,3},giver='U466F8E012F1FF1FB'}
,q0E22FC7325D488E1={lvl=10,domain="ia",type={6}}
,q32B91B9505B2FB14={lvl=10,domain="ia",type={6}}
,q444984B64EA60437={lvl=10,domain="ia",type={6}}
,q555A367B6C9C4E02={lvl=10,domain="ia",type={6}}
,q7F12FAD863948875={lvl=10,domain="ia",type={6}}
,q2B7DB3FDEC7E16E9={lvl=10,scene="Argent Glade",giver='U66C19FFE0A0A157C'}
,q649C2BF865DC41F1={lvl=10,giver='U79FB63BE5774CA96'}
,q0A6E289C1AC7BAEB={lvl=10,domain="ia",type={6}}
,q100332F30F0711E4={lvl=10,domain="ia",type={6}}
,q2280FD894B3EBBEF={lvl=10,domain="ia",type={6}}
,q4A3947492742F7EB={lvl=10,domain="ia",type={6}}
,q50A35B30431883D8={lvl=10,domain="ia",type={6}}
,q09D72E8400000000={lvl=10,giver='U0656CD6458F83481'}
,q761D901800000000={lvl=10,giver='U408162D54CE922BF'}
,q259E5A7AE05637AD={lvl=10,domain="guild"}
,q6001FD74EF7A212E={lvl=10,domain="guild"}
,q5B7A1108D0C65EB4={lvl=10,scene="Argent Glade",giver='U08F29580103E45BA'}
,q00425A9059C85CC0={lvl=10,domain="ia",type={6}}
,q25D3A3E0764FD62A={lvl=10,domain="ia",type={6}}
,q2BFAE3440D9A368B={lvl=10,domain="ia",type={6}}
,q65EE5BE836507165={lvl=10,domain="ia",type={6}}
,q7B5756395C76BB82={lvl=10,domain="ia",type={6}}
,q3073210C7D4064E8={lvl=10,domain="ia",type={1}}
,q34A36FD91CA927A1={lvl=10,domain="ia",type={1}}
,q5BA0FE6E3BB23106={lvl=10,domain="ia",type={1}}
,q67381D2B46333E8F={lvl=10,domain="ia",type={1}}
,q7D676C8708EF5658={lvl=10,domain="ia",type={1}}
,q14F39BBB456037AC={lvl=10,scene="Quick's College",type={8},giver='U3F6A6AF80F471FAF'}
,q68A24FD7ED80D07C={lvl=10,giver='U05CF889971AEA09B'}
,q399E490553BA1745={lvl=10,domain="ia",type={2}}
,q44512DE727742B9C={lvl=10,domain="ia",type={2}}
,q5B5D86E555B12798={lvl=10,domain="ia",type={2}}
,q7518CAB433462A37={lvl=10,domain="ia",type={2}}
,q7F56194A323C6579={lvl=10,domain="ia",type={2}}
,q0AAA88814913195D={lvl=10,domain="ia",type={2,1,12}}
,q1FE3651F158196AB={lvl=10}
,q4F8B5288597682B6={lvl=10,type={7}}
,q790B9BD1F7381C3E={lvl=10,giver='U4D129B18398F8FC9'}
,q4D4F2C5A00000000={lvl=11,scene="Sunken Marsh",type={1},giver='U39B00CB239AB9A57'}
,q4ED8B5089D481B5F={lvl=11,scene="Sunken Marsh",type={10},giver='U39B00CB239AB9A57'}
,q3B40DCA83F30D030={lvl=11,scene="Eliam Fields",giver='U5CB0DA9635CC4CBE'}
,q51C8FEB3B1CB084D={lvl=11,scene="Eliam Fields",type={6},giver='U7CDD2C623EC8D149'}
,q2A3F311950ECC9B1={lvl=11,scene="Sunken Marsh",type={8},giver='U29D13B15323CC96D'}
,q763A5EDFB067939F={lvl=11,scene="Sunken Marsh",use={{key='I0C8DC28EAE0BB9FA,24E408E22FFEA7CE,,,,,,', count=1}},type={1,10},giver='U0A38325E1A699B28'}
,q1200B48CD7106BD3={lvl=11,scene="Sunken Marsh",type={20},giver='U6FBBF8ED777EC5A8'}
,q03B330EF7065FC87={lvl=11,domain="ia",type={6}}
,q0D8003E62D851790={lvl=11,domain="ia",type={6}}
,q12E8C1124E1E1FE1={lvl=11,domain="ia",type={6}}
,q2302C33022EA3CD3={lvl=11,domain="ia",type={6}}
,q71022AA623B073E1={lvl=11,domain="ia",type={6}}
,q130DEE8381A39FFF={lvl=11,scene="Sunken Marsh",type={4}}
,q275E962269218A26={lvl=11,domain="ia",type={6}}
,q322AD8FD3951CC1A={lvl=11,domain="ia",type={6}}
,q40EA80CE7D5DA4D3={lvl=11,domain="ia",type={6}}
,q47395EB64EDB4123={lvl=11,domain="ia",type={6}}
,q7FBC5532424F07AC={lvl=11,domain="ia",type={6}}
,q2AF5DE26C911840E={lvl=11,scene="Eliam Fields",type={1,9}}
,q02FDEDAB486A4091={lvl=11,domain="ia",type={1}}
,q0B8DBEC917F48070={lvl=11,domain="ia",type={1}}
,q2349128D7B6A17B5={lvl=11,domain="ia",type={1}}
,q23B2CAC3576A45F9={lvl=11,domain="ia",type={1}}
,q5614215EBB162A0A={lvl=11,scene="Eliam Fields",type={4}}
,q5EDF8BC4784E1268={lvl=11,domain="ia",type={1}}
,q183AA3B0CB8E052F={lvl=11,type={8},giver='U29D13B15323CC96D'}
,q7749C5C80B62C50C={lvl=11,scene="Sunken Marsh",type={4}}
,q2370506B302B379B={lvl=11,domain="ia",type={1,12,2}}
,q47A155252BF11ED0={lvl=11,domain="ia",type={1,2,12}}
,q3BE2479F46FA2DB8={lvl=11,domain="ia",type={6}}
,q3E6E22066EC2D3EA={lvl=11,domain="ia",type={6}}
,q63998EC70FE91C15={lvl=11,domain="ia",type={6}}
,q6761656E43962C4C={lvl=11,domain="ia",type={6}}
,q0FB8BDED00000000={lvl=11,scene="Sunken Marsh",type={4,6},giver='U0A38325E1A699B28'}
,q5064C4FE878C22B0={lvl=11,scene="Eliam Fields",type={13}}
,q78777D25148D31B2={lvl=11,scene="Eliam Fields",type={4}}
,q027B83C956A9D598={lvl=11,domain="ia",type={6}}
,q2891059C13DE365B={lvl=11,domain="ia",type={6}}
,q37A073F5276C18EC={lvl=11,domain="ia",type={6}}
,q62004ED0770075C4={lvl=11,domain="ia",type={6}}
,q6F35C3782F9F04BF={lvl=11,domain="ia",type={6}}
,q0627BF83B1AE63FD={lvl=11,scene="Sunken Marsh",type={1},giver='U29D13B15323CC96D'}
,q1D898A31465EA81D={lvl=11,domain="ia",type={14}}
,q32EEA7C033C18973={lvl=11,domain="ia",type={14}}
,q56FA6C96BAB68267={lvl=11,scene="Eliam Fields",use={{key='I7D517A08D0F2B506,D971AB96F924750D,,,,,,', count=6}},type={10},giver='U6680C5F76A5CB69E'}
,q608B2C0D03DF8F05={lvl=11,domain="ia",type={14}}
,q6AF9C1A978CDE232={lvl=11,domain="ia",type={14}}
,q77A18C1751E9F17E={lvl=11,domain="ia",type={14}}
,q0763E402C24B43AF={lvl=12,scene="Todrin Estate",type={4}}
,q2EA809F20C69ED6D={lvl=12,domain="ia",type={1}}
,q31EE9F0115281D8B={lvl=12,domain="ia",type={1}}
,q3EEC41E56A3C6187={lvl=12,domain="ia",type={1}}
,q4ABB35116F0E29EF={lvl=12,domain="ia",type={1}}
,q6507CA016E4AF3DA={lvl=12,domain="ia",type={1}}
,q39BCB67E6D8D3629={lvl=12,domain="ia",type={12,1,2}}
,q42AA48B24D1317C7={lvl=12,domain="ia",type={1,12,2}}
,q14E805B23218789E={lvl=12,domain="ia",type={1}}
,q1C980103122633C1={lvl=12,scene="Silver Landing",type={4}}
,q24B7AB301CAE6B72={lvl=12,domain="ia",type={1}}
,q27C111D6277B78DA={lvl=12,domain="ia",type={1}}
,q452596C360BC87DF={lvl=12,domain="ia",type={1}}
,q693CB0F61A1A352D={lvl=12,domain="ia",type={1}}
,q110CBD5F5AB92773={lvl=12,domain="ia",type={1}}
,q18A00620574F9738={lvl=12,domain="ia",type={1}}
,q1F0722B802D62723={lvl=12,domain="ia",type={1}}
,q26D249892F6EECBA={lvl=12,domain="ia",type={1}}
,q7580D2711200A5FE={lvl=12,domain="ia",type={1}}
,q0D982D7B14195424={lvl=12,scene="Silver Landing",type={13,5},giver='U54A1D51363F68954'}
,q55D806B1472CE9A4={lvl=12,scene="Seastone Bluff",use={{key='I7A260C4C49BDF689,C0AC9CE6310AB65D,,,,,,', count=1}},type={6,1,10},giver='U7CDD2C623EC8D149'}
,q05EB07447D67F7DC={lvl=12,domain="ia",type={6}}
,q27281B221A918F86={lvl=12,domain="ia",type={6}}
,q3852C80E291DEC31={lvl=12,domain="ia",type={6}}
,q4F039AA54A0D31F9={lvl=12,domain="ia",type={6}}
,q56FF80047452CE50={lvl=12,domain="ia",type={6}}
,q545367C61082CE7B={lvl=12,scene="Silver Landing",type={4},giver='U54A1D51363F68954'}
,q7D6B364FE727A779={lvl=12,type={1,3,11},giver='U7B33E08D1E9C4A1F'}
,q1F776DCF169FC9F3={lvl=12,domain="ia",type={22}}
,q22A95D932312E25C={lvl=12,domain="ia",type={22}}
,q4B996F700B0A9FFC={lvl=12,domain="ia",type={22}}
,q683A8FCA48C1D250={lvl=12,domain="ia",type={22}}
,q16901AE734F5D685={lvl=12,scene="Todrin Estate",domain="ia",type={14}}
,q354CA13752387FF0={lvl=12,scene="Todrin Estate",domain="ia",type={14}}
,q4028BBCC54B8827E={lvl=12,scene="Todrin Estate",domain="ia",type={14}}
,q6E26DEA80E9990B9={lvl=12,scene="Todrin Estate",domain="ia",type={14}}
,q7AF82CBD3B5BD3E0={lvl=12,scene="Todrin Estate",domain="ia",type={14}}
,q014F949AF5830361={lvl=12,scene="Seastone Bluff",type={1,9}}
,q565412B30647EE31={lvl=12,domain="ia",type={1}}
,q5E9D9765580AC312={lvl=12,domain="ia",type={1}}
,q67F36A871F0B63C4={lvl=12,domain="ia",type={1}}
,q7135C01B69414DF0={lvl=12,domain="ia",type={1}}
,q7F47A05C7F122527={lvl=12,domain="ia",type={1}}
,q5C14125D725DD2C7={lvl=12,domain="ia",type={2,1,12}}
,q45C57E29C0A06598={lvl=12,type={11,1,3},giver='U517DD1A37DBE2AD2'}
,q252610E315AB4F14={lvl=12,domain="ia",type={1}}
,q3007EC0E18E605E0={lvl=12,domain="ia",type={1}}
,q320F8F96C2066EB4={lvl=12,scene="Todrin Estate",type={1,9}}
,q5737AFF8202773CE={lvl=12,domain="ia",type={1}}
,q5746A4FD3AB4E6A2={lvl=12,domain="ia",type={1}}
,q7EC9F058467F2EA7={lvl=12,domain="ia",type={1}}
,q3ACF1B7A60D7446D={lvl=12,scene="Silver Landing",type={4,1}}
,q110BA6F57933897A={lvl=12,domain="ia",type={6}}
,q3568AD491618F96E={lvl=12,domain="ia",type={6}}
,q3EE82FFA4D6D5536={lvl=12,domain="ia",type={6}}
,q50E0122119648AEF={lvl=12,domain="ia",type={6}}
,q7AFAC6286998B1F8={lvl=12,domain="ia",type={6}}
,q02C604812982CAEB={lvl=12,domain="ia",type={6}}
,q0F51DF702EBB8433={lvl=12,domain="ia",type={6}}
,q1A3429DD308837F2={lvl=12,domain="ia",type={6}}
,q34E112A85C6B867D={lvl=12,domain="ia",type={6}}
,q37E0A2752968509A={lvl=12,domain="ia",type={6}}
,q5E8F8C1200000000={lvl=12,type={7}}
,q0CAC7B7C667F16F1={lvl=12,scene="Todrin Estate",domain="ia",type={6}}
,q1F4241AC15D5C0C0={lvl=12,scene="Todrin Estate",domain="ia",type={6}}
,q52CE362A5A8D46CD={lvl=12,scene="Todrin Estate",domain="ia",type={6}}
,q568BB881798555DC={lvl=12,scene="Todrin Estate",domain="ia",type={6}}
,q7EE63C31117C39C9={lvl=12,scene="Todrin Estate",domain="ia",type={6}}
,q3335056CB638A8CA={lvl=12,scene="Todrin Estate",type={4,2,10},giver='U7CDD2C623EC8D149'}
,q06B5DA8A0D5DA6E1={lvl=12,domain="ia",type={2}}
,q7A010D6100000000={lvl=12,type={7}}
,q037652814DD8022E={lvl=12,domain="ia",type={1}}
,q1EBC7300060DA65C={lvl=12,domain="ia",type={1}}
,q284603891C585634={lvl=12,domain="ia",type={1}}
,q3E9BCBAC419583B2={lvl=12,domain="ia",type={1}}
,q7DF3BA7D763C870C={lvl=12,domain="ia",type={1}}
,q218848537927F6DD={lvl=12,scene="Wreck of the Galena",type={4},giver='U087063A07D697987'}
,q6045ADC700000000={lvl=12,scene="Todrin Estate",type={4,6}}
,q1C37C4C71DF186BF={lvl=12,domain="ia",type={6}}
,q57025D825CB001F1={lvl=12,domain="ia",type={6}}
,q5E44D9117FC5143A={lvl=12,domain="ia",type={6}}
,q751537F01685B722={lvl=12,domain="ia",type={6}}
,q7B87CAFD10DE2F57={lvl=12,domain="ia",type={6}}
,q006E7C9D63A1550B={lvl=13,domain="ia",type={1}}
,q03FEABEF0BF7EAD1={lvl=13,domain="ia",type={1}}
,q0FF4FA5C4426B2F3={lvl=13,domain="ia",type={1}}
,q71C16AD85C0FF809={lvl=13,domain="ia",type={1}}
,q7E9EC1AC185FA9DF={lvl=13,domain="ia",type={1}}
,q062F41491B44455F={lvl=13,domain="ia",type={1}}
,q317FA65D434434F9={lvl=13,domain="ia",type={1}}
,q38F4B3D84A79451A={lvl=13,domain="ia",type={1}}
,q3F512F042F422C87={lvl=13,domain="ia",type={1}}
,q787EAF975D97A7AE={lvl=13,domain="ia",type={1}}
,q78AB2DBF31399C46={lvl=13,scene="Fortune's End",type={9,1}}
,q3F21518D48F9D021={lvl=13,domain="ia",type={2,1,12}}
,q2C2DE992418AF052={lvl=13,domain="ia",type={12,1,2}}
,q075991BE26A8ED33={lvl=13,domain="ia",type={1}}
,q08FB4D6D49CAEB10={lvl=13,domain="ia",type={1}}
,q277EBE1B45177190={lvl=13,domain="ia",type={1}}
,q316A7FED3357199E={lvl=13,domain="ia",type={1}}
,q779B776014C99072={lvl=13,domain="ia",type={1}}
,q1BB94675EAFC50C0={lvl=13,scene="Treants' Grove",type={1,9}}
,q3FBBDA277D575294={lvl=13,domain="ia",type={1}}
,q4F95D7160D69371B={lvl=13,domain="ia",type={1}}
,q632D206818565E43={lvl=13,domain="ia",type={1}}
,q67B51C2C5C40EC13={lvl=13,domain="ia",type={1}}
,q6B8F5C711D4BD6A3={lvl=13,domain="ia",type={1}}
,q02C9979C2D6097A2={lvl=13,domain="ia",type={6}}
,q12FA12185D9D9F7E={lvl=13,domain="ia",type={6}}
,q165B2B521460C549={lvl=13,domain="ia",type={6}}
,q20D28FD1633C2D35={lvl=13,domain="ia",type={6}}
,q4323B0DE452D86DD={lvl=13,domain="ia",type={6}}
,q459B5876472EA097={lvl=13,domain="ia",type={6}}
,q4A1315334DA82B6D={lvl=13,domain="ia",type={6}}
,q730991F757701E4D={lvl=13,domain="ia",type={6}}
,q776FEEAA6D7DF1B9={lvl=13,domain="ia",type={6}}
,q7FCB453E7557CC6B={lvl=13,domain="ia",type={6}}
,q69542631B0AAEC6C={lvl=13,scene="Scarred Mire",type={10,2},giver='U252AA91E2724C68B'}
,q629AF54BB1928326={lvl=13,type={8},giver='U2607896D740CE4BD'}
,q77AAC66DDAEE1A86={lvl=13,type={4},giver='U7E6830AE71649A10'}
,q4E4E60BFA1408CF0={lvl=13,scene="Scarred Mire",type={1,13}}
,q763F18F9131224C2={lvl=13,scene="Leighton Farmstead",type={6,3,10},giver='U4DE6FF993CD1C754'}
,q082A593F15231663={lvl=13,domain="ia",type={1}}
,q2394AEEF240B3487={lvl=13,domain="ia",type={1}}
,q55435A3E6403FD04={lvl=13,domain="ia",type={1}}
,q6A07E18D07A2E62B={lvl=13,domain="ia",type={1}}
,q6B4308A9139190F9={lvl=13,domain="ia",type={1}}
,q327AAF2D24DB8D07={lvl=13,domain="ia",type={2}}
,q3992BE35054233B2={lvl=13,domain="ia",type={2}}
,q3B46509039BC2CC4={lvl=13,domain="ia",type={2}}
,q4C2E6E070A0386A5={lvl=13,domain="ia",type={2}}
,q5C1F9BF533E3D573={lvl=13,domain="ia",type={2}}
,q20F15760563A27DA={lvl=13,domain="ia",type={6}}
,q231D47BE01C1D63E={lvl=13,domain="ia",type={6}}
,q3878529C6499BAAC={lvl=13,domain="ia",type={6}}
,q751E25AB10F335B3={lvl=13,domain="ia",type={6}}
,q7F1798EE18C20A66={lvl=13,domain="ia",type={6}}
,q1DBAB7527DDB6841={lvl=13,domain="ia",type={2,1,12}}
,q11FD21C14F149F20={lvl=13,domain="ia",type={2}}
,q1FD766A7728FCC03={lvl=13,domain="ia",type={2}}
,q213E22F834BCF336={lvl=13,domain="ia",type={2}}
,q3A2E748F5854A4AB={lvl=13,domain="ia",type={2}}
,q3CB3FC206A871D90={lvl=13,domain="ia",type={2}}
,q04C14C156EA15DB3={lvl=13,domain="ia",type={1}}
,q19E1176E5C5C6572={lvl=13,domain="ia",type={1}}
,q4131D854333387B4={lvl=13,domain="ia",type={1}}
,q6FDFEDE602BDCD99={lvl=13,domain="ia",type={1}}
,q7559CA374F7865A6={lvl=13,domain="ia",type={1}}
,q0F3E3EA6142C552E={lvl=13,domain="ia",type={12,2,1}}
,q0E58260F8A974F62={lvl=13,giver='U42B1E60C62336A6A'}
,q4C0EE1D95A99D4A8={lvl=13,domain="ia",type={6}}
,q503AB7651F06F6A8={lvl=13,domain="ia",type={6}}
,q54310B1E1651B70E={lvl=13,domain="ia",type={6}}
,q60633163295D971D={lvl=13,domain="ia",type={6}}
,q6D8A81851E832E98={lvl=13,domain="ia",type={6}}
,q72F48DD8D3D7BA2B={lvl=13,scene="Scarred Mire",type={8},giver='U7CDD2C623EC8D149'}
,q16F0F722788DA9BA={lvl=13,domain="ia",type={6}}
,q3CFF1394521D211D={lvl=13,domain="ia",type={6}}
,q43FF87881E8F399A={lvl=13,domain="ia",type={6}}
,q4DFDF9115979B997={lvl=13,domain="ia",type={6}}
,q504F06BE79DA34F6={lvl=13,domain="ia",type={6}}
,q7846B8D18FCED718={lvl=13,scene="Fortune's End",type={4},giver='U25A0C80C14FF5235'}
,q052C97E408125DB2={lvl=13,domain="ia",type={12,2,1}}
,q3BC9A3CD172497D4={lvl=13,domain="ia",type={12,2,1}}
,q4A1DD7312FCE96B1={lvl=13,domain="ia",type={2,1,12}}
,q7794A95A000006B1={lvl=13,giver='U2C64D7AD08146F86'}
,q7F68478499620D3A={lvl=13,type={4}}
,q0DA64FF96A7DA3BB={lvl=13,domain="ia",type={6}}
,q1164D29B7C0CC31C={lvl=13,domain="ia",type={6}}
,q4B2255D12CCBEEF9={lvl=13,domain="ia",type={6}}
,q546022C05EAEC2D9={lvl=13,domain="ia",type={6}}
,q700D041236B0006F={lvl=13,domain="ia",type={6}}
,q135BF63CA80E9B7D={lvl=13}
,q331981C4493466A0={lvl=13}
,q39BF8BEDE5F03760={lvl=13}
,q4F83B8C75574D1F8={lvl=13}
,q6087AF13CD198CC5={lvl=13}
,q691D12B185450034={lvl=13}
,q6C608919E205648B={lvl=13}
,q7F786DD9D25C081F={lvl=13}
,q4F7CCE581D7886E7={lvl=13,scene="Fremon Run",type={9,1}}
,q0B1A2EFB65B95D9B={lvl=13,scene="Treants' Grove",type={9}}
,q2DFFBB9658CF3A29={lvl=13,scene="Leighton Farmstead",type={9,1}}
,q5129C8787CA3962D={lvl=13,scene="Fortune's End",type={9,1}}
,q5E7221273BC0B0B9={lvl=13,scene="Scarred Mire",type={9,1}}
,q095612984B3601D4={lvl=13,domain="ia",type={1,2,12}}
,q05240F7A488FA942={lvl=13,domain="ia",type={6}}
,q1EEEEF61470AA9BD={lvl=13,domain="ia",type={6}}
,q4C0D0A7A21AD943C={lvl=13,domain="ia",type={6}}
,q57444AB57F58DA1F={lvl=13,domain="ia",type={6}}
,q673F6DBB01A3BE86={lvl=13,domain="ia",type={6}}
,q1793474A321B9DAD={lvl=13,domain="ia",type={2,12,1}}
,q5E4231921EED2413={lvl=13,domain="ia",type={1,2,12}}
,q116D18FBAEEDD3B8={lvl=13,scene="Knight's Stand",giver='U753695D04DCA649C'}
,q224C55DB060DA2A9={lvl=13,scene="Knight's Stand",giver='U753695D04DCA649C'}
,q377C095FC45DA1AE={lvl=13,scene="Knight's Stand",giver='U753695D04DCA649C'}
,q1ADAE30D9BFF3DC3={lvl=13,scene="Knight's Stand",giver='U753695D04DCA649C'}
,q0BC24894207D3904={lvl=13,domain="ia",type={1}}
,q26549C596394453A={lvl=13,domain="ia",type={1}}
,q641E73CC7604886F={lvl=13,domain="ia",type={1}}
,q64FEB12851835662={lvl=13,domain="ia",type={1}}
,q6955C38D2092C752={lvl=13,domain="ia",type={1}}
,q7C608C2571A9DF81={lvl=13,domain="ia",type={2}}
,q00ED14A30E967611={lvl=13,domain="ia",type={1}}
,q119B239364B03896={lvl=13,domain="ia",type={1}}
,q2A8C32E7750166F0={lvl=13,domain="ia",type={1}}
,q5AB4389871BA1C60={lvl=13,domain="ia",type={1}}
,q62F3CE9A60D58CEC={lvl=13,domain="ia",type={1}}
,q124F3D870657FAF9={lvl=13,domain="ia",type={6}}
,q4368383E56EF3D76={lvl=13,domain="ia",type={6}}
,q5A95E66F0AB4647B={lvl=13,domain="ia",type={6}}
,q6F8A55AA1C51567B={lvl=13,domain="ia",type={6}}
,q71D466E95B99EE80={lvl=13,domain="ia",type={6}}
,q7F438B4B1886E07D={lvl=13,scene="Fortune's End",type={6,4}}
,q3C9F2538B6AFA794={lvl=13,scene="Treants' Grove",type={4},giver='U42B1E60C62336A6A'}
,q324419235024AAAD={lvl=13,domain="ia",type={1}}
,q3C1795C8303AD167={lvl=13,domain="ia",type={1}}
,q4286941207F89E48={lvl=13,domain="ia",type={1}}
,q44DDAF761559DB3A={lvl=13,domain="ia",type={1}}
,q7BA3A1BF56E028C9={lvl=13,domain="ia",type={1}}
,q172040634906AE95={lvl=13,domain="ia",type={1}}
,q1E97BA562F421C57={lvl=13,domain="ia",type={1}}
,q3CB27A8C72B5F2F6={lvl=13,domain="ia",type={1}}
,q5A439FED19993F02={lvl=13,domain="ia",type={1}}
,q6A4A8FCE1B74FECD={lvl=13,domain="ia",type={1}}
,q7112E912DE61FD55={lvl=13,scene="Scarred Mire",type={2,6},giver='U5D26BD0E2214A922'}
,q3DD9C71B00000000={lvl=13,giver='U42B1E60C62336A6A'}
,q19DBB831B82CE18F={lvl=13,type={13},giver='U0B7A6BEE697F46DB'}
,q15E81AF304E4609D={lvl=13,domain="ia",type={12,1,2}}
,q19208107799B75D1={lvl=13,domain="ia",type={6}}
,q1A5EADB8560F0B47={lvl=13,domain="ia",type={6}}
,q3113193718D8C558={lvl=13,domain="ia",type={6}}
,q3D376F881F6694FE={lvl=13,domain="ia",type={6}}
,q43A623C047E163C3={lvl=13,domain="ia",type={6}}
,q15A89ECB4893C9DA={lvl=13,domain="ia",type={1}}
,q1A8017A81928AF25={lvl=13,domain="ia",type={1}}
,q1C39CC5640983E3A={lvl=13,domain="ia",type={1}}
,q36847B133765EF3C={lvl=13,domain="ia",type={1}}
,q4AA9D8B934F9ECEF={lvl=13,domain="ia",type={1}}
,q0631F88DAEF1671B={lvl=13,scene="Scarred Mire",type={9,1}}
,q5F0F16E10449CA9C={lvl=13,domain="ia",type={6}}
,q0424DF18192C8BDF={lvl=13,domain="ia",type={6}}
,q344FEB141DF7EACC={lvl=13,domain="ia",type={6}}
,q42B17622790609B8={lvl=13,domain="ia",type={6}}
,q449C28011149BB2D={lvl=13,type={10}}
,q508D19A113953757={lvl=13,domain="ia",type={6}}
,q6D44858A6B731F73={lvl=13,domain="ia",type={6}}
,q1C1A82CD1595E8CB={lvl=13,domain="ia",type={2}}
,q2548F116797215A2={lvl=13,domain="ia",type={2}}
,q2D655E6C5B0D9693={lvl=13,domain="ia",type={2}}
,q2FA0B096225F021D={lvl=13,domain="ia",type={2}}
,q36D5412B3C9C8CC4={lvl=13,domain="ia",type={2}}
,q0626CFA8203DE3C2={lvl=13,domain="ia",type={1}}
,q1CB8AB7A2863EC2F={lvl=13,domain="ia",type={1}}
,q3937DD4D6D11847E={lvl=13,domain="ia",type={1}}
,q6BB0E4CC13AE2A48={lvl=13,domain="ia",type={1}}
,q7466305D6E8F7B35={lvl=13,domain="ia",type={1}}
,q11DD70316B47F752={lvl=13,domain="ia",type={1}}
,q18B8691B448E0E19={lvl=13,domain="ia",type={1}}
,q624734E17435C9F4={lvl=13,domain="ia",type={1}}
,q69C2E07C0878C644={lvl=13,domain="ia",type={1}}
,q760F5AB366ADFA28={lvl=13,domain="ia",type={1}}
,q00D1E8654E586455={lvl=13,domain="ia",type={2}}
,q02EFFE830C4E530E={lvl=13,domain="ia",type={2}}
,q0AF6ED8449A83198={lvl=13,domain="ia",type={2}}
,q4D6129B1476BBF7E={lvl=13,domain="ia",type={2}}
,q7D36D9733905A17C={lvl=13,domain="ia",type={2}}
,q0BCCCA3C349C78F0={lvl=13,domain="ia",type={6}}
,q0C8A0DD43419E2B6={lvl=13,domain="ia",type={6}}
,q4B18547E57397E8C={lvl=13,domain="ia",type={6}}
,q642BAA5B5C9A097F={lvl=13,domain="ia",type={6}}
,q71313E130A8CFA0D={lvl=13,domain="ia",type={6}}
,q0915BCEA19067EA2={lvl=13,domain="ia",type={1}}
,q1CEED82A5284B6AF={lvl=13,domain="ia",type={1}}
,q2009B57B3031AFCC={lvl=13,domain="ia",type={1}}
,q44F1AFDD5F7CF967={lvl=13,domain="ia",type={1}}
,q6BE34CEC7D29DCE2={lvl=13,domain="ia",type={1}}
,q0A0976F0276414EA={lvl=13,domain="ia",type={1}}
,q0AE906F8108D03C7={lvl=13,domain="ia",type={1}}
,q411C0C5B764302E0={lvl=13,domain="ia",type={1}}
,q6E4E2E18176A5B52={lvl=13,type={1,9}}
,q6EF0098B766F4207={lvl=13,domain="ia",type={1}}
,q7B13B328500D671A={lvl=13,domain="ia",type={1}}
,q6CE36E3D6781D0A3={lvl=13,scene="Scarred Mire",type={1,6,2},giver='U5D26BD0E2214A922'}
,q2244F8EC00000000={lvl=13,type={8}}
,q3408DF2C2D4341BE={lvl=13,domain="ia",type={14}}
,q380A60FB6A78E08D={lvl=13,domain="ia",type={14}}
,q3A7D60B03141E957={lvl=13,domain="ia",type={14}}
,q3ED9BB4144204B41={lvl=13,scene="Rill Pond",use={{key='I3E80FA8C78786AFB,F6AEF2EE773D2ADF,,,,,,', count=1}},type={4,10},giver='U206F40E030A64FB1'}
,q5C5F016D6A4BB1D2={lvl=13,domain="ia",type={14}}
,q6C71B3226182BE23={lvl=13,domain="ia",type={14}}
,q360481B6BC0403F2={lvl=14,type={4},giver='U381ED44A220929CF'}
,q26E7E5BF3A07968D={lvl=14,scene="Lakeside Outpost",type={9,1}}
,q1BCF971A017E39CE={lvl=14,scene="Fletcher's Beach",type={4},giver='U6B7F3A3F7890A096'}
,q077CA3E85D0062F0={lvl=14,giver='U42B1E60C62336A6A'}
,q2D3A20825D99CA1B={lvl=14,scene="Catacombs of Bronze",type={4}}
,q21E423D81B4387A2={lvl=14,domain="ia",type={11}}
,q21EA888856E6560C={lvl=14,domain="ia",type={11}}
,q287ADC1A0F570B91={lvl=14,domain="ia",type={11}}
,q444334EF0A5B48A7={lvl=14,domain="ia",type={11}}
,q46D7FA2828D099D6={lvl=14,domain="ia",type={11}}
,q489154C30BF2C70E={lvl=14,domain="ia",type={11}}
,q5AECF42736B76949={lvl=14,domain="ia",type={11}}
,q5E0E4B1A37B53DA3={lvl=14,domain="ia",type={11}}
,q63BE1EE050A0539A={lvl=14,domain="ia",type={11}}
,q6874A5A25DDD6289={lvl=14,domain="ia",type={11}}
,q77F2E8F4708BB111={lvl=14,domain="ia",type={11}}
,q7B2A028122958EE2={lvl=14,domain="ia",type={11}}
,q2F9C3294B5C832EE={lvl=14,giver='U252AA91E2724C68B'}
,q0550A3EA16873254={lvl=14,domain="ia"}
,q0D356F4D4BBDDFE4={lvl=14,domain="ia"}
,q205D3B981619A7FA={lvl=14,domain="ia"}
,q683986490D03AB5A={lvl=14,domain="ia"}
,q6C6737021586F356={lvl=14,domain="ia"}
,q1540E82DF1832AF2={lvl=14,scene="Lakeside Outpost",type={8,5},giver='U1E3BBF1E6ACC84AB'}
,q04A6AEBA00EDCDC3={lvl=14,scene="Lakeside Outpost",type={8,5},giver='U30DB319D3B173DAC'}
,qFF63921424A19BB0={lvl=14,domain="ia"}
,q0C8893C5650E4143={lvl=14,domain="ia"}
,q0DF84FC3313D3028={lvl=14,domain="ia"}
,q3406C63C4CC3C358={lvl=14,domain="ia"}
,q5B0B9B6A3A4DEFC9={lvl=14,domain="ia"}
,q2DD65D23AA54DBBB={lvl=14,scene="Lakeside Outpost",type={10},giver='U5FD4A8C26860873F'}
,q63F16EC00B12600E={lvl=14,scene="Lakeside Outpost",type={1,6},giver='U5FD4A8C26860873F'}
,q3E97B8E060D5DF98={lvl=14,domain="ia",type={17}}
,q01F5AB041AADA7B9={lvl=14,domain="ia",type={17}}
,q6F7489BF25D19F78={lvl=14,domain="ia"}
,q075069326C37BE4B={lvl=14,domain="ia"}
,q3E2398F94E02F73E={lvl=14,domain="ia"}
,q5AAA2C8B1D32835E={lvl=14,domain="ia"}
,q5B5E2190296A603C={lvl=14,domain="ia"}
,q6D56CB15794160A2={lvl=14,domain="ia"}
,q21C1023AC69FDA07={lvl=14,type={4},giver='U6B7F3A3F7890A096'}
,q61F41927EDDD435F={lvl=14,type={7},giver='U0231BC645D37A980'}
,q075E025571A3027A={lvl=14,type={8},giver='U610B81787268A249'}
,q0DBD430CB27F2F48={lvl=14,type={8},giver='U610B81787268A249'}
,q32B1392FE002B5B2={lvl=14,type={8},giver='U610B81787268A249'}
,q4BD698447C9B5213={lvl=14,type={8},giver='U610B81787268A249'}
,q4AB67F4129AD8927={lvl=14,domain="ia"}
,q2081BF556DAB3D29={lvl=14,scene="Treants' Grove",type={4},giver='U6B7F3A3F7890A096'}
,q19187D5B1BEAF8E9={lvl=14,scene="Old Meadow Farm",type={1,15},giver='U5FD4A8C26860873F'}
,q222FAE28097CC555={lvl=14,domain="ia"}
,q2ACE7683445060B6={lvl=14,domain="ia"}
,q4D7A1C21718F5313={lvl=14,domain="ia"}
,q57FEA7C85FEBFE28={lvl=14,domain="ia"}
,q5A27AA0B3B5A5418={lvl=14,domain="ia"}
,q39EBF5054A6213CF={lvl=14,domain="ia"}
,q3CE23D225BDBC738={lvl=14,domain="ia"}
,q3E631D671B5C29B6={lvl=14,domain="ia"}
,q404636BC29F5C51C={lvl=14,domain="ia"}
,q6173970E50F34E61={lvl=14,domain="ia"}
,q4442FB7C1F2495DD={lvl=14,type={7},giver='U04B6FFC07D024B8D'}
,q227D6CDB2D3D9DD8={lvl=14,type={8},giver='U42B1E60C62336A6A'}
,q243794EB955A60B3={lvl=14,scene="Falsehood Slope",type={9,1}}
,q789460F9744320F0={lvl=14,domain="ia"}
,q22088FD6912B9E35={lvl=14,type={21,11,7},giver='U159277407C6860AC'}
,q6CE2072E999FF45C={lvl=14,type={21,11,7},giver='U159277407C6860AC'}
,q37B0A4317BFDA738={lvl=14,type={21,11,7},giver='U159277407C6860AC'}
,q0A97B2BB33CB1E92={lvl=14,type={11,21,7},giver='U159277407C6860AC'}
,q736EFAAEF6AB6064={lvl=14,scene="Lakeside Outpost",type={4}}
,q28AE6A5B9A06062C={lvl=14,scene="Lakeside Outpost",type={4,15,8},giver='U5FD4A8C26860873F'}
,q02B3EA50F69C3C85={lvl=14,scene="Point Solitude",type={10},giver='U42B1E60C62336A6A'}
,q06CAFE2C0CD7F649={lvl=14,domain="ia"}
,q23260D680759A904={lvl=14,domain="ia"}
,q604CF1287BF497E7={lvl=14,domain="ia"}
,q68A19DEB5F4D98F6={lvl=14,domain="ia"}
,q7552A9960C7B7857={lvl=14,domain="ia"}
,q7DF9EDC6251A2979={lvl=14,domain="ia"}
,q50DA642E1FB10311={lvl=14,scene="Point Solitude",type={20},giver='U093EB8234469DB4F'}
,q2E567CFE64CF797A={lvl=14,domain="ia"}
,q3A92C36430184018={lvl=14,domain="ia"}
,q4E5D9F9F26E5B9DD={lvl=14,domain="ia"}
,q5BBCA31E728F52AB={lvl=14,domain="ia"}
,q6FF6751308FD0F7A={lvl=14,domain="ia"}
,q703D2FF3E8F61EA7={lvl=14,scene="Falsehood Slope",type={1,9}}
,q0AB2B5F9214520F8={lvl=14,domain="ia"}
,q149827D06C291532={lvl=14,domain="ia"}
,q14EC59097558B6F6={lvl=14,domain="ia"}
,q37EB99807BEBD740={lvl=14,domain="ia"}
,q3C0E4080780927F8={lvl=14,domain="ia"}
,qFC9CAFA90FC9C037={lvl=14,domain="ia"}
,q0E1CDD214569DE8C={lvl=14,domain="ia"}
,q24AEC5BC48592AFE={lvl=14,domain="ia"}
,q4AFEC86A6EEE4641={lvl=14,domain="ia"}
,q54A1DA1E456D5D54={lvl=14,domain="ia"}
,qFC48B0B83B9A826A={lvl=14,domain="ia"}
,q4B940CFC5A18E66D={lvl=14,domain="ia"}
,q4E068BB01A089D54={lvl=14,domain="ia"}
,q50C5D8C80E6BE418={lvl=14,domain="ia"}
,q644D497A53F2454E={lvl=14,domain="ia"}
,qFD1B00FE785551EB={lvl=14,domain="ia"}
,q1D09D7DC4EEC46CA={lvl=14,domain="ia"}
,q44F2CB83393592BC={lvl=14,domain="ia"}
,q4529B91C3BA4D3F8={lvl=14,domain="ia"}
,q768659D6261CD3E3={lvl=14,domain="ia"}
,qFA9D639633B2F6A5={lvl=14,domain="ia"}
,q28391CA40F32ABEB={lvl=14,domain="ia"}
,q40C1AA4317F29AA9={lvl=14,domain="ia"}
,q669497B458614CA8={lvl=14,domain="ia"}
,q79709C0465509B13={lvl=14,domain="ia"}
,q7A384DC56EFB392F={lvl=14,domain="ia"}
,q1551281600000000={lvl=15, grp=5,type={3,6,1}}
,q53F6581500000000={lvl=15, grp=5,type={3,6,1}}
,q2D1B1EA400000000={lvl=15,giver='U0D5FC7493F4CCCB1'}
,q2290BCA16BA13EBF={lvl=15,type={17}}
,q32F8CA11813FF723={lvl=15,type={17}}
,q06D10EA3A9870887={lvl=15,type={3}}
,q08C7A4DD652BB5BA={lvl=15,type={3}}
,q1BD7E3A7F21DB7F7={lvl=15,type={3}}
,q30DABC3E1C6352CE={lvl=15,type={3}}
,q6ED2194E1A7490CA={lvl=15}
,q1F62A87EEB373A59={lvl=15,giver='U4CC3038C7FD1A4FA'}
,q2E731D0D00000000={lvl=15,scene="Argent Glade",type={8},giver='U67FCC0E25F6B2709'}
,q6E5A5084CA3D285D={lvl=15,domain="pvp",giver='U74CE80BD70B81F57'}
,q0EB3E6CC8C8A3965={lvl=15,domain="pvp",giver='U45F390072BACFE58'}
,q4D85C760B18E5BD7={lvl=15,giver='U635A7AB0687FB451'}
,q0F757881BE901ACF={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q1FFC36B1852BB6D0={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q3230C242B89F7FFE={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q3521B1417FC591EC={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q4FAEC8ECC6C552F5={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q5252DA06AB365523={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q527A1C95805549AA={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q64F6D219C625A133={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q71F9FC6416E355D5={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q7AC3BFC0D9A4307E={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q28AE9C05FC075A4E={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q2F37A3C3B352EB01={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q3EAE33D9D9D25B8A={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q47CBCD45AA6C2590={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q6DCE2B2A85BDC18D={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q018D0A53BC02ED1E={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q1E08DB3E3439FF3C={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q45EDBB59F91A9DC2={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q5F1C36B3237F6C12={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q65CC66AE09EEFC13={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q12185005B79D2748={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q3516A17D13698612={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q520074F525AE919F={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q5BEDEB17CCDCF552={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q737C3D1D98FF7636={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q1C51228087A092E0={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q226171BDBE727660={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q2DA1410DB5C75F25={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q30F8374EF86E0664={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q367F08B1B96DBD20={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q6FCC4CFD626F59EA={lvl=15,craft={{key='I50DE606026FDCF6D,0DDD477AD9D89579,,,,,,', count=3}},type={25}}
,q1B91431285104472={lvl=15,craft={{key='I453554C884626A59,4C5D925E02B9E5A6,,,,,,', count=1},{key='I38B8B1878F87917E,1065D8F1A8647633,,,,,,', count=5}},type={4}}
,q1022637BBDF43B2C={lvl=15,craft={{key='I38B8B1878F87917E,1065D8F1A8647633,,,,,,', count=5},{key='I453554C884626A59,4C5D925E02B9E5A6,,,,,,', count=1}},type={4}}
,q2744E25526314A43={lvl=15,craft={{key='I7FBEDDCC4D1E2A84,A8AB3C7E76976857,,,,,,', count=3}},type={25}}
,q631F9F8E74694CB8={lvl=15,craft={{key='I7FBEDDCC4D1E2A84,A8AB3C7E76976857,,,,,,', count=3}},type={25}}
,q2F36F9E650B5B6AA={lvl=15,craft={{key='I1B2B2A2C61FE5064,434F251F6AD4B433,,,,,,', count=4},{key='I31B292F864193182,0B986897E15782FE,,,,,,', count=2}},type={4}}
,q3BE7A40852F16AFA={lvl=15,craft={{key='I31B292F864193182,0B986897E15782FE,,,,,,', count=2},{key='I1B2B2A2C61FE5064,434F251F6AD4B433,,,,,,', count=4}},type={4}}
,q180901B2924242E4={lvl=15,craft={{key='I1B2B2A2C61FE5064,434F251F6AD4B433,,,,,,', count=6}},type={4}}
,q1ADFC69C89EB3504={lvl=15,craft={{key='I1B2B2A2C61FE5064,434F251F6AD4B433,,,,,,', count=6}},type={4}}
,q5A607EE09E4A9CBC={lvl=15,craft={{key='I1768F24049B3DB1A,2BBB475A9FA1056A,,,,,,', count=6}},type={4}}
,q29350B29AA32C413={lvl=15,craft={{key='I1768F24049B3DB1A,2BBB475A9FA1056A,,,,,,', count=6}},type={4}}
,q03790BA98C136B42={lvl=15,craft={{key='I56032B1175AD91D7,E13360FF17B08D7F,,,,,,', count=3}},type={25}}
,q506887B6C2779262={lvl=15,craft={{key='I56032B1175AD91D7,E13360FF17B08D7F,,,,,,', count=3}},type={25}}
,q70290DA6C6CA84FE={lvl=15,craft={{key='I7EE4AE745863F4A4,02666730A26B15CC,,,,,,', count=4}},type={25}}
,q76F235EAEDAFD94E={lvl=15,craft={{key='I7EE4AE745863F4A4,02666730A26B15CC,,,,,,', count=4}},type={25}}
,q585059BEA1FB7E61={lvl=15,craft={{key='I50DE606026FDCF6D,0DDD477AD9D89579,,,,,,', count=3}},type={25}}
,q32AEF2D928DC430D={lvl=15,craft={{key='I7EE4AE758FBCC895,B615B776CF755975,,,,,,', count=4}},type={25}}
,q509397B1DE8965BC={lvl=15,craft={{key='I7EE4AE758FBCC895,B615B776CF755975,,,,,,', count=4}},type={25}}
,qFAB0AA74EBDD0789={lvl=15,craft={{key='I452DB854824143A4,6E9F03A27FF18BCF,,,,,,', count=6}},type={4}}
,q72A7A8A3D123CE6E={lvl=15,craft={{key='I452DB854824143A4,6E9F03A27FF18BCF,,,,,,', count=6}},type={4}}
,q0CB9C78B7A45F2F9={lvl=15,craft={{key='I1D0FEC126C83DCB6,16D4CA5EC5110ECB,,,,,,', count=3}},type={25}}
,q6505352466616D38={lvl=15,craft={{key='I1D0FEC126C83DCB6,16D4CA5EC5110ECB,,,,,,', count=3}},type={25}}
,q163D4B6D779C78DD={lvl=15,craft={{key='I15CFD4727957DE16,254B1C3A71B505D8,,,,,,', count=3}},type={25}}
,q170B69079C98055D={lvl=15,craft={{key='I15CFD4727957DE16,254B1C3A71B505D8,,,,,,', count=3}},type={25}}
,q6BC09469E122797C={lvl=15,craft={{key='I38B8B1878F87917E,1065D8F1A8647633,,,,,,', count=6}},type={4}}
,q3A594CA298AA072D={lvl=15,craft={{key='I38B8B1878F87917E,1065D8F1A8647633,,,,,,', count=6}},type={4}}
,q51E1FFE0B4E0CDFE={lvl=15,craft={{key='I66336F35820229AB,59A4E35DA1CEA6BE,,,,,,', count=3}},type={25}}
,q5A88EB12F7C0A7FC={lvl=15,craft={{key='I66336F35820229AB,59A4E35DA1CEA6BE,,,,,,', count=3}},type={25}}
,q052E073C3713BA93={lvl=15,craft={{key='I452DB854824143A4,6E9F03A27FF18BCF,,,,,,', count=2},{key='I1768F24049B3DB1A,2BBB475A9FA1056A,,,,,,', count=4}},type={4}}
,q51EC60959A00AADE={lvl=15,craft={{key='I452DB854824143A4,6E9F03A27FF18BCF,,,,,,', count=2},{key='I1768F24049B3DB1A,2BBB475A9FA1056A,,,,,,', count=4}},type={4}}
,q4BCD3980B62BFEB9={lvl=15,craft={{key='I7EE4AE76AE240594,F9D019214CF52ECA,,,,,,', count=4}},type={25}}
,q6A78FB747D104E45={lvl=15,craft={{key='I7EE4AE76AE240594,F9D019214CF52ECA,,,,,,', count=4}},type={25}}
,q4EB9EAA795DE3F74={lvl=15,craft={{key='I38B8B1878F87917E,1065D8F1A8647633,,,,,,', count=5},{key='I342C6BCDE48D1F4A,D44A3FD7922D142A,,,,,,', count=1}},type={4}}
,q4BA20FBDD06CF13F={lvl=15,craft={{key='I342C6BCDE48D1F4A,D44A3FD7922D142A,,,,,,', count=1},{key='I38B8B1878F87917E,1065D8F1A8647633,,,,,,', count=5}},type={4}}
,q3A8D57C0B14E973C={lvl=15,craft={{key='I3DF843C842E0A4D5,DCA44D117C009DE8,,,,,,', count=4},{key='I1B2B2A2C61FE5064,434F251F6AD4B433,,,,,,', count=2}},type={4}}
,q4DC247ACA09E1419={lvl=15,craft={{key='I1B2B2A2C61FE5064,434F251F6AD4B433,,,,,,', count=2},{key='I3DF843C842E0A4D5,DCA44D117C009DE8,,,,,,', count=4}},type={4}}
,q2953207DA164984B={lvl=15,giver='UFBC7FF6A35662B7E'}
,q57049F5FEEBF687C={lvl=15}
,q00EDD5F400000000={lvl=15,type={11,6}}
,q00EDD60600000000={lvl=15,type={11,6}}
,q2A7FB870DBA0CFA1={lvl=15,type={17,7}}
,q3DD41E734B002132={lvl=15,type={17}}
,q47F16637D47A9D8B={lvl=15,domain="pvp",giver='U47A47312420F9218'}
,q4DC45C3FB62EF30E={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q56D049970B630B4F={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q6FBB23AFC5CD9059={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q77DE8E198C8B4B44={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q05BE43127C13EA84={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q46B66E7578B4BB37={lvl=15,type={7,3},giver='U395DC3900D2A3A75'}
,q0F94D82A1ADC447A={lvl=15,type={7,4},giver='U5002EB095C5ED8C9'}
,q648ED5BD1057E77A={lvl=15,type={4,7},giver='U617140633F92052F'}
,q1B2AE4CCC1D437B6={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q634D7C54E350E3A3={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q0967994E0C716E16={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q752B43B21316B699={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q26484E57282C21EC={lvl=15,type={7,4},giver='U617140633F92052F'}
,q4749D6961A93A265={lvl=15,type={7,4},giver='U5002EB095C5ED8C9'}
,q55064A3637AC479B={lvl=15,type={7,4},giver='U617140633F92052F'}
,q77C86A2D7E7CCC58={lvl=15,type={4,7},giver='U5002EB095C5ED8C9'}
,q06057CFCF3B63F00={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q35284E91C39F35E5={lvl=15,type={7,3},giver='U3EE11CF83E449A3D'}
,q3C788543A1D01A7A={lvl=15,type={17}}
,q3437C99CBF28B359={lvl=15,domain="pvp",giver='U06FD356418AE0807'}
,q0A8BC53E101BCF50={lvl=15,scene="Savage Hill",type={6},giver='U109B79E0733CFAEB'}
,q6631C428F4ABA5E6={lvl=15,type={17}}
,q6B1C387ED6D4E77B={lvl=15,giver='U73BAA2AB39EDAAF8'}
,q07861F0442868AC1={lvl=15,type={17}}
,q1DF39CCA7EBF9407={lvl=15,giver='U551AFF263D7BD2A7'}
,q4A9E0FD6D8CEA054={lvl=15}
,q0CC886FF0EF984A9={lvl=15,type={17}}
,q6CDE77A6DD080903={lvl=15,type={17}}
,q07C27AE8DACF3B9F={lvl=15,type={17}}
,q10C0159FC6AC34B8={lvl=15,type={17}}
,q54B4F777C118735C={lvl=15,giver='U6BEBE5A41C313874'}
,q4AA818A5A04EA8AB={lvl=15,giver='U037A1FAC673492F2'}
,q5692856AC17B4854={lvl=15,domain="pvp",giver='U24D84377456667A4'}
,q22BB707FDB08232B={lvl=15,type={3,7},giver='U0D32055F7C21A695'}
,q6361B45734836622={lvl=15,type={3,7},giver='U0D32055F7C21A695'}
,q5354DF4558CA7974={lvl=15,type={7,3},giver='U0D32055F7C21A695'}
,q0AAF0739C30ACA4F={lvl=15,giver='U30B313ED25CA1436'}
,q081ED1F3BFD16097={lvl=15,giver='U037A1FAC673492F2'}
,q44D08D50AE88B630={lvl=15,type={13}}
,q1189FA538E6D1984={lvl=15,scene="Vestige",type={9,1}}
,q6FA87A91828916EE={lvl=15}
,q7DF63552F335633F={lvl=15,domain="pvp",giver='U39254FEE34E135E7'}
,q5850DFE8D29E3CA1={lvl=15,domain="pvp",giver='U45F390072BACFE58'}
,q7D437A6C1FF2CEB8={lvl=15,type={3}}
,q7ED999DD981BA02F={lvl=15,domain="pvp",giver='U06FD356418AE0807'}
,q753275F865047366={lvl=15,scene="Village of the Old Gods",type={1,9}}
,q198C0ABBA9685958={lvl=15,type={4},giver='U40BE367D3C3E8C15'}
,q363FC7B116970E72={lvl=15,type={4},giver='U624BF85A4BA67856'}
,q4582D8A9C69F7BEF={lvl=15,type={4},giver='U235564562CFD8CD3'}
,q201E7497D07EC171={lvl=15,type={4},giver='U235564562CFD8CD3'}
,q4FD0FEB630F88C1A={lvl=15,type={4},giver='U40BE367D3C3E8C15'}
,q675AD570CAC345F7={lvl=15,type={4},giver='U624BF85A4BA67856'}
,q14A54873EAF10CFA={lvl=15,type={4},giver='U58C175696879408F'}
,q35BD6E3B052FC71B={lvl=15,type={4},giver='U6C8744820F9A3348'}
,q27AE58F3B0758BD3={lvl=15,type={4},giver='U44EF930A0C124F49'}
,q1C7972FDF7F2E429={lvl=15,type={4},giver='U3442C7B771A205AE'}
,q4DFD82D4456FB4DB={lvl=15,type={4},giver='U6C8744820F9A3348'}
,q2C38CDA5C0CAF2BF={lvl=15,type={4},giver='U3D76CA345A649778'}
,q35B132DC17AFB213={lvl=15,type={4},giver='U2931FF5B0B3C797F'}
,qFC6D6CA13D6709B7={lvl=15,type={4},giver='U58C175685F009DBE'}
,q7C04D76AB3669AAB={lvl=15,type={4},giver='U6C8744820F9A3348'}
,q36CDA5DDB7B1A9A4={lvl=15,type={4},giver='U3442C7B771A205AE'}
,q657721828D14A914={lvl=15,type={4},giver='U15CA6AD54CFBD609'}
,q471F21F1474D9D6F={lvl=15,type={4},giver='U7D13096039EA05AD'}
,q5BAA7B16CAC5A0D1={lvl=15,type={4},giver='U529BC34458C0B9BB'}
,q4116C4CC87596F6C={lvl=15,type={4},giver='U529BC34458C0B9BB'}
,q243CB545C168D9C3={lvl=15,type={4},giver='U58C175696879408F'}
,q216CB95CBE37921A={lvl=15,type={4},giver='U15CA6AD54CFBD609'}
,q7708A0E5A93ABD52={lvl=15,type={4},giver='U7D13096039EA05AD'}
,q673BD223B0D4789E={lvl=15,type={4},giver='U3D76CA345A649778'}
,q3DF165BDFD4CF6EB={lvl=15,type={4},giver='U2E6BF4A65DBB50E2'}
,q661CBBE160DDBF26={lvl=15,type={4},giver='U66A1D4FE0E3A43CA'}
,q6159A3030557E263={lvl=15,type={4},giver='U7D13096039EA05AD'}
,q0ACE6157A4A11B52={lvl=15,type={4},giver='U2931FF5B0B3C797F'}
,q63EE7ADDBCE3FBC3={lvl=15,type={4},giver='U58C175685F009DBE'}
,q6E028526FA263B58={lvl=15,type={7},giver='U4DD6B8B3408EC034'}
,q7F26EEC795643D09={lvl=15,type={7},giver='U54E5A68E55998FD0'}
,q3CAF360C772CE314={lvl=15,scene="Mirror of Ages",type={8,5},giver='U67FCC0E25F6B2709'}
,q6A6B3FA1B207C5FB={lvl=15,giver='U1017D4807DE4BA0A'}
,q2BDF6668C2447FCB={lvl=15,scene="Village of the Old Gods",type={4,1},giver='U0D5FC7493F4CCCB1'}
,q457A07C300000000={lvl=15,type={3}}
,q74D9BA3A837D2AAE={lvl=15,domain="pvp",giver='U74CE80BD70B81F57'}
,q15A999835B6C9E4B={lvl=15,giver='U0C138CA60CCAE043'}
,q05F6774C523E7C10={lvl=15,scene="Village of the Old Gods",type={20},giver='U58B792CF1C9CC4A6'}
,q48B1701DA538B7A2={lvl=15,giver='U27D677941EA6DA74'}
,q606A94E4975A221F={lvl=15,giver='U2100504C4B095914'}
,q0E116E3600000000={lvl=15, grp=5,type={6,1,3}}
,q6CA5FAF900000000={lvl=15, grp=5,type={6,1,3}}
,q283F13B2560734D2={lvl=15,type={17}}
,q46279A4D2DCDBA9D={lvl=15,type={17,7}}
,q0539F97AAE4CC1C2={lvl=15,type={7,17}}
,q55E87A6C36915A56={lvl=15,type={17}}
,q3647846200000000={lvl=15,giver='U17B78A0F08EC4D7D'}
,q4B4D0BD300000000={lvl=15,giver='U768DAC3F7CF2C210'}
,q17503FB500000000={lvl=15,type={4},giver='U5035B0A46C602B71'}
,q3785D17100000000={lvl=15,type={4},giver='U667524482C7CDB0D'}
,q5396AFF200000000={lvl=15,type={4},giver='U5035B0A46C602B71'}
,q563E315800000000={lvl=15,type={4},giver='U667524482C7CDB0D'}
,q405C4CC000000000={lvl=15,type={4},giver='U5035B0A46C602B71'}
,q519DE50A00000000={lvl=15,type={4},giver='U667524482C7CDB0D'}
,q0E356BBF00000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q7B0A4D5500000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q2207165700000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q6769D3D700000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q0E6FCBB400000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q20D1073800000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q21E2262B00000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q36BF739600000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q40027EBB00000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q47B1BBEC00000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q5559864300000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q7B4F13D000000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q00EDD5F700000000={lvl=15,type={6,11}}
,q00EDD60900000000={lvl=15,type={11,6}}
,q711E8C62E1A1BE6A={lvl=15,scene="Argent Glade",type={5},giver='U74E64EFC5CE8AFA6'}
,q42F337C041136C0D={lvl=15,type={7,17}}
,q5871DB6188EF642F={lvl=15,type={17}}
,q10CC24EE408212B5={lvl=15,type={17}}
,q267BB45C8DC80334={lvl=15,type={17}}
,q2BEB99FFEE71A829={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q48C1970670C5984D={lvl=15,type={7,3},giver='U395DC3900D2A3A75'}
,q4C4AD3AE15CFB887={lvl=15,type={7,3},giver='U395DC3900D2A3A75'}
,q55338788DF0294C1={lvl=15,type={7,3},giver='U3EE11CF83E449A3D'}
,q0935C86B337EC51B={lvl=15,type={7,4},giver='U5002EB095C5ED8C9'}
,q17B62FE23F3A5C9A={lvl=15,type={4,7},giver='U617140633F92052F'}
,q02659BA99E15D0C2={lvl=15,type={7,3},giver='U3EE11CF83E449A3D'}
,q0F894EBAA7D37A3B={lvl=15,type={7,3},giver='U395DC3900D2A3A75'}
,q0351D44DF63F1A74={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q1BB3D264744787A7={lvl=15,type={7,3},giver='U395DC3900D2A3A75'}
,q2976B154BE278B91={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q2BA7D1EBA82B363B={lvl=15,type={7,3},giver='U3EE11CF83E449A3D'}
,q4EF0EDC47F90F974={lvl=15,type={7,4},giver='U5002EB095C5ED8C9'}
,q790DAB7019652B1B={lvl=15,type={7,4},giver='U617140633F92052F'}
,q62B36C45399DB7A5={lvl=15,type={4,7},giver='U617140633F92052F'}
,q6ED3CD0902E82D42={lvl=15,type={4,7},giver='U5002EB095C5ED8C9'}
,q07E3C4EB023BE7E5={lvl=15,type={3,7},giver='U3EE11CF83E449A3D'}
,q2DDBD4A1F0C8B799={lvl=15,type={3,7},giver='U395DC3900D2A3A75'}
,q19812CB9F0795603={lvl=15,giver='U5C5D8A5C56232C89'}
,q27B8E1F36C380317={lvl=15,type={17}}
,q68A80A8A70A9FBD4={lvl=15,type={17}}
,q6156519C7BF4E465={lvl=15,giver='U610B81787268A249'}
,q11694EC826BD2471={lvl=15,scene="Village of the Old Gods",type={4},giver='U7EDCF95255EA7162'}
,q19839286FFAF286C={lvl=15,scene="Mirror of Ages",type={1},giver='U74E64EFC5CE8AFA6'}
,q00EDD5F500000000={lvl=15,type={6,11}}
,q00EDD60700000000={lvl=15,type={6,11}}
,q52390403D3C39E6C={lvl=15,scene="Savage Hill",type={9,1}}
,q2731CA70418A207E={lvl=15,scene="Overwatch Keep",type={1,9}}
,q1098583D52E285F5={lvl=15,type={4},giver='U1992AEF41E5A52CF'}
,q1AAD24A48BB7A2DD={lvl=15,type={4},giver='U13A4DDC91D5A9CFA'}
,q2D05450164AAE8AD={lvl=15,domain="pvp",giver='U39254FEE34E135E7'}
,q2ABE60D6BD870658={lvl=15,type={3}}
,q525E11749053DF38={lvl=15,type={17}}
,q721D07FD5F87F81E={lvl=15,type={17,7}}
,q35521D4410C1ED59={lvl=15,domain="pvp",giver='U24D84377456667A4'}
,q29F40FA41ED0F9B0={lvl=15,type={3}}
,q001B8B4AF9A0F45B={lvl=15,giver='U2570041F4A6CDC6D'}
,q294F620ABCDED2F7={lvl=15,scene="Village of the Old Gods",type={6}}
,q51A56797AEA08556={lvl=15,domain="pvp",giver='U45F390072BACFE58'}
,q1179D1C0A9E88FA6={lvl=15,domain="pvp",giver='U47A47312420F9218'}
,q4C9827031243A0DF={lvl=15,giver='U037A1FAC673492F2'}
,q45176F0A531DD73D={lvl=15,giver='U037A1FAC673492F2'}
,q10B848C400000000={lvl=15, grp=3,giver='U466F8E012F1FF1FB'}
,q3B4041D500000000={lvl=15, grp=3,giver='U3D8EA30F468E8E08'}
,q0E83FC1E9D61DA41={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q22ED0C7BF0E7680B={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q243CB4EA89B849C4={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q2C2BF5C8A6B70F0A={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q40248E4193A17DC2={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q4302F542E2309925={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q4433D207CAA8E697={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q6FBB5843B82E253A={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q716A0659B2C8FDA6={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q77FF7B722467D1C1={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q2871123DFD4BF35A={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q4AA6DA2A825C077B={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q57C985DAF55F3C3C={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q5F83793BC3039A31={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q011BF844C98F10F3={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q2B5CE776CD53C70D={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q33F7BE7B09DE6F3B={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q5669B5E2A18F3E5C={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q6691E0A816129681={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q72EDAA59D5C7237C={lvl=15,domain="guild",giver='U75FBE0CA773819E9'}
,q3F60B14E7E478D77={lvl=15,type={17}}
,q0697FF5A5AF14318={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q0A95D1CAC9950E62={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q133D16409F28459E={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q2DC0839ADB018665={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q422F18DCECAB29D9={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q567D6CE692D6D683={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q56F11D1C03DF26CA={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q665AAAA37E25B7E0={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q681913969404AE49={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q72A1B3D693B9C843={lvl=15,domain="guild",giver='U501D431647F9ADB3'}
,q1CBC8198AC50F0A1={lvl=15,scene="Vestige",type={6},giver='U630FAD095DD6FCB7'}
,q50B109A776E395F9={lvl=15,giver='U5C4607D709C40BAE'}
,q411E455C080F5E91={lvl=15,type={17}}
,q576C04171DB68A1C={lvl=15,giver='U08CFF4DB052C92D8'}
,q1B6F351900000000={lvl=15,giver='U58172386053A6C8C'}
,q4B0004C100000000={lvl=15,giver='U629900D65043269F'}
,q205604B48A923C71={lvl=15,scene="Trawling Post",type={1,9}}
,q54E3CE0400000000={lvl=15}
,q40722576799788D9={lvl=15,scene="Mirror of Ages",type={9,1}}
,q2B13D2AD00000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q4619DD8B00000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q76D25BDC00000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q76F2078F00000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q5CD88DF300000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q77773DF600000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q4EAC190000000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q7FFB1EC900000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q12D8730500000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q5B6B89A300000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q24758C7300000000={lvl=15,type={3},giver='U7FDA2A342E6F8F82'}
,q739B28FE00000000={lvl=15,type={3},giver='U6F90B04D42677597'}
,q4A65051900000000={lvl=15,type={3,1}}
,q52A6B62F00000000={lvl=15,type={3,1}}
,q337A6DB3AF640972={lvl=15,type={13},giver='U0176F0D64ACBCB42'}
,q5B4E6F0F00000000={lvl=15}
,q20D28D7600000000={lvl=15}
,q4D6F4FD300000000={lvl=15}
,q1FA6D3FF00000000={lvl=15}
,q7A61131B00000000={lvl=15}
,q0A67977700000000={lvl=15}
,q7FA8A5E200000000={lvl=15}
,q02F8E45900000000={lvl=15}
,q0A1E086D00000000={lvl=15}
,q2A646EFA00000000={lvl=15}
,q482A8FE400000000={lvl=15}
,q11BAD60100000000={lvl=15}
,q2391A93400000000={lvl=15}
,q2A5DA16800000000={lvl=15}
,q4E60619400000000={lvl=15}
,q02177EA300000000={lvl=15}
,q5F1F8CD100000000={lvl=15}
,q08AF6AAF00000000={lvl=15}
,q7577629F00000000={lvl=15}
,q2E7C2D8B00000000={lvl=15}
,q7D53E63F00000000={lvl=15}
,q0969B3CD00000000={lvl=15}
,q4DB18DF300000000={lvl=15}
,q572E9E4000000000={lvl=15}
,q7E71930700000000={lvl=15}
,q190B47F000000000={lvl=15}
,q3D8D92C000000000={lvl=15}
,q45CA0C7300000000={lvl=15}
,q52515ACC00000000={lvl=15}
,q247423B800000000={lvl=15}
,q7DA666A700000000={lvl=15}
,q1F12544E00000000={lvl=15}
,q76AADAAB00000000={lvl=15}
,q3EC0712600000000={lvl=15}
,q5D1DFEB300000000={lvl=15}
,q10578D6D00000000={lvl=15}
,q5A7B435300000000={lvl=15}
,q430309D300000000={lvl=15}
,q75A1D6C800000000={lvl=15}
,q3308A0CE00000000={lvl=15}
,q7B95ABF700000000={lvl=15}
,q0424F96200000000={lvl=15}
,q6921119800000000={lvl=15}
,q1D14EE9F00000000={lvl=15}
,q5E1B7B0200000000={lvl=15}
,q176F2B0700000000={lvl=15}
,q1952490900000000={lvl=15}
,q1017F49200000000={lvl=15}
,q72F624F500000000={lvl=15}
,q066033F000000000={lvl=15}
,q1099650900000000={lvl=15}
,q2FD47D8F00000000={lvl=15}
,q365F68CF00000000={lvl=15}
,q1C2E1FD600000000={lvl=15}
,q50DDDD5800000000={lvl=15}
,q0A56754E00000000={lvl=15}
,q6CF2B3E000000000={lvl=15}
,q16A1001200000000={lvl=15}
,q25591BB700000000={lvl=15}
,q50F0192B00000000={lvl=15}
,q7D1B827700000000={lvl=15}
,q14725F5400000000={lvl=15}
,q2E0748E400000000={lvl=15}
,q74A161320CA3BC5A={lvl=15,domain="guild"}
,q1B70C62800000000={lvl=15,type={11,6}}
,q67927A5E00000000={lvl=15,type={6,11}}
,q16FA1278E3B1D92F={lvl=15,type={17}}
,q546539AAB8DEC2D7={lvl=15,scene="Trawling Post",type={4,6},giver='U5DAE25614C84F51D'}
,q60FA25A9237FB9D4={lvl=15,scene="Trawling Post",type={6,4,10},giver='U5DAE25614C84F51D'}
,q62B145D1AFD35C54={lvl=15,type={13}}
,q00A6605B859C3931={lvl=15,type={17}}
,q2AF7F499D3BB4F89={lvl=15,type={17}}
,q208E6239E81506CA={lvl=15,scene="Mirror of Ages",type={6}}
,q4BD7F2FA8130EF75={lvl=15,type={17}}
,q54C5D572A858E826={lvl=15,type={7,17}}
,q3B5C19E2AC589184={lvl=15,domain="pvp",giver='U06FD356418AE0807'}
,q7F864161AD154061={lvl=15}
,q00EDD5F600000000={lvl=15,type={11,6}}
,q00EDD60800000000={lvl=15,type={6,11}}
,q001EF62891659835={lvl=15,scene="Savage Hill",type={9,1}}
,q0FCD83E383E3BF5A={lvl=15,domain="pvp",giver='U39254FEE34E135E7'}
,q04C56A7465CC140B={lvl=15,domain="pvp",giver='U74CE80BD70B81F57'}
,q0CD9E0DD00000000={lvl=15,giver='U629900D65043269F'}
,q43ECE88400000000={lvl=15,giver='U768DAC3F7CF2C210'}
,q41DFF117BD9CC0B4={lvl=15,scene="Argent Glade",type={5},giver='U0D5FC7493F4CCCB1'}
,q5D9954169DB77A8D={lvl=16,scene="Smith's Haven",use={{key='I2DB9DD4388C8FA1A,295B9EB65013ACAC,,,,,,', count=1}},type={2,10},giver='U5BAEE8094F9A8644'}
,q4414B7D7701EAA9B={lvl=16,scene="Smith's Haven",type={2,20,8},giver='U34AEB3BE18A708F6'}
,q2F4B035773E2B60F={lvl=16,scene="Untamed Copse",type={8,4},giver='U67FCC0E25F6B2709'}
,q57A3F2D2902E68F1={lvl=16,scene="Smith's Haven",type={9,1}}
,q00FDFFF400000000={lvl=16,type={3}}
,q6AB262859FE7BE81={lvl=16,scene="Smith's Haven",type={9,1}}
,q1E10CB3100000000={lvl=16,type={11,3,1}}
,q22B7A79EAF9B94AB={lvl=16,scene="Argent Glade",type={13},giver='U67FCC0E25F6B2709'}
,q5731EB10EC4DB0FE={lvl=16,scene="Smith's Haven",type={4}}
,q3B0308A5AD40B636={lvl=16,scene="Argent Glade",type={4}}
,q0821848FC41CD69C={lvl=16,scene="Smith's Haven",type={4}}
,q5DCF36E9EB2B9C0A={lvl=16,scene="Smith's Haven",type={8},giver='U109B79E0733CFAEB'}
,q22AA438FF6755B99={lvl=16,scene="Untamed Copse",type={4}}
,q66E319190E6608A9={lvl=16,scene="Untamed Copse",type={9,1}}
,q70B1DAC700000000={lvl=16,type={1,11,3}}
,q595EB70900000000={lvl=16,scene="Untamed Copse",type={8},giver='U2F750FE0321F8D36'}
,q4D150CE200000000={lvl=17,scene="Snarebrush Grot",type={10},giver='U26FEBF6F25493513'}
,qFEAD3EA762CA034C={lvl=17,type={17}}
,q531B323C7F779D21={lvl=17,type={17}}
,q557C8D7BF9DC929D={lvl=17,type={6},giver='U3A202B205A266B4A'}
,q13F015928F167EAF={lvl=17,type={5},giver='U2FC08E9446C6F348'}
,q09727291E7208ABF={lvl=17,type={17}}
,q40A91796A8028AE7={lvl=17,type={17,7}}
,q4474FB659E0D82C9={lvl=17,type={17,7}}
,q50102683354FA5FB={lvl=17,type={17}}
,q6FBDB524B50B0140={lvl=17,type={17,7}}
,q78C85C6E649A9175={lvl=17,type={17}}
,q04D1302AE5BA5215={lvl=17,type={10,1},giver='U3DBFA6113B3531C1'}
,q6E0F187E41F4BBD9={lvl=17,scene="Snarebrush Grot",type={4},giver='U26FEBF6F25493513'}
,q31552560DF8441C4={lvl=17,scene="Quick's College",type={2,6,8,4},giver='U3F6A6AF80F471FAF'}
,q1EDC7468D06049C3={lvl=17}
,q5EF7EA9412AEB378={lvl=17}
,q747F61C2D529BBCC={lvl=17,type={1}}
,q573141329A2D4021={lvl=17,scene="Snarebrush Grot",type={1}}
,q1AAF9B677F2CEC49={lvl=17,scene="Iron Fortress",type={9,1}}
,q37C34796A8F0F926={lvl=17,scene="Snarebrush Grot",type={6}}
,q4A9232B70E194D5B={lvl=17,scene="Quick's College",type={1},giver='U5673026611262233'}
,q4E87B40DEB88D013={lvl=17,scene="Snarebrush Grot",type={6}}
,q5CC4BA4E00000000={lvl=17,scene="Iron Fortress",type={6,4}}
,q010CB6B30CCC37DC={lvl=17,scene="Iron Fortress",type={9,1}}
,q7495C97D0D66338E={lvl=18,scene="Overwatch Keep",type={1,9}}
,q7D0E7148D22DBECD={lvl=18,type={1,11,3},giver='U38A4C68052DE08BB'}
,q5574EC14B140538D={lvl=18, grp=3,type={11,3},giver='U0A5AAEF377D52758'}
,q6532BED34D79021B={lvl=18,scene="Palisade",type={4}}
,q7F4CD597CCCFD1F5={lvl=18,scene="Iron Fortress",type={1,9}}
,q0DB77C46E45A79AD={lvl=18}
,q72DE1479E70653F4={lvl=18}
,q5BF443FF6DF89FDB={lvl=18,scene="Palisade",type={4},giver='U26FEBF6F25493513'}
,q15F649A09AA9EB0F={lvl=18,scene="Iron Fortress",type={4,6},giver='U34AEB3BE18A708F6'}
,q3F316CE8C82AB13E={lvl=18,scene="Argent Glade",type={8},giver='U26FEBF6F25493513'}
,q70C7E07D20EAFBE0={lvl=18, grp=3,type={3,11},giver='U5A8EF7FC7102B7AF'}
,q7611D052BA07D682={lvl=18,type={11,3,1},giver='U545CCB7372FB2CF4'}
,q050EAF5B7B94713A={lvl=18,scene="Iron Fortress",type={8},giver='U34AEB3BE18A708F6'}
,q1A862564E6F665EF={lvl=18,scene="Overwatch Keep",type={4}}
,q196B866C00000000={lvl=18,scene="Palisade",type={19}}
,q11196B5A41521175={lvl=18}
,q247AEEFF4D318E26={lvl=18}
,q7843538D6712EAA1={lvl=18}
,q4188F1E6959372F7={lvl=18,scene="Palisade",type={1,9}}
,q7B8C1598CF2D65FD={lvl=18,scene="Argent Glade",type={1},giver='U74C5F0DC227889B1'}
,q6015357231E6BF39={lvl=18,scene="Iron Fortress",type={2,1,10}}
,q3A69769C73F6AC99={lvl=18,type={17}}
,q6023A74692751E68={lvl=18,type={17}}
,q2FB88EDA00000000={lvl=18, grp=3,giver='U3D8EA30F468E8E08'}
,q52BA34FC00000000={lvl=18, grp=3,giver='U466F8E012F1FF1FB'}
,q189EF31587D88A9A={lvl=18,scene="Iron Fortress",type={4},giver='U7E5CE48F5D31E6F5'}
,q6DD052F9BD9A6433={lvl=18,scene="Palisade",type={10},giver='U7F2D56B15456778E'}
,q473C780ED65F978B={lvl=18,scene="Iron Fortress",type={6,1,2,4}}
,q3043305900000000={lvl=19,scene="Argent Glade",type={8},giver='U46BC8A7C1781278F'}
,q6AAC80FFBE4F789D={lvl=19,domain="pvp"}
,q387726D2FDCE6C2E={lvl=19,scene="Far Mine Loop",type={4},giver='U32773C7C106A2ABB'}
,q1C33A6E600000000={lvl=19,scene="Temblor Hills",type={4}}
,q58C1288E66AA1128={lvl=19,domain="pvp"}
,q75BD2B2664F134BD={lvl=19,scene="Argent Glade",type={1,3,10},giver='U68094C020F01068F'}
,q48E1E639414B0A1B={lvl=19,scene="Overwatch Keep",type={4}}
,q0C32C1954A771BC0={lvl=19,scene="Temblor Hills",type={1,8},giver='U06830C9F1C556301'}
,q7ED61FCF593C9DD6={lvl=19,scene="Overwatch Keep",type={10},giver='U31C3BB9C00EDFB2D'}
,q5FB7879F68AFAA07={lvl=19,scene="Coterie Camp",type={5,8},giver='U60BBE1A117180937'}
,q17FED35AB6178178={lvl=19,type={5},giver='U03A3E8511875EF5A'}
,q3CF0EF70B2BE8D17={lvl=19,scene="Silkweb Pass",type={8,5},giver='U1FAE8CC85EC7FC11'}
,q0E6331EEC5FEC235={lvl=19}
,q697CC08C00000000={lvl=19,scene="Mirror of Ages",type={4},giver='U3112D6780A42DF84'}
,q5C87BA1249B85BD4={lvl=19,scene="Argent Glade",type={3,1,10},giver='U73322FA90B2D775B'}
,q7435A2F5B360B3CF={lvl=19,scene="Argent Glade",type={4},giver='U46BC8A7C1781278F'}
,q636780C0CD34222A={lvl=19,scene="Quarrystone Basin",type={4}}
,q4D330F039DF3EB7C={lvl=19,scene="Quarrystone Basin",type={4}}
,q09EB5F6B4270A680={lvl=19,scene="Gnarlwood Post",type={5,8},giver='U74C5F0DC227889B1'}
,q5CFAFF6AA1DE3D88={lvl=19}
,q00CE3CA30D2ECB44={lvl=19,domain="pvp"}
,q7375EC20BF6E13D2={lvl=19,scene="Far Mine Loop"}
,q00F0956F036BD4B8={lvl=19,scene="Temblor Hills",type={2,6},giver='U1A264FCC0848A947'}
,q5DFFF97C0F2A8288={lvl=19,scene="Overwatch Keep",type={4}}
,q4078176E8F6609BE={lvl=19,scene="Coterie Camp",type={8,5},giver='U34AEB3BE18A708F6'}
,q041AAC7B9D31782D={lvl=19,scene="Argent Glade",type={4,10,3},giver='U691F162263D2117D'}
,q4D1294E81424B09B={lvl=19,giver='U562AFA0E027365AD'}
,q00DF73BAF190239A={lvl=19,scene="Overwatch Keep",type={1},giver='U3D424CAC5CCABAD5'}
,q1B3A03BF7716125B={lvl=19,scene="Gnarlwood Post",type={5,8},giver='U14B586DD62BC2DB5'}
,q78D7FD03671F6DA3={lvl=19,scene="Quarrystone Basin",type={9,1}}
,q5B344D6516BA9C04={lvl=19,scene="Overwatch Keep",type={9}}
,q7CD21DDB6CABC6C1={lvl=19,scene="Far Mine Loop",type={1,9}}
,q0C611C83732F6DCB={lvl=19,scene="Temblor Hills", grp=3,type={9,1}}
,q3E2B4D86508C8332={lvl=19,scene="Overwatch Keep",type={9}}
,q76779AAF2972179A={lvl=19,scene="Overwatch Keep",type={9}}
,q4759DF32750CBAE1={lvl=19,scene="Temblor Hills",type={1,9}}
,q148DA2EB20078CCA={lvl=19,scene="Argent Glade",type={10,1,3},giver='U68094C020F01068F'}
,q129E9D8279924FA5={lvl=19,type={1},giver='U105A6D7719DBE336'}
,q74C1EEBFF2A5D84C={lvl=19,type={1},giver='U105A6D7719DBE336'}
,q49DE6D52BF655C47={lvl=19,type={4},giver='U105A6D7719DBE336'}
,q67156C90EC9530A1={lvl=19,type={4},giver='U105A6D7719DBE336'}
,q1B0B94AC4CFD7775={lvl=19,scene="Argent Glade",type={1,3,10},giver='U73322FA90B2D775B'}
,q274A36AFE88B0D84={lvl=19,scene="Far Mine Loop",type={4}}
,q77F690AC0E0F6C7F={lvl=19,domain="pvp"}
,q77B18568D902BE43={lvl=19,scene="Argent Glade",type={20,8},giver='U34D44C1E1174255E'}
,q0A89CAEA00000000={lvl=19,scene="Temblor Hills",type={4}}
,q0A89374273F0251C={lvl=19,scene="Temblor Hills",type={6,2},giver='U1A264FCC0848A947'}
,q7CF685B9021687DD={lvl=19,scene="Far Mine Loop",type={8,10},giver='U4ACA6D9C63F04E35'}
,q5427D2EF00000000={lvl=19}
,q1164A4B3A9946C0C={lvl=19,scene="Temblor Hills",use={{key='I4316946468B99DE7,129218BD8FD1610A,,,,,,', count=1}},type={8,10,4},giver='U1A264FCC0848A947'}
,q2FCF14E3EF0C8C90={lvl=19,type={1},giver='U55B8D6E103589B77'}
,q51873DD100000000={lvl=20,scene="Gloamwood Pines",type={4},giver='U15ACC6310008C1E7'}
,q4E0E6CC500000000={lvl=20,scene="Gloamwood Pines",type={8},giver='U7057B1E609B2DE41'}
,q4F6EB931CF489D20={lvl=20,giver='U68A704797B7DEBBE'}
,q5548D5F600000000={lvl=20,scene="Gloamwood Pines",type={8}}
,q43567B27BBF22147={lvl=20,giver='U1E3BBF1E6ACC84AB'}
,q0C6668E5449E4564={lvl=20,craft={{key='I33962850B0C720C2,E5F817598BACC36E,,,,,,', count=4}},type={25}}
,q28FC4BF71E799A5A={lvl=20,craft={{key='I33962850B0C720C2,E5F817598BACC36E,,,,,,', count=4}},type={25}}
,q0C46D92C4A0B015E={lvl=20,craft={{key='I6523CEBF7D470E88,64F888B594F67EDC,,,,,,', count=4}},type={25}}
,q7D6A641C9DBA72F1={lvl=20,craft={{key='I6523CEBF7D470E88,64F888B594F67EDC,,,,,,', count=4}},type={25}}
,q635C46A1CAF11632={lvl=20,craft={{key='I040FE3705F3D14E9,701046E40DCCAF13,,,,,,', count=4}},type={25}}
,q778C0EF3A4A10BCC={lvl=20,craft={{key='I040FE3705F3D14E9,701046E40DCCAF13,,,,,,', count=4}},type={25}}
,q1D75037700000000={lvl=20,scene="Gloamwood Pines",type={1},giver='U1361DD301FBF8A3A'}
,q16FD476A4EC74313={lvl=20,domain="ia",type={2}}
,q18071E3421ECB3CC={lvl=20,domain="ia",type={2}}
,q4AFFD03543C3AB39={lvl=20,domain="ia",type={2}}
,q4E93710A52A39DB0={lvl=20,domain="ia",type={2}}
,q602A7A1251CD1433={lvl=20,domain="ia",type={2}}
,q0F303F774F49948B={lvl=20,domain="ia",type={2}}
,q1B02EF1A5824D43E={lvl=20,domain="ia",type={2}}
,q1DB02832375DB2B9={lvl=20,domain="ia",type={2}}
,q235995CA2C5A5C64={lvl=20,domain="ia",type={2}}
,q7A5A42C5368CF9C5={lvl=20,domain="ia",type={2}}
,q75775B03DDB5A28A={lvl=20,scene="Gloamwood Pines",type={4},giver='U4C3FE55B7A626F1C'}
,q739B401FA8CDA138={lvl=20,giver='U75526206316307F2'}
,q359B2C29BD00C238={lvl=20,giver='U7691CD9F460E089A'}
,q03377A15C10165B3={lvl=20,type={4},giver='U377FC3B56E6C575F'}
,q3C8BBB7C6D89ED29={lvl=20,type={4},giver='U11AFB5F042C37BCD'}
,q2ABD2847A6E5FCC0={lvl=20,giver='U7691CD9F460E089A'}
,q26EE2E8739BF743B={lvl=20,giver='U448A3E3B5AC6BE58'}
,q6AEC7B3D4B3819DE={lvl=20,type={4},giver='U6B4B73484A2794E4'}
,q52D8B69E3731889D={lvl=20,giver='U448A3E3B5AC6BE58'}
,q4989D8958874ADFA={lvl=20,type={4},giver='U5F41BCCB53B71223'}
,q065B444A577DFB49={lvl=20,giver='U551AFF263D7BD2A7'}
,q23BBD76503C5CF96={lvl=20,domain="ia",type={6}}
,q28538EE137836E1D={lvl=20,domain="ia",type={6}}
,q2F936827092F01C9={lvl=20,domain="ia",type={6}}
,q35B7405AB0FE69DD={lvl=20,scene="Silkweb Pass",type={4}}
,q3917F7D22BA8C3D5={lvl=20,domain="ia",type={6}}
,q4053B0C03FB2B3F8={lvl=20,domain="ia",type={6}}
,q4B1ABC5CD570C542={lvl=20,scene="Silkweb Pass",type={4},giver='U1361DD301FBF8A3A'}
,q586250639C7A0022={lvl=20,giver='U7691CD9F460E089A'}
,q24555381AE858FA8={lvl=20,type={13}}
,q44F42361969286F3={lvl=20,scene="Gloamwood Pines",type={13}}
,q7863947798B2686F={lvl=20,type={4},giver='U13A4DDC91D5A9CFA'}
,q0693270A1BB028F2={lvl=20,domain="ia",type={2}}
,q1C709210606FD96D={lvl=20,domain="ia",type={2}}
,q33340BA46CF34E8A={lvl=20,domain="ia",type={2}}
,q45295A9E175EFB06={lvl=20,domain="ia",type={2}}
,q5A15BBD675F4F309={lvl=20,domain="ia",type={2}}
,q2EAB199F343C735D={lvl=20,type={13}}
,q3573E01E04E46A18={lvl=20,scene="Titan's Rest",type={1,6},giver='U3CB781DC5E44EB40'}
,q1152B13559A4A779={lvl=20}
,q23D1A92248DE641C={lvl=20,type={17,7}}
,q6EBAF42C036D6D1B={lvl=20,type={17}}
,q5A656E72F7777978={lvl=20,giver='U610B81787268A249'}
,q268AF401AA8B8B5E={lvl=20,giver='U7B090C2B00327392'}
,q01B4B320BF9DA153={lvl=20}
,q59CD9F48E7A64166={lvl=20}
,q67D8B03887E5E6A0={lvl=20,giver='U1E3BBF1E6ACC84AB'}
,q0ED83E6334F4B5AE={lvl=20,domain="ia",type={1}}
,q2DC40E8A3BBC8CC0={lvl=20,domain="ia",type={1}}
,q3B09B7234B05B4E0={lvl=20,domain="ia",type={1}}
,q4F6CBAB74D5C97EE={lvl=20,domain="ia",type={1}}
,q5D69CBC019C5A8CB={lvl=20,domain="ia",type={1}}
,q0C4F4615DCA30AC9={lvl=20,type={13}}
,q37B57E7DA27F7A2C={lvl=20,type={13}}
,q42EE2D2F542A63F4={lvl=20,scene="Silkweb Pass",type={4},giver='U3B827FF05D1FF6D9'}
,q50B4531A5C3FD80E={lvl=20,type={4},giver='U1992AEF41E5A52CF'}
,q371058D6C3634330={lvl=20,giver='U7691CD9F460E089A'}
,q100AA729A6A571A4={lvl=20,giver='U610B81787268A249'}
,q2941EAED00000000={lvl=20,scene="Silkweb Pass",type={20}}
,q2A6DFB9153193195={lvl=20,scene="Silkweb Pass",type={1},giver='U0C0AD506735A24B4'}
,q071BFF46BF47A3B4={lvl=20,type={13}}
,q5389255E7F1BE6BB={lvl=20,type={13}}
,q0AAC696F869B108F={lvl=20,type={4},giver='U11AFB5F042C37BCD'}
,q1892D9150FFB1757={lvl=20,type={4},giver='U377FC3B56E6C575F'}
,q55A71766A10F9501={lvl=20,giver='U7691CD9F460E089A'}
,q5D73765300000000={lvl=20,scene="Gloamwood Pines",type={8,5}}
,q2942BA9CAE31748B={lvl=20,type={17}}
,q5D9E5884C579EED0={lvl=20}
,q154F371A0F532E9C={lvl=20,domain="ia",type={1}}
,q24130B71327AB110={lvl=20,domain="ia",type={1}}
,q273587C424A2021E={lvl=20,domain="ia",type={1}}
,q6F44A92D410F7F2D={lvl=20,domain="ia",type={1}}
,q7DC0C71239BDC593={lvl=20,domain="ia",type={1}}
,q252B60D153D3F4F1={lvl=20,domain="ia",type={1}}
,q29086655657E3C6C={lvl=20,domain="ia",type={1}}
,q3D879C412E00C64C={lvl=20,domain="ia",type={1}}
,q503B95EE3640BD2D={lvl=20,domain="ia",type={1}}
,q08D4CD7498777D98={lvl=20,type={4},giver='U6C926E295B084F77'}
,q1718F39C08FC30C6={lvl=20,type={4},giver='U280651E7448A7BE9'}
,q7C557D2500000000={lvl=20,scene="Silkweb Pass",type={20},giver='U18EE4B222B58BE1C'}
,q0A205A7100000000={lvl=20,scene="Gloamwood Pines",type={8},giver='U734A82F1332568B2'}
,q5EF3488E023B8964={lvl=20,scene="Silkweb Pass",type={9,1}}
,q1D764E52BA9A4084={lvl=20,scene="Titan's Rest",type={9,1}}
,q233772D1A3ED0A50={lvl=20,giver='U7B090C2B00327392'}
,q1F4B03C03E34439C={lvl=20,scene="Titan's Rest",type={13}}
,q16C487CEC9BC21AD={lvl=20,type={13}}
,q576CCA9FCA953A3C={lvl=20,type={13}}
,q7DEF202600000000={lvl=20,scene="Silkweb Pass",type={8},giver='U49723365186B3B1B'}
,q3C0EB3CE75CE7BB8={lvl=20,scene="Coterie Camp",type={5},giver='U1A264FCC0848A947'}
,q7455DEC870BBEA1B={lvl=20,scene="Quick's College",type={13},giver='U31C3BB9C00EDFB2D'}
,q174476026BB9CBA6={lvl=20,domain="ia",type={6}}
,q209ED0D6571C987C={lvl=20,domain="ia",type={6}}
,q302F9A6E51911913={lvl=20,scene="Silkweb Pass",type={6}}
,q50FC23670D34AB0B={lvl=20,domain="ia",type={6}}
,q5747F30648CAF0B7={lvl=20,domain="ia",type={6}}
,q70F699ED79BD735B={lvl=20,domain="ia",type={6}}
,q376ED268F000BFA3={lvl=20,scene="Titan's Rest",type={10,4},giver='U5DEFF4C14E5F16E2'}
,q43AAA2FF00000000={lvl=20,scene="Titan's Rest",type={4}}
,q19E9A8535C705B47={lvl=20,domain="ia",type={1}}
,q3D9D62D23C8EE7F4={lvl=20,domain="ia",type={1}}
,q6F3B416B4FE4CEB8={lvl=20,domain="ia",type={1}}
,q738B94AC4D6E03A3={lvl=20,domain="ia",type={1}}
,q7A24512B3EE03957={lvl=20,domain="ia",type={1}}
,q1941C84D197D2782={lvl=20,domain="guild"}
,q49C1A3156E500076={lvl=20,giver='U27D677941EA6DA74'}
,q18C6FE9EFCE23949={lvl=20,giver='U3A8B9996451A4D99'}
,q138B9F933278BEDF={lvl=20,domain="ia",type={1}}
,q1576E5C665772EDD={lvl=20,domain="ia",type={1}}
,q4582DD47597C3D81={lvl=20,domain="ia",type={1}}
,q4CB9FDFC0F5EEF8A={lvl=20,domain="ia",type={1}}
,q58E513300E1E9686={lvl=20,domain="ia",type={1}}
,q2E9ED0A9EE0D4A61={lvl=20,type={13}}
,q757040843E040552={lvl=20,type={13}}
,q536B7FE3BFCED4D2={lvl=20,scene="Titan's Rest",type={10},giver='U2AB92B4B5E242A1F'}
,q20E934DCCF478328={lvl=20}
,q2ACA7579EA725622={lvl=20}
,q3551AC2A00000000={lvl=21,scene="Gloamwood Pines",type={8},giver='U3F29CA067B3A3780'}
,q1C9E89F4EDE71E84={lvl=21,scene="Solemn Outlook",type={1},giver='U323580CE3A0EEAC3'}
,q69637C9400000000={lvl=21,scene="Grove of the Ancients",type={4},giver='U7057B1E609B2DE41'}
,q17002E824B4C1661={lvl=21,domain="ia",type={1}}
,q489F307806570549={lvl=21,domain="ia",type={1}}
,q562F2C4F2E2C8969={lvl=21,domain="ia",type={1}}
,q5A54778D18C253D2={lvl=21,domain="ia",type={1}}
,q6FB687844B15C40F={lvl=21,domain="ia",type={1}}
,q2D4D1176F4414CE2={lvl=21,scene="Gnarlwood Post",type={8},giver='U734A82F1332568B2'}
,q44E095CA9C580B80={lvl=21,scene="Gloamwood Pines",type={13}}
,q73222588B26D0429={lvl=21,scene="Dreadbone Shelf",type={4},giver='U104E6D9104565B8E'}
,q354641329CFFF39A={lvl=21,scene="Gnarlwood Post",type={8},giver='U3B827FF05D1FF6D9'}
,q49B7D224A868EA04={lvl=21,scene="Dreadbone Shelf",type={4}}
,q6FAB7DD03E6D1462={lvl=21,scene="Titan's Rest",type={1,10},giver='U5DEFF4C14E5F16E2'}
,q11963FAC612E1CE4={lvl=21,domain="ia",type={6}}
,q1B9A9FE83298B766={lvl=21,domain="ia",type={6}}
,q38A2FB4E1E102F39={lvl=21,domain="ia",type={6}}
,q3DF6C5B68EB1809E={lvl=21,scene="Grove of the Ancients",type={4},giver='U14F3B23E1E3713E3'}
,q5D73C0D53B4BDDFB={lvl=21,domain="ia",type={6}}
,q72D8BC0F357B5503={lvl=21,domain="ia",type={6}}
,q50F3EEE44BAF846F={lvl=21,scene="Stonefield Prairie",type={4}}
,q107C56E914353E11={lvl=21,domain="ia",type={6}}
,q1F806E2304047A6E={lvl=21,domain="ia",type={6}}
,q2AD3548742D0ED8F={lvl=21,domain="ia",type={6}}
,q33C503A157B34722={lvl=21,domain="ia",type={6}}
,q49F617AE0690B836={lvl=21,domain="ia",type={6}}
,q4FDB455B143DA3B7={lvl=21,domain="ia",type={6}}
,q4FEE20BE40DD9BF8={lvl=21,domain="ia",type={6}}
,q58AE881762714920={lvl=21,domain="ia",type={6}}
,q5B4A330076E541D9={lvl=21,domain="ia",type={6}}
,q5D11193E35E64C93={lvl=21,domain="ia",type={6}}
,q06B461DC1ED0A73F={lvl=21,domain="ia",type={1}}
,q6105F0197D174E8C={lvl=21,domain="ia",type={1}}
,q692978E22A308603={lvl=21,domain="ia",type={1}}
,q7095B5633DDF6E13={lvl=21,domain="ia",type={1}}
,q798ADB616A1F741D={lvl=21,domain="ia",type={1}}
,q0D42D6576FFFC047={lvl=21,domain="ia",type={1}}
,q2B9902023C9AFF71={lvl=21,domain="ia",type={1}}
,q722718E80A59FCD8={lvl=21,domain="ia",type={1}}
,q7232232A14C19906={lvl=21,domain="ia",type={1}}
,q72FAE3183C02A4CB={lvl=21,domain="ia",type={1}}
,q20466B525D00EB3D={lvl=21,domain="ia",type={2}}
,q256B4C4C7FDCA4DF={lvl=21,domain="ia",type={2}}
,q3CDF739B34028754={lvl=21,domain="ia",type={2}}
,q50735EB14F2B0564={lvl=21,domain="ia",type={2}}
,q7365618540CAB56F={lvl=21,domain="ia",type={2}}
,q6C8986510640479A={lvl=21,scene="Solemn Outlook",type={13},giver='U60B0E2F56322571F'}
,q1EEBF527A24A4895={lvl=21,scene="Grove of the Ancients",type={4},giver='U15ACC6310008C1E7'}
,q013D53225B1637B3={lvl=21,domain="ia",type={1}}
,q34D9D3624CD253A5={lvl=21,domain="ia",type={1}}
,q4108E41D292D9043={lvl=21,domain="ia",type={1}}
,q5281ED03530DCB01={lvl=21,domain="ia",type={1}}
,q5D0D2FB265703969={lvl=21,domain="ia",type={1}}
,q621D75D41668D54F={lvl=21,domain="ia",type={1}}
,q658A463A724045F0={lvl=21,domain="ia",type={1}}
,q6CA988A55B95C173={lvl=21,domain="ia",type={1}}
,q6DE190567E722AD6={lvl=21,domain="ia",type={1}}
,q007F88FB70DE68E6={lvl=21,domain="ia",type={2}}
,q300EFE47739939A3={lvl=21,domain="ia",type={2}}
,q457FC0323DA9238B={lvl=21,domain="ia",type={2}}
,q5FAAA8C46FFD76E1={lvl=21,domain="ia",type={2}}
,q6BB4ADD3248774FA={lvl=21,domain="ia",type={2}}
,q26C1AFBD81012D42={lvl=21,scene="Solemn Outlook",type={1},giver='U5DC7C19464A3FDF7'}
,q2623D7C2EF565F8D={lvl=21,scene="Dreadbone Shelf",type={10,8},giver='U4ACA6D9C63F04E35'}
,q2A6DA3BD67D99187={lvl=21,domain="ia",type={2}}
,q45D2B85A3178092C={lvl=21,domain="ia",type={2}}
,q598C4C6A1B354F80={lvl=21,domain="ia",type={2}}
,q5A023F1D59D9DE0D={lvl=21,domain="ia",type={2}}
,q5BC5E1B24AA6FD51={lvl=21,domain="ia",type={2}}
,q66A290C25D907FD5={lvl=21,scene="Grove of the Ancients",type={1,9}}
,q464540B1A0EA89B6={lvl=21,scene="Titan's Rest",type={1,9}}
,q4507B1436B8CEB8E={lvl=21,scene="Standing Stones",type={9,1}}
,q663ED6425F001ED2={lvl=21,scene="Dreadbone Shelf",type={1,9}}
,q44FE733262245DC8={lvl=21,scene="Dreadbone Shelf",type={9,1}}
,q021A240F83238D55={lvl=21,scene="Dreadbone Shelf",type={1,9}}
,q74575DCB758D8548={lvl=21,domain="ia",type={1,12,2}}
,q6DDBDBA7C136A8E5={lvl=21,scene="Stonefield Prairie",use={{key='I3111B4AD3F25F07A,502E0D3C9EC55447,,,,,,', count=1}},type={10},giver='U6714EC5B55B50FF3'}
,q021E21AD00000000={lvl=21,scene="Standing Stones",type={4},giver='U7057B1E609B2DE41'}
,q196DC25B302A8E3A={lvl=21,domain="ia",type={2}}
,q3051C36B12D70BE4={lvl=21,domain="ia",type={2}}
,q35D9334874665A5F={lvl=21,domain="ia",type={2}}
,q383457527F2D9222={lvl=21,domain="ia",type={2}}
,q3B65D08E3DC1E0E1={lvl=21,domain="ia",type={2}}
,q17FFB7F2586BE224={lvl=21,domain="ia",type={2}}
,q33ECEE8A77DCBEAC={lvl=21,domain="ia",type={2}}
,q3CE97E7E03CA094F={lvl=21,domain="ia",type={2}}
,q67F60AD265436C05={lvl=21,scene="Stonefield Prairie",type={10},giver='U2AB92B4B5E242A1F'}
,q6CD6792F58D459A8={lvl=21,domain="ia",type={2}}
,q6FCD43133AD0F71B={lvl=21,domain="ia",type={2}}
,q51CDC9432F331501={lvl=21,domain="ia",type={2}}
,q217077E96D2B6698={lvl=21,domain="ia",type={2}}
,q4437350152285CAC={lvl=21,domain="ia",type={2}}
,q68FAF936674A9F35={lvl=21,domain="ia",type={2}}
,q7D096C393EFB9224={lvl=21,domain="ia",type={2}}
,q074650471E904A4E={lvl=21,domain="ia",type={2}}
,q265E910831002CCF={lvl=21,domain="ia",type={2}}
,q2A8DA2B32F7E6ABE={lvl=21,domain="ia",type={2}}
,q49E492AA147BDB95={lvl=21,domain="ia",type={2}}
,q68510F674D429D5A={lvl=21,domain="ia",type={2}}
,q693596117B779AE1={lvl=21,scene="Standing Stones",type={4,10},giver='U7057B1E609B2DE41'}
,q2D8E127F00FD874B={lvl=21,domain="ia",type={2}}
,q44459ED5246B366D={lvl=21,domain="ia",type={2}}
,q483DA91066616625={lvl=21,domain="ia",type={2}}
,q4D8943AE50B76AC1={lvl=21,domain="ia",type={2}}
,q6E0A756209DB1556={lvl=21,domain="ia",type={2}}
,q2A023E76C4F02361={lvl=22,scene="The Harrow",type={4},giver='U6038D176366B5DCB'}
,q51A12FD6E07DA655={lvl=22,scene="Darkening Deeps",type={20},giver='U281847C66FBDDD37'}
,q23E6E6AA1A4AAF0A={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q3CCBF7C2918CFE9C={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q403D22C7E4AA1E24={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q51193C25A4EC0E2C={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q581CF5AE2A0E09F2={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q66C8F0E6DD1E6593={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q682FB7CB58EBEABD={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q68B8D488F58489BC={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q6A137AD0988BADC4={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q741BF1E575047EB3={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q0D6D2D07098C8B92={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q2D2660EBC1A2C771={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q3740561E55DDDBF0={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q4382E56AFCFD0671={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q448CDC1F29354003={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q4768E8FABCD884A6={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q60159E45D1ACA6DA={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q7FB0BEC3DBD1518A={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q0AC40AE5FD31AA4D={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q234DD2D890F84106={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q118C9301B37674E5={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q1C813B4FAD044A4D={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q1FFF97D11CD9DA98={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q357FD98467332875={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q20B361952B350CA3={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q3281601D72FD9E60={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q33B476A350DC807F={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q40B09819EFDB198E={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q5DA829FBA1B46327={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q63356F7712F3E2BA={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q075762D67946C943={lvl=22,domain="ia",type={1}}
,q2FEE0E4649FB783E={lvl=22,domain="ia",type={1}}
,q6B00CB142060BC9B={lvl=22,domain="ia",type={1}}
,q6B60DE1E52B6B491={lvl=22,domain="ia",type={1}}
,q7409F63F5BA5622A={lvl=22,domain="ia",type={1}}
,q4B8CE85F00000000={lvl=22,scene="Stonefield Prairie",type={4,1}}
,q02FDFB8BE24AD1C8={lvl=22,scene="Gloamwood Pines",use={{key='I760D78E38BD31F23,F772FF450072A56D,,,,,,', count=1}},type={10},giver='U0EB29B496212EAD8'}
,q75259E36BAFEE3C5={lvl=22,scene="Gloamwood Pines",type={13},giver='U14F3B23E1E3713E3'}
,q64F59CCEE286D811={lvl=22,scene="Darkening Deeps",type={1},giver='U1A15D2567BD1ADE5'}
,q1338E4753F5A91C4={lvl=22,domain="ia",type={2}}
,q4409F5D65CC3DF2D={lvl=22,domain="ia",type={2}}
,q4D8B21C829AD6A49={lvl=22,domain="ia",type={2}}
,q73130F8A3CF36358={lvl=22,domain="ia",type={2}}
,q7B6FC4D338089267={lvl=22,domain="ia",type={2}}
,q466BF9019B48B93F={lvl=22}
,q7CF664F987F4D38F={lvl=22,type={5}}
,q03AED984684F2FB8={lvl=22,domain="ia",type={6}}
,q0E05268A1F91BC3D={lvl=22,domain="ia",type={6}}
,q1C1116D4089EB045={lvl=22,domain="ia",type={6}}
,q2D3CE7D23D3D9339={lvl=22,domain="ia",type={6}}
,q4F60D6CEFBE6FC48={lvl=22,scene="Darkening Deeps",type={4}}
,q5DA52581691BAFB8={lvl=22,domain="ia",type={6}}
,q0DA844E100000000={lvl=22, grp=3,giver='U466F8E012F1FF1FB'}
,q4C2069CE00000000={lvl=22, grp=3,giver='U3D8EA30F468E8E08'}
,q7F5519F400000000={lvl=22,scene="Granite Falls",type={5}}
,q4796FB952D47F979={lvl=22,domain="ia",type={1}}
,q567B48856AD7529A={lvl=22,domain="ia",type={1}}
,q5947F1501A200D61={lvl=22,domain="ia",type={1}}
,q6314C9237C078A0E={lvl=22,domain="ia",type={1}}
,q72BAE43C145B6F41={lvl=22,domain="ia",type={1}}
,q0B6CC9FA239B9CC7={lvl=22,domain="ia",type={2}}
,q19D1BD0348D7FD06={lvl=22,domain="ia",type={2}}
,q1E8C08352AC43047={lvl=22,scene="Darkening Deeps",type={19},giver='U2726CDE554975B63'}
,q200648B83843AEBA={lvl=22,domain="ia",type={2}}
,q220A85CC1B5577F2={lvl=22,domain="ia",type={2}}
,q4F172E124D3B1273={lvl=22,domain="ia",type={2}}
,q0F2CF39C61AE8FEC={lvl=22,domain="ia",type={2,1,12}}
,q3BC4607514A628FA={lvl=22,scene="Darkening Deeps",type={8}}
,q0F38561509E3C80E={lvl=22,domain="ia",type={1}}
,q3E347ABA2DF435FE={lvl=22,domain="ia",type={1}}
,q5CE3789B6AEE30E0={lvl=22,domain="ia",type={1}}
,q6E02817C2E41A3C1={lvl=22,domain="ia",type={1}}
,q78E7FA9D47A219A2={lvl=22,domain="ia",type={1}}
,q1F5F6373D8B7027D={lvl=22,scene="Gloamwood Pines",type={8},giver='U0EB29B496212EAD8'}
,q14E656644580A9DA={lvl=22,scene="Gnarlwood Post",type={8},giver='U7057B1E609B2DE41'}
,q09F88B6922D08946={lvl=22,domain="ia",type={1}}
,q13746D7538031E0C={lvl=22,domain="ia",type={1}}
,q44C5708F52FFA6A5={lvl=22,domain="ia",type={1}}
,q5F2266C162078258={lvl=22,domain="ia",type={1}}
,q6851DFBD00243C97={lvl=22,domain="ia",type={1}}
,q2D5881795B08797D={lvl=22,domain="ia",type={1,12,2}}
,q1163CCA763D1A848={lvl=22,domain="ia",type={1}}
,q1C05717653E610A3={lvl=22,domain="ia",type={1}}
,q211C4E4E4DE244EA={lvl=22,domain="ia",type={1}}
,q360BCE062E8A4876={lvl=22,domain="ia",type={1}}
,q39EF032A290ECFFA={lvl=22,domain="ia",type={1}}
,q16DBF69C7ACB77FC={lvl=22,scene="Gloamwood Pines",type={8},giver='U2726CDE554975B63'}
,q6282B5781DBFC2E9={lvl=22,scene="The Harrow",type={6},giver='U791E36873EC1246A'}
,q0315DCB85BE742E1={lvl=22,domain="ia",type={1}}
,q0999F4220DEB9C97={lvl=22,domain="ia",type={1}}
,q223F31000985EF9D={lvl=22,domain="ia",type={1}}
,q3B1F40C4756C5E21={lvl=22,domain="ia",type={1}}
,q729937D039A415B1={lvl=22,domain="ia",type={1}}
,q517048266F51A509={lvl=22,scene="The Harrow",type={9,1}}
,q3ED6C7D73D2A3FD8={lvl=22,type={9}}
,q5AEC04D8727D4E3D={lvl=22,scene="The Harrow",type={1,9}}
,q4D98763F69A546FF={lvl=22,scene="The Harrow",type={1,9}}
,q00F8455B7A75DE51={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q061C9296572A22FE={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q112394F5BAAE0A10={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q12CF3492F52E8A5C={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q168647B17FFCAB31={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q1B59F24EBBD2CD01={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q2A50319264E8E133={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q5B7FB24CD417DA54={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q655E87B5907D9E17={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q68AEEE553C700F66={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q04052D7167D91545={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q1DA51B4AF959D4EB={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q4AB2E8F9668F4615={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q0D07DE7387FF303D={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q17AA8DBCA52848D2={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q268792039ED610D2={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q42D45DA889E30D3A={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q5B1A8DA398204DFA={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q63648FFCD4F1B173={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q71A70A2AE344EB6B={lvl=22,domain="guild",giver='U75FBE0CA773819E9'}
,q10EACE18DA9C3E59={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q15FE8492FA34B890={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q23865EED9B096153={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q2601DCDED573A847={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q2D61C521DFD3F894={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q3865F2C2CD06DA6A={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q4765536E67B251D5={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q481123A0DDAF2F68={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q5F59BB433B0AE4FE={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q7D3C66F8BD298090={lvl=22,domain="guild",giver='U501D431647F9ADB3'}
,q10AC10F881CA2B9C={lvl=22,scene="Darkening Deeps",type={8},giver='U640B133225EE7557'}
,q1A453EA33E0FDECD={lvl=22,domain="ia",type={2}}
,q3D01BECA19B80DF2={lvl=22,domain="ia",type={2}}
,q46FC333D7D4D915D={lvl=22,domain="ia",type={2}}
,q6BD4442C4FFCEF1B={lvl=22,domain="ia",type={2}}
,q7B4FF96C09E09BC3={lvl=22,domain="ia",type={2}}
,q7A0FB4EB00000000={lvl=22,scene="Darkening Deeps",type={8},giver='U1A15D2567BD1ADE5'}
,q400769D300000000={lvl=22,scene="Gnarlwood Post",type={13},giver='U4C3FE55B7A626F1C'}
,q5F4E646000000000={lvl=22,scene="Gloamwood Pines",type={13}}
,q24DCF38F83B35750={lvl=22,scene="Granite Falls",type={6},giver='U290A0F802834C57D'}
,q2C0F6C563F1C9205={lvl=22,domain="ia",type={2}}
,q3097A7440C0D3E6B={lvl=22,domain="ia",type={2}}
,q4BE4FCFC07D8147C={lvl=22,domain="ia",type={2}}
,q6A4C80B455FA0F23={lvl=22,domain="ia",type={2}}
,q7BBA095147D6F64F={lvl=22,domain="ia",type={2}}
,q53D1EBAB74B699C3={lvl=22,domain="ia",type={2,22}}
,q17B564BDCE049700={lvl=23,scene="Gloamwood Pines",type={8},giver='U734A82F1332568B2'}
,q2974D9A1683276FA={lvl=23,domain="ia",type={2}}
,q2F1F12EA50C454A8={lvl=23,domain="ia",type={2}}
,q300612D441D61DAD={lvl=23,domain="ia",type={2}}
,q68E835045A72D3DD={lvl=23,domain="ia",type={2}}
,q6E7128A54FD37F52={lvl=23,domain="ia",type={2}}
,q5478F8F1AB4964B8={lvl=23,scene="Darkening Deeps",type={3,1}}
,q602401D9DCF18181={lvl=23,craft={{key='I38D886E833B4BED0,12B0907CD8E097C0,,,,,,', count=5},{key='I3CB0DF9FC47E80E4,F00CEFF4608DE20D,,,,,,', count=1}},type={4}}
,q1130528938313412={lvl=23,craft={{key='I3CB0DF9FC47E80E4,F00CEFF4608DE20D,,,,,,', count=1},{key='I38D886E833B4BED0,12B0907CD8E097C0,,,,,,', count=5}},type={4}}
,q600AA301A389D86D={lvl=23,craft={{key='I41F59C21B582EBB0,30A029CD6BADAD2F,,,,,,', count=6}},type={4}}
,q03AEA6BCB55E36F9={lvl=23,craft={{key='I41F59C21B582EBB0,30A029CD6BADAD2F,,,,,,', count=6}},type={4}}
,q24A8F0F49D403C7B={lvl=23,craft={{key='I56032B124ABFED51,011621BB8AE1F27B,,,,,,', count=4}},type={25}}
,q74D6BB8E14A6B048={lvl=23,scene="Granite Falls",craft={{key='I56032B124ABFED51,011621BB8AE1F27B,,,,,,', count=4}},type={25}}
,q2692089D732E8BF3={lvl=23,craft={{key='I1D0FEC13CAB54324,EB0A3EE62760D7EA,,,,,,', count=4}},type={25}}
,q3FD21153BFAE5421={lvl=23,scene="Granite Falls",craft={{key='I1D0FEC13CAB54324,EB0A3EE62760D7EA,,,,,,', count=4}},type={25}}
,q291129DF1C218D20={lvl=23,craft={{key='I15CFD4734CECC03F,1A7BC9844D9AEBE9,,,,,,', count=4}},type={25}}
,q514F777D1A678836={lvl=23,craft={{key='I15CFD4734CECC03F,1A7BC9844D9AEBE9,,,,,,', count=4}},type={25}}
,q4E897E01E1404237={lvl=23,craft={{key='I38D886E833B4BED0,12B0907CD8E097C0,,,,,,', count=6}},type={4}}
,q01E62B05E074F7CD={lvl=23,craft={{key='I38D886E833B4BED0,12B0907CD8E097C0,,,,,,', count=6}},type={4}}
,q6EEF5AEAF2BD4AAF={lvl=23,craft={{key='I3C7B9D3C4DA5BBC5,D7515A8654D290E3,,,,,,', count=2},{key='I33C6B6A8DC9ECEA5,74755972F23B86F3,,,,,,', count=4}},type={4}}
,q1BD634856B98BA6D={lvl=23,craft={{key='I33C6B6A8DC9ECEA5,74755972F23B86F3,,,,,,', count=4},{key='I3C7B9D3C4DA5BBC5,D7515A8654D290E3,,,,,,', count=2}},type={4}}
,q16DF94B894640843={lvl=23,craft={{key='I34C6ED12585541CB,4273F94C0DBACBD7,,,,,,', count=4}},type={25}}
,q6E29065C8572F699={lvl=23,scene="Granite Falls",craft={{key='I34C6ED12585541CB,4273F94C0DBACBD7,,,,,,', count=4}},type={25}}
,q437CD7A84D98C8AC={lvl=23,craft={{key='I40A14CF9C6D8C9F5,30B273DC13CC6CE9,,,,,,', count=4}},type={25}}
,q7E327DDD2F74CD1B={lvl=23,scene="Granite Falls",craft={{key='I40A14CF9C6D8C9F5,30B273DC13CC6CE9,,,,,,', count=4}},type={25}}
,q55D739F8F3642324={lvl=23,craft={{key='I38D886E833B4BED0,12B0907CD8E097C0,,,,,,', count=5},{key='I223F0B29611AAA77,265F81A43B753E5B,,,,,,', count=1}},type={4}}
,q5CF94EA0B76A80C5={lvl=23,craft={{key='I38D886E833B4BED0,12B0907CD8E097C0,,,,,,', count=5},{key='I223F0B29611AAA77,265F81A43B753E5B,,,,,,', count=1}},type={4}}
,q63591E9C59B51681={lvl=23,craft={{key='I715D422A5464CDA4,424B48C227CA0B75,,,,,,', count=2},{key='I15256CC894FAB1A8,A48236F491FD8A78,,,,,,', count=4}},type={4}}
,q6E0D61B25B39F4BF={lvl=23,craft={{key='I715D422A5464CDA4,424B48C227CA0B75,,,,,,', count=2},{key='I15256CC894FAB1A8,A48236F491FD8A78,,,,,,', count=4}},type={4}}
,q708B14CBDE48CC97={lvl=23,craft={{key='I33C6B6A8DC9ECEA5,74755972F23B86F3,,,,,,', count=6}},type={4}}
,q3E87B625699EC4F9={lvl=23,craft={{key='I33C6B6A8DC9ECEA5,74755972F23B86F3,,,,,,', count=6}},type={4}}
,q75025EF537DEDDCD={lvl=23,craft={{key='I0FB9C094CF061ECF,30ACF0A4A3802D85,,,,,,', count=4},{key='I45934A46BA5790E3,FBA9564BD716E234,,,,,,', count=2}},type={4}}
,q7503FD63B4B78362={lvl=23,craft={{key='I45934A46BA5790E3,FBA9564BD716E234,,,,,,', count=2},{key='I0FB9C094CF061ECF,30ACF0A4A3802D85,,,,,,', count=4}},type={4}}
,q24FA4076C9FC5F4B={lvl=23,scene="Granite Falls",craft={{key='I7FBEDDCDB875F74B,FCE13453D8E7B4C4,,,,,,', count=4}},type={25}}
,q6970D28C9D3534AA={lvl=23,craft={{key='I7FBEDDCDB875F74B,FCE13453D8E7B4C4,,,,,,', count=4}},type={25}}
,q7ACDEFD9D2D89B39={lvl=23,craft={{key='I33C6B6A8DC9ECEA5,74755972F23B86F3,,,,,,', count=2},{key='I16114350D5873CD6,F602BF537DD8D8BD,,,,,,', count=4}},type={4}}
,q317F47CEFECC128F={lvl=23,craft={{key='I16114350D5873CD6,F602BF537DD8D8BD,,,,,,', count=4},{key='I33C6B6A8DC9ECEA5,74755972F23B86F3,,,,,,', count=2}},type={4}}
,q3C8D9CED00000000={lvl=23,scene="Tearfall Creek",type={4}}
,q0569E3D12E60DF40={lvl=23,domain="ia",type={1}}
,q076072CC4477B588={lvl=23,domain="ia",type={1}}
,q170B0EEE19BB1D01={lvl=23,domain="ia",type={1}}
,q2EC3243331FA0F63={lvl=23,domain="ia",type={1}}
,q5CB1A72D4BA05E5A={lvl=23,domain="ia",type={1}}
,q01F2930751B74E6D={lvl=23,domain="ia",type={1}}
,q18BD9C320AA415DA={lvl=23,domain="ia",type={1}}
,q27A7205625EACF8E={lvl=23,domain="ia",type={1}}
,q556264714EB7B4FB={lvl=23,domain="ia",type={1}}
,q6EBA433036DC50A9={lvl=23,domain="ia",type={1}}
,q5FE32C1A1F87451A={lvl=23,scene="The Harrow",type={13}}
,q0C2A5C9B137BD021={lvl=23,domain="ia",type={2}}
,q1420F47820B95DB7={lvl=23,domain="ia",type={2}}
,q2717719C4DFCC78B={lvl=23,domain="ia",type={2}}
,q5BA156CB4C93EC3A={lvl=23,domain="ia",type={2}}
,q7BDB431911BE7BF4={lvl=23,domain="ia",type={2}}
,q232D17F400000000={lvl=23,scene="Gloamwood Pines",type={13}}
,q14FC0654183B744D={lvl=23,domain="ia",type={1}}
,q259674152D1BB4E5={lvl=23,domain="ia",type={1}}
,q34D726CA3E15AB94={lvl=23,domain="ia",type={1}}
,q5A1FA11864CEFDF0={lvl=23,domain="ia",type={1}}
,q788FFD40281451BF={lvl=23,domain="ia",type={1}}
,q7251790A86FA24C5={lvl=23,scene="Gloamwood Pines",type={8},giver='U734A82F1332568B2'}
,q0539944D11CD2171={lvl=23,scene="Gloamwood Pines",type={1,3,10}}
,q13A81BDE170D614A={lvl=23,domain="ia",type={12,2,1}}
,q146D02D633D3A646={lvl=23,domain="ia",type={2,12,1}}
,q49A5B9D5D996D0AC={lvl=23,scene="Grove of the Ancients",type={3,1}}
,q4C847A8079F88068={lvl=23,scene="Greybriar Hollow",type={1},giver='U5269F40B1F4725A9'}
,q0127C4263480DD6E={lvl=23,domain="ia",type={1}}
,q092F0E972FB90D6F={lvl=23,domain="ia",type={1}}
,q099D9876159691FE={lvl=23,domain="ia",type={1}}
,q22B79F404F9BF87A={lvl=23,domain="ia",type={1}}
,q758A4D32174A8120={lvl=23,domain="ia",type={1}}
,q0C20348E6B816307={lvl=23,domain="ia",type={1}}
,q1EC5C30B7AD46E99={lvl=23,domain="ia",type={1}}
,q28B3E69921847D11={lvl=23,domain="ia",type={1}}
,q44B5D20610B0B5AD={lvl=23,domain="ia",type={1}}
,q724990B05709D86B={lvl=23,domain="ia",type={1}}
,q5D4EE4CD2FE20889={lvl=23,domain="ia",type={12,2,1}}
,q7CBDAB78E26C7917={lvl=23,type={1}}
,q46E4B0FBBD1AE5CA={lvl=23,type={5},giver='U2FC08E9446C6F348'}
,q34165137BA16FDCF={lvl=23,type={8,10},giver='U734A82F1332568B2'}
,q47E6CBF022CE03B1={lvl=23,domain="ia",type={1}}
,q560491071725C34C={lvl=23,domain="ia",type={1}}
,q6111C11B0ACDEB8D={lvl=23,domain="ia",type={1}}
,q69CD6D021BA13168={lvl=23,domain="ia",type={1}}
,q6A6F1CF5256A2D9E={lvl=23,domain="ia",type={1}}
,q5E8B3F02363EC7FE={lvl=23,domain="ia",type={12,1,2}}
,q18248AB9CAC67CD2={lvl=23,type={6},giver='U30677B4C1715711B'}
,q61F435B71ABC3BE2={lvl=23,scene="Tearfall Creek",type={13},giver='U3CF13DFD7CFD980A'}
,q13289F944860C413={lvl=23,domain="ia",type={1,12,2}}
,q6E004D6F7F4C5530={lvl=23,domain="ia",type={2,12,1}}
,q1310EE372A94AA95={lvl=23,domain="ia",type={6}}
,q1C83EFB1029707AF={lvl=23,domain="ia",type={6}}
,q2004B3EE52B2D895={lvl=23,domain="ia",type={6}}
,q3579C35331AA7ACB={lvl=23,domain="ia",type={6}}
,q4A714A577A6AE0C3={lvl=23,domain="ia",type={6}}
,q3EDF6EAD9E15D227={lvl=23,scene="The Harrow",type={4},giver='U181BF96D117716F3'}
,q650BE153B1C048DD={lvl=23,scene="Tearfall Creek",type={6},giver='U3CF13DFD7CFD980A'}
,q121E616A4B6548EB={lvl=23,domain="ia",type={6}}
,q228FA27E4796E500={lvl=23,domain="ia",type={6}}
,q24B3737D09FDD5DE={lvl=23,domain="ia",type={6}}
,q25FAAF6F0A1C1440={lvl=23,domain="ia",type={6}}
,q76024D141AAB79FF={lvl=23,domain="ia",type={6}}
,q24ED56F929370CC1={lvl=23,scene="Tearfall Creek",type={9,1}}
,q484658FA7526B04D={lvl=23,scene="The Harrow",type={1,9}}
,qFF7643B8F14CA0FC={lvl=23,scene="The Harrow",type={9,1}}
,q5AF9BE0B00000000={lvl=23,scene="Gloamwood Pines",use={{key='I26F0CC3C6199CCD0,1C419B6627919E25,,,,,,', count=7}},type={10}}
,q70A46B8CF2F3E05B={lvl=23,scene="The Harrow",type={4},giver='U1BEEC5F93A202E6D'}
,q359D445D00000000={lvl=23,scene="Gloamwood Pines",use={{key='I6C5C72A6D2F5817A,14476ECA37AF326B,,,,,,', count=1}},type={8,10},giver='U5269F40B1F4725A9'}
,q08AA9C9211ACCB35={lvl=23,domain="ia",type={6}}
,q183963B45DAF8CE5={lvl=23,domain="ia",type={6}}
,q2AB3F1072005FE39={lvl=23,domain="ia",type={6}}
,q69F1FEB50A90011F={lvl=23,domain="ia",type={6}}
,q72B91AB06DEC8A97={lvl=23,domain="ia",type={6}}
,q16D593F31539716E={lvl=23,scene="Tearfall Creek",type={13},giver='U3CF13DFD7CFD980A'}
,q0F3C1BD3639E7D7C={lvl=23,domain="ia",type={2}}
,q1A7195D2339DBD4E={lvl=23,domain="ia",type={2}}
,q40246EFD52F2DC88={lvl=23,domain="ia",type={2}}
,q52F93F4622EDBA4C={lvl=23,domain="ia",type={2}}
,q6FC4E01C1393CAF7={lvl=23,domain="ia",type={2}}
,q7E79E9A04E64F38C={lvl=23,scene="Gloamwood Pines",type={8},giver='U3B827FF05D1FF6D9'}
,q63D6F1DD87ED6C19={lvl=23,scene="Gloamwood Pines",type={3,4}}
,q2F8E1888558F919B={lvl=23,scene="The Harrow",type={4}}
,q21127E84228EA826={lvl=23,domain="ia",type={1}}
,q4236EB03016035A7={lvl=23,domain="ia",type={1}}
,q5B870F8A2F15CB95={lvl=23,domain="ia",type={1}}
,q706E2C54552D8350={lvl=23,domain="ia",type={1}}
,q783C2972383B7103={lvl=23,domain="ia",type={1}}
,q355375B80DA7029E={lvl=23,domain="ia",type={12,2,1}}
,q6A5C097B28B44519={lvl=23,domain="ia",type={12,1,2}}
,q48DF124C00000000={lvl=23,scene="Granite Falls",type={13}}
,q481945BAE15E2AC9={lvl=23,scene="The Harrow",use={{key='I65C9E0AE649F3BF3,488E8A5C95B9E589,,,,,,', count=1}},type={10,4},giver='U6038D176366B5DCB'}
,q1ED82C1C00000000={lvl=23,scene="Tearfall Creek",type={1},giver='U3CF13DFD7CFD980A'}
,q4484923B89764E65={lvl=23,type={17}}
,q5F8E0B5A9CCFC0A4={lvl=23,type={17}}
,q26AD686600000000={lvl=23,scene="Gloamwood Pines",type={8},giver='U734A82F1332568B2'}
,q10F182CB4A39EF90={lvl=23,domain="ia",type={6}}
,q17DB261E118743F1={lvl=23,domain="ia",type={6}}
,q2F830F8F25B9DCBE={lvl=23,domain="ia",type={6}}
,q49D760F5439FC594={lvl=23,domain="ia",type={6}}
,q5BBF96F46B362222={lvl=23,domain="ia",type={6}}
,q6912927782852AA1={lvl=23,scene="Greybriar Hollow",type={4}}
,q02C2016F2989F8B4={lvl=24,domain="ia",type={1}}
,q0AE8C5FB0EDD1D11={lvl=24,domain="ia",type={1}}
,q337C922503193A64={lvl=24,domain="ia",type={1}}
,q3CD811EB7CEE027A={lvl=24,domain="ia",type={1}}
,q78640ACE260599BB={lvl=24,domain="ia",type={1}}
,q7AC845932A4EECA8={lvl=24,scene="Tearfall Run",type={2,10},giver='U317BF6BA5DC2F5A1'}
,q18A81C5759DF198E={lvl=24,type={17}}
,q3A98E77C5D8E069A={lvl=24,type={17}}
,q457F4829508D875C={lvl=24,domain="ia",type={2,1,12}}
,q663F4A78129F22C5={lvl=24,scene="Deepstrike Excavation",type={4,10,8},giver='U7B9E3E3D6D065AEB'}
,q1702F784AB4FF64D={lvl=24,type={17}}
,q4638D38B277EFD12={lvl=24,scene="Millrush Pond",type={4},giver='U317BF6BA5DC2F5A1'}
,q0BC228352BDBD83D={lvl=24,scene="Gloamwood Pines",type={6},giver='U79EFEE06438FCEF5'}
,q671E09ADC3FBE70E={lvl=24,type={17}}
,q6865649C59578DA7={lvl=24,domain="ia",type={12,2,1}}
,q7492ABC578896522={lvl=24,type={17}}
,q1F16930E2EF459EC={lvl=24,domain="ia",type={1}}
,q348C739D152457A8={lvl=24,domain="ia",type={1}}
,q399C51D749267679={lvl=24,domain="ia",type={1}}
,q673174E360174ECB={lvl=24,domain="ia",type={1}}
,q7852B80227D8B5FC={lvl=24,domain="ia",type={1}}
,q4095C024B698CC64={lvl=24,type={17}}
,q45DFF3F9CFC811B0={lvl=24,scene="Granite Falls",type={4},giver='U7B9E3E3D6D065AEB'}
,q431C8C0785A85152={lvl=24,scene="Granite Falls",use={{key='I349DA23F17B27BDB,D5E9D32E047814FE,,,,,,', count=5}},type={10,8,4},giver='U05D5F79B6888F612'}
,q6903E5353424AB7E={lvl=24,type={17}}
,q653286FDBA1B7F3D={lvl=24,scene="Mathosian Mill",type={4},giver='U79EFEE06438FCEF5'}
,q084FDB0219829244={lvl=24,domain="ia",type={1}}
,q40EDC18E390AC55B={lvl=24,domain="ia",type={1}}
,q4FDA4A2D25DA8F66={lvl=24,domain="ia",type={1}}
,q580EFE4B6518DF49={lvl=24,domain="ia",type={1}}
,q5BC7EF785E793D99={lvl=24,domain="ia",type={1}}
,q5991DA18D5DB26F7={lvl=24,scene="Granite Falls",type={10,2},giver='U05D5F79B6888F612'}
,q4FD018B8BA03C2D1={lvl=24,scene="Deepstrike Excavation",type={10},giver='U2417BFFD624D23DA'}
,q209E42405940289E={lvl=24,scene="Granite Falls",use={{key='I3994EDA67CE09653,21424CF7EE9DBCF6,,,,,,', count=1}},type={4},giver='U7B9E3E3D6D065AEB'}
,q5E0FF9EE419D23E3={lvl=24,type={17}}
,q6B63283600000000={lvl=24,scene="Millrush Pond",type={13}}
,q724140E646458904={lvl=24,domain="ia",type={1,2,12}}
,q3B198B896ABC1514={lvl=24, grp=3,type={11,3},giver='U15BF6E283C2D5B26'}
,q4DA7F5B900000000={lvl=24,type={3}}
,q3DE5B9103CAA520D={lvl=24,type={17}}
,q20DFFD8733DB16B5={lvl=24,domain="ia",type={6}}
,q3A0A78BD3FD1E584={lvl=24,domain="ia",type={6}}
,q47FBFFB956E1E996={lvl=24,domain="ia",type={6}}
,q68D73E9E157BF06A={lvl=24,domain="ia",type={6}}
,q7D3F75FC037070D7={lvl=24,domain="ia",type={6}}
,q2E1B354D5404F00D={lvl=24,domain="ia",type={2}}
,q439A9C3B7D7735E4={lvl=24,domain="ia",type={2}}
,q4E968103330A7A22={lvl=24,domain="ia",type={2}}
,q6099D5D477E80BA4={lvl=24,domain="ia",type={2}}
,q6C6252D87CBB25E1={lvl=24,domain="ia",type={2}}
,q089DCF161564DF79={lvl=24,domain="ia",type={1}}
,q2D62A226580DCFE0={lvl=24,domain="ia",type={1}}
,q4286A14552C938B5={lvl=24,domain="ia",type={1}}
,q5DA98891247AF975={lvl=24,domain="ia",type={1}}
,q7D4FA41A07D7784C={lvl=24,domain="ia",type={1}}
,q5EC4C62000000000={lvl=24,type={1,11,3}}
,q0487BFB34E6D297C={lvl=24,type={17}}
,q11D34BE3754E4CB2={lvl=24,type={17}}
,q208B0C2210B46460={lvl=24,type={17}}
,q61A2C9BEA7B2C245={lvl=24,type={17}}
,q52C0214800000000={lvl=24,scene="Granite Falls",use={{key='I349DA23F17B27BDB,D5E9D32E047814FE,,,,,,', count=5}},type={10}}
,q40A68F5C9FB8D244={lvl=24,type={17}}
,q39EAEB4B9A89D40E={lvl=24,type={17}}
,q7106770B40AB7485={lvl=24,type={17}}
,q10751AC290892DF1={lvl=24,type={17}}
,q31472DB69A872F9C={lvl=24,type={17}}
,q003BAD23192D339E={lvl=24,domain="ia",type={1}}
,q051209BA259FDA01={lvl=24,domain="ia",type={1}}
,q119045814F6E1DA5={lvl=24,domain="ia",type={1}}
,q2EEE625A22B69529={lvl=24,domain="ia",type={1}}
,q72088983387FDEB4={lvl=24,domain="ia",type={1}}
,q03E4ABEEA8972F6C={lvl=24,type={3,11,1},giver='U640B133225EE7557'}
,q074A084B6F002EC4={lvl=24,domain="ia",type={6}}
,q0BF2337859DF8774={lvl=24,domain="ia",type={6}}
,q37BC3C91276C3E88={lvl=24,domain="ia",type={6}}
,q4F1D783E65663628={lvl=24,domain="ia",type={6}}
,q708A228B1A718F90={lvl=24,domain="ia",type={6}}
,q6E3F27D5A2838DD5={lvl=24,scene="Mathosian Mill",type={13}}
,q56C44FA54464D4C0={lvl=24,scene="Millrush Pond", grp=3,type={9,1}}
,q231AF6E6332BBDEB={lvl=24,scene="Deepstrike Excavation",type={9,1}}
,q50A043177045A7B9={lvl=24,scene="Tearfall Creek",type={1,9}}
,q60299C26530EA6BF={lvl=24,scene="Millrush Pond",type={1,9}}
,q6F5A2B172C7F4BA0={lvl=24,scene="Tearfall Run",type={1,9}}
,q4B20596DA161D79B={lvl=24,scene="Deepstrike Excavation",type={1,9}}
,q178340A017D99C12={lvl=24,scene="Mathosian Mill", grp=3,type={9,1}}
,q6246C52E6925B269={lvl=24,scene="Mathosian Mill",type={1,9}}
,q1F56CE994FE8C63B={lvl=24,scene="Mathosian Mill",type={1,9}}
,q27037E8574A1F302={lvl=24,scene="Millrush Pond",type={1,9}}
,q0C125EE42238C428={lvl=24,domain="ia",type={6}}
,q2F5A6D6960B34C50={lvl=24,domain="ia",type={6}}
,q2F89B8792689B5A4={lvl=24,domain="ia",type={6}}
,q4C6CAF1643E70BFA={lvl=24,domain="ia",type={6}}
,q627FF0EE020765C5={lvl=24,domain="ia",type={6}}
,q2BADBA02A6D55D90={lvl=24,type={17}}
,q7463291F4A8D5D67={lvl=24,type={17}}
,q77EA67106BA02502={lvl=24,scene="Millrush Pond",type={13}}
,q3776B384F6F751F6={lvl=24,scene="Deepstrike Excavation",type={4},giver='U6038D176366B5DCB'}
,q32C3252300000000={lvl=24,type={11,1,3}}
,q44EDFC3A1E683EF2={lvl=24,domain="ia",type={2}}
,q4A6E58C2389E5608={lvl=24,domain="ia",type={2}}
,q4E8C22DC6A7B7C49={lvl=24,domain="ia",type={2}}
,q57D0FE2F771F4345={lvl=24,domain="ia",type={2}}
,q78F5477F0F1834AF={lvl=24,domain="ia",type={2}}
,q5BE2D270CAAECA77={lvl=24,type={11,3,1},giver='U74F279F626B9DB48'}
,q2DFD73287FC6F645={lvl=24,scene="Deepstrike Excavation",type={13}}
,q0B1670D0756F4A05={lvl=24,domain="ia",type={2}}
,q0C152851039E7DD5={lvl=24,domain="ia",type={2}}
,q3F480FA13BDF4A8D={lvl=24,domain="ia",type={2}}
,q4614141E7773251D={lvl=24,domain="ia",type={2}}
,q68085DB0303E450B={lvl=24,domain="ia",type={2}}
,q78E2103900000000={lvl=24,scene="Granite Falls",type={8},giver='U59CFC82506E75ACD'}
,q66982A5200000000={lvl=24,scene="Tearfall Run",type={4},giver='U79EFEE06438FCEF5'}
,q1702D22705FF4A93={lvl=24,domain="ia",type={2}}
,q22EDFB7A0C864FA8={lvl=24,domain="ia",type={2}}
,q270921E61F8248C9={lvl=24,domain="ia",type={2}}
,q6318ED3E725B983F={lvl=24,domain="ia",type={2}}
,q6DDE3C6C7714C372={lvl=24,domain="ia",type={2}}
,q79F31100909AC2DE={lvl=24,type={17}}
,q4A154F0D78EE9E9B={lvl=24,domain="ia",type={12,2,1}}
,q720B982D00000000={lvl=24,scene="Mathosian Mill",type={13}}
,q021B9A7D269961CD={lvl=24,domain="ia",type={2}}
,q04E722F10D5B72B9={lvl=24,domain="ia",type={2}}
,q0868D2110F0B1CC0={lvl=24,domain="ia",type={2}}
,q087A2F4F6E526F41={lvl=24,domain="ia",type={2}}
,q12F64F0A67C00B16={lvl=24,domain="ia",type={2}}
,q16583278503DC284={lvl=24,domain="ia",type={6}}
,q1FAFE2D028FA5391={lvl=24,domain="ia",type={2}}
,q2596CBFA1813AF50={lvl=24,domain="ia",type={2}}
,q37F78D4E26AD30EE={lvl=24,domain="ia",type={6}}
,q47BC7CB0306C089A={lvl=24,domain="ia",type={6}}
,q582AA6591972D38A={lvl=24,domain="ia",type={2}}
,q62C3E7054F35F0C7={lvl=24,domain="ia",type={2}}
,q67B18BB9148F67BC={lvl=24,domain="ia",type={2}}
,q6EBE655C49862A5D={lvl=24,domain="ia",type={6}}
,q771FD01104FDD549={lvl=24,domain="ia",type={6}}
,q04420F1A6767F73E={lvl=24,domain="ia",type={1}}
,q1E293E5270F5387E={lvl=24,domain="ia",type={1}}
,q385126334B1003C0={lvl=24,domain="ia",type={1}}
,q70F5E1932A3884D3={lvl=24,domain="ia",type={1}}
,q785CAAB278A4E192={lvl=24,domain="ia",type={1}}
,q7186580B54C0BE63={lvl=24,scene="Millrush Pond",type={2,4},giver='U1FE59EF72F8FFEA1'}
,q06C0C239774329A5={lvl=24,domain="ia",type={1}}
,q098924ED22ACD17F={lvl=24,domain="ia",type={1}}
,q1A858B7B3D99CF17={lvl=24,domain="ia",type={1}}
,q363E2F4C3B686C3B={lvl=24,domain="ia",type={1}}
,q7712A1E22A9A8953={lvl=24,domain="ia",type={1}}
,q2048D8885693398B={lvl=24,domain="ia",type={1}}
,q4C809B0E56033F8D={lvl=24,domain="ia",type={1}}
,q5C96FDC61F31EB58={lvl=24,domain="ia",type={1}}
,q67CF1D9E12B3C29E={lvl=24,domain="ia",type={1}}
,q6CF5F8D70FD49841={lvl=24,domain="ia",type={1}}
,q4502A68600000000={lvl=24,scene="Tearfall Run",type={4},giver='U317BF6BA5DC2F5A1'}
,q39C61323599FE728={lvl=24,type={17}}
,q3C8B8C525AC869B3={lvl=24,domain="ia",type={2}}
,q46D48A9724BB5F99={lvl=24,domain="ia",type={2}}
,q534D099D5EBB601C={lvl=24,domain="ia",type={2}}
,q790ABB9C2B78AFA3={lvl=24,domain="ia",type={2}}
,q7B2E5C082B101495={lvl=24,domain="ia",type={2}}
,q0CF22F34346894AC={lvl=24,domain="ia"}
,q1AA95A3045AD65F5={lvl=24,domain="ia"}
,q43591063DDFDCDFB={lvl=24, grp=3,type={11,3},giver='U19E3BBC61E8F21D2'}
,q01E5335A661BA2A3={lvl=24,domain="ia",type={1}}
,q359647FD7952911A={lvl=24,domain="ia",type={1}}
,q3FFBAFA873D241A9={lvl=24,domain="ia",type={1}}
,q5FF18F7B3A503DBC={lvl=24,domain="ia",type={1}}
,q6B27357B467B6E1E={lvl=24,domain="ia",type={1}}
,q2896DEB93886004F={lvl=24,type={17}}
,q30EAA70C3630E5D3={lvl=24,type={17}}
,q4C8B7DAE00000000={lvl=25, grp=5,type={3,1,6}}
,q78235F4C00000000={lvl=25, grp=5,type={1,3,6}}
,q77593C2CDBF26A04={lvl=25,domain="pvp",giver='U587AD85D16597EE2'}
,q169DCCA14D6CBF91={lvl=25,domain="ia",type={1}}
,q179FADBF1EE84D85={lvl=25,domain="ia",type={1}}
,q30136CD324A1FA62={lvl=25,domain="ia",type={1}}
,q3FCFBBF932CF9F20={lvl=25,domain="ia",type={1}}
,q4973A59B7453C153={lvl=25,domain="ia",type={1}}
,q05C4136620271738={lvl=25,domain="ia",type={6}}
,q25DEA8B9046BF751={lvl=25,domain="ia",type={6}}
,q34A9831567A6C0E8={lvl=25,domain="ia",type={6}}
,q5FF8286B2B1EDD8A={lvl=25,domain="ia",type={6}}
,q6E3188A97D69FA51={lvl=25,domain="ia",type={6}}
,q458E66A700000000={lvl=25}
,q5713914100000000={lvl=25,type={4,3}}
,q7653A00B00000000={lvl=25,type={3,4}}
,q5E6A878500000000={lvl=25}
,q4FAFC71500000000={lvl=25,type={3,4}}
,q6B81304700000000={lvl=25,type={4,3}}
,q00EDD5F800000000={lvl=25,type={6,11}}
,q00EDD60A00000000={lvl=25,type={11,6}}
,q5E4B35AD7BD147BF={lvl=25,type={1},giver='U575AEB6C21E6E60E'}
,q1AE8A90C35069CC8={lvl=25,domain="ia",type={6}}
,q362DF7A17E4D39EC={lvl=25,domain="ia",type={6}}
,q480A41652D12BA9F={lvl=25,domain="ia",type={6}}
,q5467CD7F7BA7F344={lvl=25,domain="ia",type={6}}
,q5DD7CA60438F0043={lvl=25,domain="ia",type={6}}
,q4B25EB3DBD390DBA={lvl=25,scene="Gloamwood Pines",type={8},giver='U3B827FF05D1FF6D9'}
,q402F05E38CA4AC73={lvl=25,domain="pvp",giver='U587AD85D16597EE2'}
,q34ACA7E2BD70BC8A={lvl=25,scene="Greybriar Hollow",type={4},giver='U79EFEE06438FCEF5'}
,q5A86879300000000={lvl=25}
,q28AA4022E45AB081={lvl=25,scene="Titan's Well",type={20},giver='U06E8C6257D88DFA9'}
,q4250616762091CE7={lvl=25,domain="ia",type={12,1,2}}
,q53F0CFAE47D00DF4={lvl=25,domain="ia",type={1,12,2}}
,q28A2D7BF00000000={lvl=25,scene="Gloamwood Pines",type={4},giver='U1FE59EF72F8FFEA1'}
,q2ABDA5D6AA603A75={lvl=25,scene="Tearfall Run",type={1},giver='U79EFEE06438FCEF5'}
,q2C22C03888E3AD31={lvl=25,scene="Towering Steppes",type={4},giver='U0A988D497A5F1515'}
,q31C57C56076A4B49={lvl=25,type={1},giver='U27D1ECAF179315F8'}
,q0ED5C6D37E839930={lvl=25,domain="ia",type={1}}
,q345942CC0715A0FC={lvl=25,domain="ia",type={1}}
,q39A223384D654417={lvl=25,domain="ia",type={1}}
,q52F77996030E93D9={lvl=25,domain="ia",type={1}}
,q5E21E3827E1B3BC5={lvl=25,domain="ia",type={1}}
,q332375505C93CF9B={lvl=25,domain="pvp",giver='U0FCD909B4ABB28A9'}
,q003108500226FA6B={lvl=25,domain="ia",type={11}}
,q00CA089E4F4DCD79={lvl=25,domain="ia",type={11}}
,q013536274E9AFC7A={lvl=25,domain="ia",type={11}}
,q0ACE010D6F619B1E={lvl=25,domain="ia",type={11}}
,q0FFA9A0E1E63EB68={lvl=25,domain="ia",type={11}}
,q17BA327D1032B23B={lvl=25,domain="ia",type={11}}
,q2ADB0F434925D039={lvl=25,domain="ia",type={11}}
,q554758C15B1A82F4={lvl=25,domain="ia",type={11}}
,q62BA96B451690324={lvl=25,domain="ia",type={11}}
,q73CCB99F492E57D7={lvl=25,domain="ia",type={11}}
,q7602E15C6976ACC8={lvl=25,domain="ia",type={11}}
,q7E784E935668FA68={lvl=25,domain="ia",type={11}}
,q0963EF0DCD759D0C={lvl=25,scene="Gloamwood Pines",type={8},giver='U282750815A0B6DE3'}
,q062B4B2000000000={lvl=25, grp=3,giver='U466F8E012F1FF1FB'}
,q18B078EB00000000={lvl=25, grp=3,giver='U3D8EA30F468E8E08'}
,q2E9EFBF700000000={lvl=25,type={3}}
,q6D8969FB00000000={lvl=25,type={3}}
,q049955F92C5DE4AF={lvl=25,domain="ia",type={6}}
,q0A0CE3822081F056={lvl=25,domain="ia",type={6}}
,q622DEBC4556CFBBC={lvl=25,domain="ia",type={6}}
,q684B03FE068CFF41={lvl=25,domain="ia",type={6}}
,q7C0121152FF19062={lvl=25,domain="ia",type={6}}
,q065341E800000000={lvl=25, grp=5,type={3,6,1}}
,q5C6245A700000000={lvl=25, grp=5,type={1,3,6}}
,q00EDD5FB00000000={lvl=25,type={11,6}}
,q00EDD60D00000000={lvl=25,type={11,6}}
,q00E9406659428875={lvl=25,domain="ia",type={1}}
,q3BB6541B4143AE97={lvl=25,domain="ia",type={1}}
,q67A2A7FB43C34C9E={lvl=25,domain="ia",type={1}}
,q709537090612D72E={lvl=25,domain="ia",type={1}}
,q71A662BF4A891C53={lvl=25,domain="ia",type={1}}
,q231A5A0A4EAB9659={lvl=25,scene="Titan's Well",type={8,4,2},giver='U2E689DD455C410CF'}
,q4A926759B6283ACA={lvl=25,type={1}}
,q0FFE096B6DD50F4D={lvl=25,domain="ia",type={1}}
,q5C52555764963289={lvl=25,domain="ia",type={1}}
,q5FBA87F95C3D191D={lvl=25,domain="ia",type={1}}
,q6FB47F0A3571658C={lvl=25,domain="ia",type={1}}
,q7F8D991E778E2F64={lvl=25,domain="ia",type={1}}
,q753D647CF1553715={lvl=25,scene="Tearfall Run",type={10},giver='U317BF6BA5DC2F5A1'}
,q00EDD5F900000000={lvl=25,type={6,11}}
,q00EDD60B00000000={lvl=25,type={6,11}}
,q0DBDC3514CBBB06A={lvl=25,domain="ia",type={1}}
,q10519F63001CFB71={lvl=25,domain="ia",type={1}}
,q1D341EE272EC2073={lvl=25,domain="ia",type={1}}
,q4BE0906772ACBA9F={lvl=25,domain="ia",type={1}}
,q5934C2F60E72770B={lvl=25,domain="ia",type={1}}
,q306F9AB12388D2B9={lvl=25,scene="Tearfall Run",type={1,9}}
,q65C825942A7448D0={lvl=25,scene="Tearfall Run",type={1,9}}
,q5E5C53EA17D2FB01={lvl=25,scene="Tearfall Run",type={1,9}}
,q6DB8BF397E17CA19={lvl=25,scene="Tearfall Run",type={1,9}}
,q33838A356E9009B6={lvl=25,scene="Towering Steppes",type={9,1}}
,q07C0A30C99494EED={lvl=25,scene="Towering Steppes",type={9,1}}
,q7409CAD606D68328={lvl=25,scene="Tearfall Run",type={9,1}}
,q0508CB1CD2BFAEA1={lvl=25,scene="Titan's Well",type={9,1}}
,q23F6CB9A56BD2568={lvl=25,scene="Titan's Well",type={1,9}}
,q739A651C6070A97B={lvl=25,scene="Towering Steppes",type={1,9}}
,q7C0667277E7045AC={lvl=25,scene="Tearfall Run",type={1,9}}
,q097AD152C768858A={lvl=25,scene="Titan's Well",type={1,9}}
,q3B21EA7C55D4EAD1={lvl=25,scene="Tearfall Run",type={9,1}}
,q05AD523114FD596D={lvl=25,domain="ia",type={6}}
,q2F32461449572500={lvl=25,domain="ia",type={6}}
,q5725D80F1764F94F={lvl=25,domain="ia",type={6}}
,q5D596D955AC099C0={lvl=25,domain="ia",type={6}}
,q636108F434341CFE={lvl=25,domain="ia",type={6}}
,q1D2748FD778A1578={lvl=25,domain="ia",type={2,12,1}}
,q3BBC782CFBD2D83D={lvl=25,domain="pvp",giver='U587AD85D16597EE2'}
,q3FA809B96FBE6F72={lvl=25,scene="Gloamwood Pines",type={1,10},giver='U734A82F1332568B2'}
,q4C8D9C147ECE30E6={lvl=25,domain="ia",type={6}}
,q0EF4AA651717AB7F={lvl=25,domain="ia",type={1}}
,q13E3425C3EBF8619={lvl=25,domain="ia",type={1}}
,q18595AF268A11AFA={lvl=25,domain="ia",type={1}}
,q2CBDE2DD3920368D={lvl=25,domain="ia",type={1}}
,q5612060801925770={lvl=25,domain="ia",type={1}}
,q5F0F5DD9115AEAC3={lvl=25,scene="Towering Steppes", grp=2,type={1},giver='U02DD9E846711EDB1'}
,q031A74EC4CE0FC66={lvl=25,domain="ia",type={2}}
,q41E2F3B52421417C={lvl=25,domain="ia",type={2}}
,q4862F8FD74B7B01B={lvl=25,domain="ia",type={2}}
,q7138C8E83054C8D4={lvl=25,domain="ia",type={2}}
,q7E99381937FDF629={lvl=25,domain="ia",type={2}}
,q251FBD26880862BE={lvl=25,scene="Deepwood Cottage",type={8},giver='U1FE59EF72F8FFEA1'}
,q42796C433422A1DA={lvl=25,domain="ia",type={2}}
,q486D79670CDA7E19={lvl=25,domain="ia",type={2}}
,q51848CCF4EA1CBB5={lvl=25,domain="ia",type={2}}
,q68E4F0211780851E={lvl=25,domain="ia",type={2}}
,q6E3015197C44252B={lvl=25,domain="ia",type={2}}
,q79C1D0297E734D1B={lvl=25,domain="pvp",giver='U12735ED2244468B7'}
,q49980D05391609F1={lvl=25,domain="pvp",giver='U12735ED2244468B7'}
,q409C745400000000={lvl=25,type={1,3}}
,q46DE0E6600000000={lvl=25,type={3,1}}
,q0CC817C381507739={lvl=25,domain="guild"}
,q39A2531AE98E8759={lvl=25,domain="guild"}
,q67FAB3EE74A769FE={lvl=25,domain="guild"}
,q78AF9D0EC909797A={lvl=25,domain="guild"}
,q00797A5600000000={lvl=25}
,q00FF571900000000={lvl=25}
,q078FA70A00000000={lvl=25}
,q3C14FA4700000000={lvl=25}
,q4F1F036E00000000={lvl=25}
,q7C5F6A0A00000000={lvl=25}
,q7A62F0DEAD13EFDD={lvl=25,scene="Towering Steppes",type={4}}
,q38577EB100000000={lvl=25,type={3}}
,q7679601700000000={lvl=25,type={3}}
,q396EBDFB00000000={lvl=25,type={6,11}}
,q3DE94B9B00000000={lvl=25,type={11,6}}
,q46E21E0400000000={lvl=25,scene="Titan's Well",type={4},giver='U02DD9E846711EDB1'}
,q54114A62FE261DEE={lvl=25,domain="pvp",giver='U12735ED2244468B7'}
,q2BB83DAAC303B126={lvl=25,scene="Towering Steppes",type={10,1},giver='U2FA96CF6714D0E33'}
,q0F34BC3EB08F6C7A={lvl=25,domain="pvp",giver='U6C2F9BF5136514D7'}
,q3FB586A800000000={lvl=25,type={3,4}}
,q3FD1434B00000000={lvl=25,type={4,3}}
,q55DD14C05968AF50={lvl=25,scene="Towering Steppes",type={4},giver='U2E689DD455C410CF'}
,q00EDD5FA00000000={lvl=25,type={11,6}}
,q00EDD60C00000000={lvl=25,type={6,11}}
,q6FF64F376456B81E={lvl=25,scene="Camp Fergos",type={5,8},giver='U6038D176366B5DCB'}
,q0EBC5DC400000000={lvl=26,scene="Towering Steppes",type={1}}
,q50DBBCB92C289517={lvl=26,domain="ia",type={1,2,12}}
,q027011B20906F55D={lvl=26,domain="ia",type={1,12,2}}
,q3CD1B652648C91B6={lvl=26,domain="ia",type={2,1,12}}
,q0F212D0F282CC031={lvl=26,domain="ia",type={1,12,2}}
,q1DF321E700946E16={lvl=26,domain="ia",type={1,2,12}}
,q045130A07E5E1367={lvl=26,scene="The Last Valley",type={4,10},giver='U2A02C616653D532E'}
,q1515568B0732A053={lvl=26,domain="ia",type={2}}
,q1AA9A5E26C0CD51B={lvl=26,domain="ia",type={2}}
,q34941F8B006FA821={lvl=26,domain="ia",type={2}}
,q634270AE3CA738BE={lvl=26,domain="ia",type={2}}
,q7821BEE51A57B60F={lvl=26,domain="ia",type={2}}
,q69464CA300000000={lvl=26,scene="Towering Steppes",type={1}}
,q093CE05D7735634C={lvl=26,domain="ia",type={1,12,2}}
,q503506C1D821C5EC={lvl=26,scene="Tearfall Run",type={3,1}}
,q1FA74E816BA38CDB={lvl=26,domain="ia",type={2}}
,q22B62044023E92DF={lvl=26,domain="ia",type={2}}
,q4E9E29F66CA78A4D={lvl=26,domain="ia",type={2}}
,q547F56957581DC84={lvl=26,domain="ia",type={2}}
,q7CAE3C2B39B0AB41={lvl=26,domain="ia",type={2}}
,q1FE267BB6D8BCD38={lvl=26,domain="ia",type={12,2,1}}
,q21176E2B298E2474={lvl=26,domain="ia",type={12,1,2}}
,q3F6D847952D55AB7={lvl=26,domain="ia",type={2,1,12}}
,q5B5B4C2BE40C5AA4={lvl=26,scene="The Last Valley",type={1,6,2},giver='U2A02C616653D532E'}
,q214BADE4D90687D7={lvl=26,scene="Shadefallen Keep",type={1},giver='U1FE59EF72F8FFEA1'}
,q58633C5080518F96={lvl=26,scene="Tearfall Run",type={1,3}}
,q12E88AC5030A69A5={lvl=26,domain="ia",type={2}}
,q1911477857E153BD={lvl=26,domain="ia",type={2}}
,q28CF515A02823868={lvl=26,domain="ia",type={2}}
,q2DE655BE00877E53={lvl=26,domain="ia",type={2}}
,q6B30C51B20D03433={lvl=26,domain="ia",type={2}}
,q0786064C2B24EF33={lvl=26,domain="ia",type={1}}
,q4310F746775CB711={lvl=26,domain="ia",type={1}}
,q520239DD08C1D6A8={lvl=26,domain="ia",type={1}}
,q63F382255A577BAD={lvl=26,domain="ia",type={1}}
,q6562753C74A513DC={lvl=26,domain="ia",type={1}}
,q1E833FEC00000000={lvl=26,scene="The Last Valley",type={10}}
,q585075866CE71CBF={lvl=26,giver='U610B81787268A249'}
,q072CDCBC54F4E839={lvl=26,domain="ia",type={1}}
,q1490679A0189E16C={lvl=26,domain="ia",type={1}}
,q16F23AEC7CD65762={lvl=26,domain="ia",type={1}}
,q341F53D8788E349C={lvl=26,domain="ia",type={1}}
,q59C147C81DBA6119={lvl=26,domain="ia",type={1}}
,q42DC5D4200000000={lvl=26,scene="The Last Valley"}
,q19B56B5700000000={lvl=26,type={3}}
,q01B402F4E9669BD3={lvl=26,type={4},giver='U13E19F3B6F3CF28A'}
,q7F9AE17990DE174D={lvl=26,type={8},giver='U27D1ECAF179315F8'}
,q27DB62138E0D2431={lvl=26,giver='U13E19F3B6F3CF28A'}
,q695C5E05F5FCA28E={lvl=26,scene="The Last Valley",type={6,1}}
,q4E2E714D3FBE50F3={lvl=26,domain="ia",type={17}}
,q3884B6A63096E813={lvl=26,domain="ia",type={17}}
,q000B37683F8F1FCC={lvl=26,domain="ia",type={1}}
,q0322ACC366E2C8C3={lvl=26,domain="ia",type={1}}
,q3C1C61E84131EEEF={lvl=26,domain="ia",type={1}}
,q794235255F641718={lvl=26,domain="ia",type={1}}
,q7A5F3A1C4EBBFC0A={lvl=26,domain="ia",type={1}}
,q1895CAF068F52563={lvl=26,domain="ia",type={2}}
,q2D75203167271FBA={lvl=26,domain="ia",type={2}}
,q563644A22C9B7727={lvl=26,domain="ia",type={2}}
,q6533304F37D808D1={lvl=26,domain="ia",type={2}}
,q6568B36448804D5A={lvl=26,domain="ia",type={2}}
,q2BDB96200DC8A18C={lvl=26,domain="ia",type={12,1,2}}
,q33EFC9B053E0D7D2={lvl=26,scene="Shadefallen Keep",type={9,1}}
,q5172057A1F5A75C9={lvl=26,scene="Shadefallen Keep",type={1,9}}
,q116184A57CCDECB5={lvl=26,domain="ia",type={1}}
,q3A26AA972032D4D2={lvl=26,domain="ia",type={1}}
,q468209CD1B9171FC={lvl=26,domain="ia",type={1}}
,q582B4C185521EBCF={lvl=26,domain="ia",type={1}}
,q6A6308DF456E4117={lvl=26,domain="ia",type={1}}
,q2DB00451673110C0={lvl=26,scene="Gloamwood Pines",use={{key='I7D5A6A4CA137D8A2,7CA66FFFC0CFD5A7,,,,,,', count=1}},type={10},giver='U0EB29B496212EAD8'}
,q45340D9441E3E35E={lvl=26,scene="Shadefallen Keep",type={1,9}}
,q4FAE65CE5C904DC2={lvl=26,scene="The Last Valley",type={4},giver='U2A02C616653D532E'}
,q49CA6E6B050BAF40={lvl=26,scene="The Last Valley",type={6,13,2},giver='U2E689DD455C410CF'}
,q6435CBFD00000000={lvl=26,scene="The Last Valley",type={10}}
,q24A388CD8C087126={lvl=26,scene="The Last Valley",type={8,4,10},giver='U2A02C616653D532E'}
,q3914865644BA2E12={lvl=26,domain="ia",type={12,1,2}}
,q2E9E796F00000000={lvl=26,scene="Towering Steppes",type={4}}
,q67A4F62544007535={lvl=26,type={1}}
,q19E35ADFD1A62474={lvl=26,scene="The Last Valley",type={22,10,8},giver='U551AFF263D7BD2A7'}
,q1DF6B5A26BFEC573={lvl=26,domain="ia",type={6}}
,q4A0F89D416BF6CBC={lvl=26,domain="ia",type={6}}
,q530E5DAB062D2D6D={lvl=26,domain="ia",type={6}}
,q6358EED755561B0F={lvl=26,domain="ia",type={6}}
,q78DB01C5717889D4={lvl=26,domain="ia",type={6}}
,q3A7B98A30501A721={lvl=26,domain="ia",type={6}}
,q3E6466833B80F80E={lvl=26,domain="ia",type={6}}
,q60F9EA98551494F9={lvl=26,domain="ia",type={6}}
,q61D1CD1F3DBB87AA={lvl=26,domain="ia",type={6}}
,q653C893162285E8E={lvl=26,domain="ia",type={6}}
,q0EA2B983F4503C48={lvl=26,scene="The Last Valley",type={6},giver='U49CD963C222472AC'}
,q1A0AA0FE6CA2BB3A={lvl=26,domain="ia",type={2}}
,q436BF3A24F8555CF={lvl=26,domain="ia",type={2}}
,q5832FCE40504484C={lvl=26,domain="ia",type={2}}
,q675AF14701DC173A={lvl=26,domain="ia",type={2}}
,q78AFEC2442C6D1A6={lvl=26,domain="ia",type={2}}
,q447C51304D235731={lvl=26,domain="ia",type={1}}
,q4B7361A80962038F={lvl=26,domain="ia",type={1}}
,q5D27341313D75A2F={lvl=26,domain="ia",type={1}}
,q7E40784E181DA8DE={lvl=26,domain="ia",type={1}}
,q1BC7793855118AB6={lvl=26,domain="ia",type={1}}
,q18A29BC44D20C17F={lvl=26,domain="ia",type={1}}
,q4538843368AAF579={lvl=26,domain="ia",type={1}}
,q49A291A02F3FDD6D={lvl=26,domain="ia",type={1}}
,q51052604575398D5={lvl=26,domain="ia",type={1}}
,q517331446AF323D7={lvl=26,domain="ia",type={1}}
,q46D867F63E79C0B0={lvl=26,domain="ia",type={22,2}}
,q332A501E74DAA5B5={lvl=26,domain="ia",type={1}}
,q3D8291436A0B0A1E={lvl=26,domain="ia",type={1}}
,q7398362E56F9F149={lvl=26,domain="ia",type={1}}
,q7ACAC3DC53C64F7D={lvl=26,domain="ia",type={1}}
,q7B18CF4070814013={lvl=26,domain="ia",type={1}}
,q631643A87D9802B0={lvl=26,type={4,6},giver='U671BC5F609666F64'}
,q050927D1D3CB249E={lvl=27,scene="Stonecrest",type={4}}
,q5199FBC81FF3E735={lvl=27,scene="Riverfell",type={13}}
,q1A5084C28C19D1ED={lvl=27,scene="Suncrest Canyon",type={1},giver='U76D7F6973D5C0C99'}
,q695D651AB0EAD6A5={lvl=27,scene="Stonecrest",type={8},giver='U5DB612FE09084B56'}
,q5FBDF8E2B3C09D67={lvl=27,scene="Frost Falls",type={13}}
,q032DE2EE6B874B40={lvl=27,type={17}}
,q7215FE030B1203D2={lvl=27,type={17}}
,q57DDDB9752F95496={lvl=27,scene="Ironroot Draw",type={6},giver='U737F7C0F1C8F21A9'}
,q3C573F4200000000={lvl=27,scene="Overwatch",type={8}}
,q0E765E2100000000={lvl=27,scene="Ironroot Draw",type={9,1}}
,q156991847D01C79B={lvl=27}
,q1CF8F194C524EBB3={lvl=27,type={17}}
,q22D504DE05538210={lvl=27}
,q2B3AAAD30CB1E71D={lvl=27,type={17}}
,q2EF5EF54B0CC51A4={lvl=27}
,q30585091E291CBEC={lvl=27,type={17}}
,q7701709A9B3A2A6B={lvl=27,scene="Gloamwood Pines",type={8},giver='U0EB29B496212EAD8'}
,q61945CE6DA597386={lvl=27,scene="Ironroot Draw",type={4}}
,q1E8CABE501E55CA1={lvl=27,scene="Whitefall Passage",type={5,8},giver='U143B6EBD2BE41028'}
,q2988A479BF8545BB={lvl=27,scene="Whitefall Passage",type={13}}
,q6706AFFEA948E63A={lvl=27,scene="Suncrest Canyon",type={8,1},giver='U70C3C9657161E2D9'}
,q6FC8FCBC4C21DA0F={lvl=27,scene="Stonecrest",type={13}}
,q2A14FE749F0E4767={lvl=27,scene="Riverfell",type={4},giver='U1BB9094E7C73B9ED'}
,q0CEB9AC57BCC6E4C={lvl=27,scene="Stonecrest",type={4},giver='U0B09E5C65B02AD9A'}
,q2203FF1C7D670343={lvl=27,scene="Whitefall Passage",type={6},giver='U143B6EBD2BE41028'}
,q00C563C0D6854346={lvl=27,scene="Crimson Wash",type={8},giver='U1BB9094E7C73B9ED'}
,q7877A3B145A5A320={lvl=27,scene="Stonecrest",type={10},giver='U1342954A69B091D9'}
,q5DE4BCDABF1C2E31={lvl=27,scene="Ironroot Draw",type={13}}
,q519ECA5EF7BA4B67={lvl=27,scene="Stonecrest",type={6,8},giver='U1342954A69B091D9'}
,q5AB35E0200000000={lvl=27,scene="Scarwood Lift Base",type={8}}
,q3688396400000000={lvl=27,scene="Riverfell",type={3}}
,q3C123A3200000000={lvl=27,scene="Crimson Wash",type={8}}
,q34792BA9FA553FF3={lvl=27,scene="Old Mule Run",type={5,8},giver='U2A20E2A745269FB7'}
,q4F178D0400000000={lvl=27,scene="Whitefall Passage",type={13}}
,q2F1DEBDBB2C29696={lvl=27,scene="Whitefall Passage",type={5,8},giver='U50F78C870E371995'}
,q259D56C977CBF242={lvl=27,scene="Riverfell",type={8},giver='U13C8E15032F73934'}
,q348AF2A38BB0B742={lvl=27,scene="Whitefall Passage",type={1,9}}
,q3FC7CA7C19177EE3={lvl=27,scene="Whitefall Passage",type={9,1}}
,q352F86EC3A7500F2={lvl=27,scene="Frost Falls",type={1,9}}
,q3A8DAB4726226D15={lvl=27,scene="Stonecrest",type={9,1}}
,q1618AE3075F00947={lvl=27,scene="Frost Falls",type={1,9}}
,q175D3B279CDC1257={lvl=27,scene="Riverfell",type={1,9}}
,q51DD9FE04354D723={lvl=27,scene="Whitefall Passage",type={9,1}}
,q0F805B3319A00043={lvl=27,scene="Stonecrest",type={1,9}}
,q655F16586C132107={lvl=27,scene="Riverfell",type={9,1}}
,q7C13DA3F696F1CF9={lvl=27,scene="Ironroot Draw",type={9,1}}
,q5DB31E2F8D481795={lvl=27,scene="Ironroot Draw",type={9,1}}
,q4863E04457F4EE80={lvl=27,scene="Suncrest Canyon",type={1,9}}
,q0BB3270C5FBB241C={lvl=27,scene="Ironroot Draw",type={13}}
,q5E672AC1CD170C02={lvl=27,scene="Stonecrest",type={8},giver='U70379EB1495C0F7B'}
,q7A7B9710D1BC37FA={lvl=27,scene="Riverfell",type={6},giver='U2A31F8E64D1506C7'}
,q0EED08ECF6B8A4DF={lvl=27,scene="Riverfell",type={4},giver='U1BB9094E7C73B9ED'}
,q25B8C48200000000={lvl=27,scene="Riverfell",type={3,1}}
,q4BF51CAB00000000={lvl=27,scene="Ironroot Draw",type={4,3}}
,q4B71D45200000000={lvl=27,scene="Old Mule Run",type={8}}
,q494DEB67E59CC26C={lvl=27,scene="Stonecrest",type={13}}
,q506F645BE8BA158C={lvl=27,scene="Old Mule Run",type={8,5},giver='U2A02C616653D532E'}
,q6FDBAB6A00000000={lvl=27,scene="Stonecrest",type={6,3}}
,q43E3019B00000000={lvl=27,scene="Overwatch",type={8}}
,q354FB93E00000000={lvl=27,scene="Old Mule Run",type={8}}
,q1512C51740E5F70B={lvl=27,scene="Old Mule Run",type={10},giver='U5E6FC4DD6AA92158'}
,q3F24C8AD00000000={lvl=27,scene="Ironroot Draw",type={3,4}}
,q6F704CA88884D156={lvl=27,scene="Frost Falls",type={4},giver='U08C7AAA8666C1303'}
,q101164FCF732B089={lvl=27,scene="Tearfall Run",type={8},giver='U317BF6BA5DC2F5A1'}
,q4B8840E5887D8515={lvl=27,scene="Whitefall Passage",type={8,5},giver='U640B133225EE7557'}
,q762A90338B332F34={lvl=27,scene="Suncrest Canyon",type={13}}
,q0C036DE0E643ABC7={lvl=28,scene="Demon Steps",type={10,8,6},giver='U0B09E5C65B02AD9A'}
,q64BCBD5400000000={lvl=28,scene="Thunderwork Ridge",type={4}}
,q47D31DED00000000={lvl=28,scene="Darkfire Grove",type={4,1}}
,q23B83D5895A77EA7={lvl=28,scene="Demon Steps",use={{key='I2550FB4879E86EDE,DCBB8C53B8C052B6,,,,,,', count=1}},type={1,10}}
,q3531F38800000000={lvl=28,scene="Demon Steps",type={1}}
,q3039E74FB1DB9BF2={lvl=28,scene="Granitedust Gulch",type={1,4,10},giver='U001E383E155DBBA3'}
,q24A34EF6FB568CA3={lvl=28,scene="Frayworn Rock",type={1,6},giver='U7CD0564122399198'}
,q702F3FAC7702CCE6={lvl=28,type={17}}
,q53D96A52ED1EE1A1={lvl=28,scene="Frayworn Rock",type={4}}
,q4503E0A0EEAA9865={lvl=28,scene="Pilgrim's Crossing",type={6},giver='U47557C1C42370DFE'}
,q1A46D6A5579149B7={lvl=28,scene="Cloudbourne Tarn",type={8},giver='U08C7AAA8666C1303'}
,q7C9D14F1541A6CED={lvl=28,scene="Frayworn Rock",use={{key='I4F14198A722B915B,30CD6E73E1983DB5,,,,,,', count=1}},type={10,4,2},giver='U737F7C0F1C8F21A9'}
,q17372600219D7425={lvl=28,scene="Thunderwork Ridge",type={6,1}}
,q684C47CC101D38E9={lvl=28,scene="Cloudbourne Tarn",type={4},giver='U3CF3A7B1170C3C5E'}
,q06EAD0BFFDB6D1EE={lvl=28,scene="Demon Steps",type={4}}
,q53172BD5BBEECD6F={lvl=28,scene="Breaker's Camp",type={8,5},giver='U08C7AAA8666C1303'}
,q3FE8C311D5247A97={lvl=28,type={17}}
,q184D456C962D5BE2={lvl=28,type={4},giver='U0CBB581A79E9C2CB'}
,q21E555E50B3BB00E={lvl=28,type={4},giver='U4074BEBD27C396FB'}
,q3EDF5F5CD69D6475={lvl=28,scene="Pilgrim's Crossing",type={4},giver='U2F209E5D35D257CE'}
,q013077FA7AE72079={lvl=28,type={17}}
,q03FECF73F6D5B3A1={lvl=28,type={17}}
,q3677E166F04D24E6={lvl=28,scene="Thunderwork Ridge",use={{key='I2DEE1C6EB1631A31,CA813F014FE43711,,,,,,', count=5}},type={10},giver='U5776431212412E08'}
,q4F32012D7283F155={lvl=28,type={7,17}}
,q599C9E269AF62E64={lvl=28,type={17,7}}
,q434DCBEE4FDFE3F6={lvl=28,type={17,7}}
,q7954E1C8A3F73296={lvl=28,type={17}}
,q3F391AEBD5FF6F25={lvl=28,scene="Granitedust Gulch",type={8,5},giver='U0B09E5C65B02AD9A'}
,q3B1E527228B9C4FA={lvl=28,scene="Pilgrim's Crossing",type={1,9}}
,q422CFB99C3E95E0A={lvl=28,scene="Demon Steps",type={9,1}}
,q5C3011E78B82C13E={lvl=28,scene="Granitedust Gulch",type={9,1}}
,q7FD95B898714C9DD={lvl=28,scene="Demon Steps",type={1,9}}
,q0BD56EFD26AFB60A={lvl=28,scene="Cloudbourne Tarn",type={1,9}}
,q57E1121C6CE64901={lvl=28,scene="Thunderwork Ridge",type={1,9}}
,q600B31B8A2A43F68={lvl=28,scene="Frayworn Rock",type={1,9}}
,q3C91218D904091FE={lvl=28,scene="Frayworn Rock",type={9,1}}
,q62AA0ADCE8764FE2={lvl=28,scene="Thunderwork Ridge",type={8},giver='U2F1153AE59BF6FB2'}
,q605EC72BF2C7168C={lvl=28,type={3,1,11},giver='U0EBB578A532BF380'}
,q55F0697D00000000={lvl=28,scene="Frayworn Rock",use={{key='I57CF8E27A73B23A0,DFE01A9A94D0AB97,,,,,,', count=1}},type={3,10,4}}
,q7126903FEFC9800C={lvl=28, grp=3,type={3,11},giver='U19AFFFCB59E38672'}
,q2A2142CAD422C144={lvl=28,type={17}}
,q5CD9DDE1AF5D5942={lvl=28,scene="Frayworn Rock",type={10,4},giver='U6B1EF81E7FDCC406'}
,q4BB779F46B0C829B={lvl=28,type={17}}
,q45593DB9729366E2={lvl=28,scene="Granitedust Gulch",type={13}}
,q087F385100000000={lvl=28,scene="Frayworn Rock",type={13}}
,q7D53007AA04B1EC4={lvl=28,type={17}}
,q3086384B00000000={lvl=28, grp=3,giver='U3D8EA30F468E8E08'}
,q67A575EC00000000={lvl=28, grp=3,giver='U466F8E012F1FF1FB'}
,q06E5C636CCA41879={lvl=28,type={17}}
,q45C28DB6FC2E7F71={lvl=28,scene="Pilgrim's Crossing",type={6},giver='U5DFE07B1586324CE'}
,q32FDDF3D00000000={lvl=28,scene="Frozen Valley",type={8,19}}
,q4C3D959067AF8209={lvl=28,scene="Demon Steps",type={10}}
,q78901127FAC5954E={lvl=28,type={3,11,1},giver='U21B7E79D161D44E4'}
,q5853E8CA298652FF={lvl=28,type={1,3,11},giver='U3E2C0E2A4DAD25C2'}
,q35E0C86A499FF920={lvl=28,type={7,17}}
,q722047A96737371F={lvl=28,scene="Rocklift",type={8},giver='U737F7C0F1C8F21A9'}
,q74AE66E88761D391={lvl=29,scene="Rock Ridge",type={8,2},giver='U3528744025BCBABE'}
,q4F7D81D500000000={lvl=29,scene="Thunderwork Ridge",type={1}}
,q37F45BED8D41E9D7={lvl=29,domain="pvp"}
,q771818278DFCCBA9={lvl=29,scene="Rock Ridge",type={6,4},giver='U42DDA3115ECCB6E0'}
,q57294EECBE0E4714={lvl=29,domain="pvp"}
,q1792139EF28AFDD5={lvl=29,scene="Rock Ridge",type={8},giver='U55A051AC332C78CD'}
,q34A302F8E80A0A8A={lvl=29,scene="Rock Ridge", grp=3,type={11},giver='U21570D0E25AA68E9'}
,q21AAD3D100000000={lvl=29,scene="Darkfire Grove",type={8}}
,q4A32FDE9DA3DF33A={lvl=29,scene="Rock Ridge",type={8},giver='U55A051AC332C78CD'}
,q0033946EA10A7F61={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q063191FF6D99EF93={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q16A8449DAEF39CE3={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q233500D4EBBA3C25={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q42435EBFA8BC3D12={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q4EEEA1519B811746={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q630440456C97F7B8={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q643CC6E93616B0C4={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q64A196DAC9488887={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q73E18129EC923D92={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q070EB6BFE22DB6A7={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q1D8DA210D8AEE641={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q3023BE96879E68A5={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q315D200FBD056366={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q31B01EC5EBDA1A19={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q1C61156CBB97622B={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q1DB55A918DD1637C={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q1E696D3A4EDC909C={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q25665210F633CCC0={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q78E3DC3E0892C345={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q042F8138005F220F={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q33EC482427E3BD0F={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q60D9AAC47FA7E6AE={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q690F8664B1C0D7BB={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q6A833D828469225A={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q236B6DB0A1F430A3={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q33F569B06CF80674={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q5BA2C34DCBE89B26={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q5CDD41BEC1B39ED7={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q6F582038453DDE38={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q1BFE6051586FED8D={lvl=29,craft={{key='I7688EE527C478C40,60D0017298166D64,,,,,,', count=7},{key='I6A70BE507B6A8CE5,24CBC3ED831A56BE,,,,,,', count=1}},type={4}}
,q3396695BEBEED05D={lvl=29,craft={{key='I7688EE527C478C40,60D0017298166D64,,,,,,', count=7},{key='I6A70BE507B6A8CE5,24CBC3ED831A56BE,,,,,,', count=1}},type={4}}
,q2869E936A367B609={lvl=29,craft={{key='I7688EE527C478C40,60D0017298166D64,,,,,,', count=8}},type={4}}
,q21D4E25801F86C9B={lvl=29,craft={{key='I7688EE527C478C40,60D0017298166D64,,,,,,', count=8}},type={4}}
,q2B1C4539D893150F={lvl=29,craft={{key='I1D0FEC14484589B4,3AD978885BCA9D1E,,,,,,', count=5}},type={25}}
,q6A17EBBE2ED69DCA={lvl=29,craft={{key='I1D0FEC14484589B4,3AD978885BCA9D1E,,,,,,', count=5}},type={25}}
,q23EE9ADA5D034C12={lvl=29,craft={{key='I15CFD4745B8CB1EF,F82C736AE9D94EF2,,,,,,', count=5}},type={25}}
,q2D9F6B55A786CB2B={lvl=29,craft={{key='I15CFD4745B8CB1EF,F82C736AE9D94EF2,,,,,,', count=5}},type={25}}
,q11CDE7E612ED873E={lvl=29,craft={{key='I0757968FBE04423B,07C590B179047773,,,,,,', count=5}},type={25}}
,q4A56CE0500EFBD97={lvl=29,craft={{key='I0757968FBE04423B,07C590B179047773,,,,,,', count=5}},type={25}}
,q5459BE5C865AF8BD={lvl=29,craft={{key='I124B4356B6E60C3A,E24021C75BB7CDE9,,,,,,', count=5}},type={25}}
,q6E1C52A0C1738658={lvl=29,scene="Perspice",craft={{key='I124B4356B6E60C3A,E24021C75BB7CDE9,,,,,,', count=5}},type={25}}
,q00D639968D376ECB={lvl=29,craft={{key='I34CEB0BBE066CF88,F7BEBB65B260D992,,,,,,', count=5}},type={25}}
,q3C938CFEEB22D853={lvl=29,scene="Perspice",craft={{key='I34CEB0BBE066CF88,F7BEBB65B260D992,,,,,,', count=5}},type={25}}
,q4B2B41B3F90D9AF1={lvl=29,craft={{key='I148838B4614A5083,41CEE4826A5D6A85,,,,,,', count=5}},type={25}}
,q6C002877758A0DE4={lvl=29,craft={{key='I148838B4614A5083,41CEE4826A5D6A85,,,,,,', count=5}},type={25}}
,q2222020DB7BC48A1={lvl=29,craft={{key='I3C7B9D3C4DA5BBC5,D7515A8654D290E3,,,,,,', count=2},{key='I2A5B88588297F522,FDBF6FBAFF09F19A,,,,,,', count=6}},type={4}}
,q0D4E8337DF792FF4={lvl=29,craft={{key='I2A5B88588297F522,FDBF6FBAFF09F19A,,,,,,', count=6},{key='I3C7B9D3C4DA5BBC5,D7515A8654D290E3,,,,,,', count=2}},type={4}}
,q27D599F190061A34={lvl=29,scene="Perspice",craft={{key='I66336F3725A2FA3C,7490EA0AF729DC82,,,,,,', count=5}},type={25}}
,q4274F01C89AA90CE={lvl=29,craft={{key='I66336F3725A2FA3C,7490EA0AF729DC82,,,,,,', count=5}},type={25}}
,q0F537AA391027F7F={lvl=29,craft={{key='I34C6ED1378D306B1,F3345AC65E4C65FA,,,,,,', count=5}},type={25}}
,q4D138FDEDCAA8316={lvl=29,craft={{key='I34C6ED1378D306B1,F3345AC65E4C65FA,,,,,,', count=5}},type={25}}
,q13D2B1BC7613F5D8={lvl=29,craft={{key='I7FBEDDCE599CC56D,CD61AB16B5685636,,,,,,', count=5}},type={25}}
,q35083514E7608F6C={lvl=29,craft={{key='I7FBEDDCE599CC56D,CD61AB16B5685636,,,,,,', count=5}},type={25}}
,q7D2BB9E0D0364944={lvl=29,craft={{key='I3C67CE4269631AC3,D501072652BC2BE6,,,,,,', count=8}},type={4}}
,q7F083027BF7136CC={lvl=29,craft={{key='I3C67CE4269631AC3,D501072652BC2BE6,,,,,,', count=8}},type={4}}
,q1326718F7E717F57={lvl=29,scene="Perspice",craft={{key='I50BAF6BB5066617C,307DF0884D8E891A,,,,,,', count=5}},type={25}}
,q1F264C41C82DBC27={lvl=29,craft={{key='I50BAF6BB5066617C,307DF0884D8E891A,,,,,,', count=5}},type={25}}
,q3AC55791D47F8A0B={lvl=29,craft={{key='I2AB2E4A584EF3A0A,EE9F3B2A3243A4E2,,,,,,', count=8}},type={4}}
,q16BD0FF2C8C7C902={lvl=29,craft={{key='I2AB2E4A584EF3A0A,EE9F3B2A3243A4E2,,,,,,', count=8}},type={4}}
,q3513725AB66F29B0={lvl=29,craft={{key='I56032B13117E7198,2FFCA93A91756D90,,,,,,', count=5}},type={25}}
,q4C3A5222FDC9CE12={lvl=29,craft={{key='I56032B13117E7198,2FFCA93A91756D90,,,,,,', count=5}},type={25}}
,q5C795D86E66F935C={lvl=29,craft={{key='I2AB2E4A584EF3A0A,EE9F3B2A3243A4E2,,,,,,', count=4},{key='I3C67CE4269631AC3,D501072652BC2BE6,,,,,,', count=4}},type={4}}
,q20651348E2A4671D={lvl=29,craft={{key='I2AB2E4A584EF3A0A,EE9F3B2A3243A4E2,,,,,,', count=4},{key='I3C67CE4269631AC3,D501072652BC2BE6,,,,,,', count=4}},type={4}}
,q0AE17C1D13A28DB6={lvl=29,scene="Perspice",craft={{key='I179286939CFF8301,692DC265762C8A4A,,,,,,', count=5}},type={25}}
,q5C8B89D12C5C7DE3={lvl=29,craft={{key='I179286939CFF8301,692DC265762C8A4A,,,,,,', count=5}},type={25}}
,q14A819A6C9FB5461={lvl=29,craft={{key='I2A5B88588297F522,FDBF6FBAFF09F19A,,,,,,', count=8}},type={4}}
,q3466851813617A4A={lvl=29,craft={{key='I2A5B88588297F522,FDBF6FBAFF09F19A,,,,,,', count=8}},type={4}}
,q0645DE71CE5B0D1E={lvl=29,craft={{key='I7688EE527C478C40,60D0017298166D64,,,,,,', count=7},{key='I019A068E5473697B,3F13E17E54337221,,,,,,', count=1}},type={4}}
,q351B6D5AB64C439A={lvl=29,craft={{key='I7688EE527C478C40,60D0017298166D64,,,,,,', count=7},{key='I019A068E5473697B,3F13E17E54337221,,,,,,', count=1}},type={4}}
,q2A006232B0C25DA8={lvl=29,craft={{key='I16114350D5873CD6,F602BF537DD8D8BD,,,,,,', count=4},{key='I2A5B88588297F522,FDBF6FBAFF09F19A,,,,,,', count=4}},type={4}}
,q7EF39960757FE1C1={lvl=29,craft={{key='I16114350D5873CD6,F602BF537DD8D8BD,,,,,,', count=4},{key='I2A5B88588297F522,FDBF6FBAFF09F19A,,,,,,', count=4}},type={4}}
,q23D5E49700000000={lvl=29,scene="Stonecrest",type={1}}
,q5B6DF3C200000000={lvl=29,scene="Broken Toe",type={3,4}}
,q62CE613700000000={lvl=29,scene="Broken Toe",type={10}}
,q1F4F326E9B4DE890={lvl=29,domain="pvp"}
,q3116406BE146B3CE={lvl=29,domain="pvp"}
,q113958CBD08E48DB={lvl=29,scene="Rock Ridge", grp=3,type={11},giver='U5B8019D92CB7EA8B'}
,q4F1B86969565D765={lvl=29,scene="Whitefall",type={8},giver='U6BCB4F815239A9B7'}
,q39459276CADF47A9={lvl=29,scene="Rock Ridge",type={2},giver='U3528744025BCBABE'}
,q1679BC3C1835250A={lvl=29,scene="Whitefall",type={15},giver='U63A24C154BFA20DA'}
,q5A5613E1B7E3B62B={lvl=29,scene="Whitefall",type={8},giver='U304D84E64BE18CA1'}
,q4BAF5643B99466E6={lvl=29,scene="Mage's Mark",type={3,1}}
,q37EA0A63C4BB71F4={lvl=29,scene="Whitefall",type={8}}
,q3DBAC71300000000={lvl=29,scene="Riverfell",domain="pvp",type={1}}
,q361D81B448AB386C={lvl=29,scene="Rock Ridge",type={1,2},giver='U5B8019D92CB7EA8B'}
,q6EE50AD777D0115C={lvl=29,domain="pvp"}
,q0115E7FB829DB6D6={lvl=29,scene="Rock Ridge",type={1,10},giver='U21614D83345AE255'}
,q0799FB34278E7BFC={lvl=29,scene="Whitefall",type={8},giver='U304D84E64BE18CA1'}
,q05ED85FF00000000={lvl=29,scene="Granitedust Gulch",use={{key='I6C2C8852DCBED1C8,13D7C2A8F89A4BA8,,,,,,', count=1}},type={3,10}}
,q7731791EDAADDE6F={lvl=29,scene="Darkfire Grove",type={4},giver='U2875BDF63882B395'}
,q799D983DFF1E9B69={lvl=29,scene="Mage's Mark",type={3,4}}
,q78FD9197A0A5EAFB={lvl=29,scene="Whitefall",type={8},giver='U6BCB4F815239A9B7'}
,q214F4DF8A42D39FF={lvl=29,scene="Whitefall",type={8},giver='U6BCB4F815239A9B7'}
,q209AA7C5AFA4DDF4={lvl=29,scene="Darkfire Grove",type={2,10}}
,q5E2340AD00000000={lvl=29,scene="Rock Ridge",type={10}}
,q13D6AEE7FA4C5026={lvl=29,scene="Darkfire Grove",type={4},giver='U0AD4E3AB3C088303'}
,q2A61C456A5352FC7={lvl=29,scene="Mage's Mark",type={4}}
,q232C908426EF4018={lvl=29,scene="Mage's Mark",type={4,3}}
,q45C87147C182CC55={lvl=29,scene="Mage's Mark",type={3,4}}
,q7A58869B5CDEC447={lvl=29,scene="Mage's Mark",type={1,3}}
,q1D4296CDCB2B473E={lvl=29,scene="Whitefall",type={13,4},giver='U3333102C5C15083E'}
,q60B381978C68BF7D={lvl=29,scene="Rock Ridge",type={1,10},giver='U2220D1955B390457'}
,q7BB98B3E4A86C0AF={lvl=29,scene="Darkfire Grove",type={1,9}}
,q2EF0E8DD6CC6E298={lvl=29,scene="Mage's Mark",type={9,1}}
,q18DDAAC05A0780CE={lvl=29,scene="Rock Ridge",type={9,1}}
,q45B9C2FD5DCE9017={lvl=29,scene="Darkfire Grove",type={9,1}}
,q2A51EDE05A7810B3={lvl=29,scene="Mage's Mark",type={1,9}}
,q62D6458A624B6FC9={lvl=29,scene="Darkfire Grove",type={9,1}}
,q3D45B0C100000000={lvl=29,scene="Mage's Mark",type={13}}
,q6235E379FE4788DC={lvl=29,scene="Darkfire Grove",type={6},giver='U0AD4E3AB3C088303'}
,q762FE7C0E4D1DACD={lvl=29,scene="Rock Ridge",type={4},giver='U3C7C83EB69D776E5'}
,q7E66817900000000={lvl=29,scene="Darkfire Grove",type={4}}
,q0044D665BEA1FBE8={lvl=29,scene="Mage's Mark",type={3,4}}
,q19ADA7CD00000000={lvl=29,scene="Rock Ridge",type={1}}
,q0F7ABA8D00000000={lvl=29,scene="Broken Toe",type={10,4}}
,q6EAB848800000000={lvl=29,scene="Mage's Mark",type={13}}
,q40A78B8D00000000={lvl=29,scene="Darkfire Grove",type={1}}
,q77B3489800000000={lvl=29,scene="Ironroot Draw",domain="pvp",type={1}}
,q069246FF8B846F3A={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q0D45BDADB9A45E29={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q37433426158F8EE2={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q37744065F8771676={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q47AE926D9955B807={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q559287FACC26C84C={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q58DBFDFB1A059544={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q58F696FF9A925541={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q59EFB81A2272B344={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q74722746CAD82741={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q23FB364AF92CCEB0={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q2899AD14713D3903={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q55133EF5DE4CE551={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q054ADFA70C24C453={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q1C745B616A37EDB8={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q279614349A7D793A={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q35D1B6F1A5432703={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q4155B00D8D258B6B={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q7569533C73FAF5E2={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q77409D7A1272E48A={lvl=29,domain="guild",giver='U75FBE0CA773819E9'}
,q48E90089D873ADC7={lvl=29,scene="Rock Ridge",type={4},giver='U66B0A55508059617'}
,q0F18EEA541C4A312={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q29B856331D752831={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q46026BB59CADAD4F={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q4BDB5E018AC37023={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q57064CE5CB4F4418={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q5A8C3EE26290BADC={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q67583F253F94E0DF={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q79DAA01E939D2317={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q7B385C23CE346CD9={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q7E3C9C9BD0BDEDDA={lvl=29,domain="guild",giver='U501D431647F9ADB3'}
,q6304B03A9B392118={lvl=29,scene="Darkfire Grove",type={13}}
,q0E783E8B7172ACF2={lvl=29,scene="Rock Ridge",type={4},giver='U55A051AC332C78CD'}
,q3F984DEA00000000={lvl=29,scene="Broken Toe",type={4,3}}
,q6198D615C6BD4DAE={lvl=29,domain="pvp"}
,q646ABA0AA35DF864={lvl=29,scene="Rock Ridge",type={1,2},giver='U21570D0E25AA68E9'}
,q7125E4536400BAA8={lvl=29,scene="Mage's Mark",type={4}}
,q26FD003600000000={lvl=29,scene="Granitedust Gulch",use={{key='I15A54CD237FE9B8B,F69C026DDD9692D2,,,,,,', count=1}},type={3,10}}
,q409332DE00000000={lvl=29,scene="Darkfire Grove"}
,q55AEC65FAD825343={lvl=29,scene="Whitefall",type={2,15,1},giver='U304D84E64BE18CA1'}
,q34D387601A8AC4E8={lvl=29,scene="Whitefall",type={8},giver='U3333102C5C15083E'}
,q4A344DB635D62905={lvl=29,scene="Rock Ridge",type={8},giver='U21570D0E25AA68E9'}
,q0ED842B725A56EC8={lvl=29,scene="Rock Ridge",type={8}}
,q29585BE80825AFC4={lvl=29,scene="Whitefall",type={8},giver='U3333102C5C15083E'}
,q633606FB8924B935={lvl=29,scene="Rock Ridge",type={1,15},giver='U2F1153AE59BF6FB2'}
,q4C2E55E700000000={lvl=29,scene="Darkfire Grove",type={3,4}}
,q6B534F5C00000000={lvl=29,scene="Frayworn Rock",type={3,1,10,6}}
,q660BE001C3BEC2CA={lvl=29,scene="Darkfire Grove",type={4},giver='U3AB93351773C540D'}
,q4ADF2F2DA65573A7={lvl=30,scene="Steampike Pit",type={4}}
,q2EDF05ACCBC4160A={lvl=30,type={8},giver='U21570D0E25AA68E9'}
,q7BCF9CCF128328ED={lvl=30,type={8},giver='U2FC08E9446C6F348'}
,q11C85A26E6B64DBD={lvl=30,scene="Chancel of Labors",type={2},giver='U4AAC1CE610FC821F'}
,q5F2FA7761013D2EC={lvl=30,scene="Chancel of Labors",type={3,2}}
,q19E0673C20064631={lvl=30,type={4},giver='U69BBEED70FFE4F7F'}
,q69183A7D8A393042={lvl=30,scene="Chancel of Labors",type={8,5},giver='U6BCB4F815239A9B7'}
,q0CBAD1BF96591597={lvl=30,type={4},giver='U6B4B73484A2794E4'}
,q17E70C7ED0EBDAEB={lvl=30,scene="Scarwood Ridge",type={6},giver='U42398A605A2E4004'}
,q07DFA33686082CCB={lvl=30,craft={{key='I6F9D777C3F1F4324,1B2497009C5BE375,,,,,,', count=4}},type={25}}
,q449866E8C9DED173={lvl=30,craft={{key='I6F9D777C3F1F4324,1B2497009C5BE375,,,,,,', count=4}},type={25}}
,q07169435AC48EC90={lvl=30,craft={{key='I6F9D777E784C5487,17531697AC82C98F,,,,,,', count=4}},type={25}}
,q30D13E1ABC1DB8EE={lvl=30,craft={{key='I6F9D777E784C5487,17531697AC82C98F,,,,,,', count=4}},type={25}}
,q079A226A5AB0E93E={lvl=30,craft={{key='I6F9D777D3BEE7D69,CA0B1E8022EFE1D9,,,,,,', count=4}},type={25}}
,q22115E6AECFCEC25={lvl=30,craft={{key='I6F9D777D3BEE7D69,CA0B1E8022EFE1D9,,,,,,', count=4}},type={25}}
,q614BB34B00000000={lvl=30,type={7}}
,q6B8BC3034EC3FBB3={lvl=30,giver='U466E16C81F1529C7'}
,q3A7C97C0EFFAEE21={lvl=30,scene="Stone Grove",type={6},giver='U70C6331A34EEC972'}
,q561B736712BB1443={lvl=30,scene="Howling Plateau",type={4},giver='U17CB2ADC49572542'}
,q04ABE65DD09D3316={lvl=30,type={4},giver='U377FC3B56E6C575F'}
,q0F731A90D2DF18FB={lvl=30,type={4},giver='U11AFB5F042C37BCD'}
,q62ECFC03E553462B={lvl=30,type={13}}
,q433DF71B030829E4={lvl=30,type={13}}
,q46AAE1E328ABBF45={lvl=30,giver='U2E5D64B26DF429FC'}
,q7ABCA13EE5E7047F={lvl=30,scene="Scarwood Ridge",type={1},giver='U658F98282F2677D9'}
,q4BF8FB54E221D430={lvl=30,scene="Howling Plateau",type={4},giver='U17CB2ADC49572542'}
,q3F7D15D468C0E691={lvl=30,giver='U466E16C81F1529C7'}
,q6BCA1F5CCFDF67CA={lvl=30,giver='U466E16C81F1529C7'}
,q6BE58AB9341BECC2={lvl=30,scene="Chancel of Labors",type={8},giver='U4AAC1CE610FC821F'}
,q106FAD067244A6BD={lvl=30,domain="ia"}
,q19205AAF5848721A={lvl=30,domain="ia"}
,q2A99F09B0BB9A166={lvl=30,domain="ia"}
,q3AACA1622BABF9E4={lvl=30,domain="ia"}
,q6DF886F36945E277={lvl=30,domain="ia"}
,q09253EA3B1EDBB3D={lvl=30,type={4},giver='U280651E7448A7BE9'}
,q6A6AF943406F2181={lvl=30,type={17,7}}
,q347F3D018C709FE2={lvl=30,type={4},giver='U13A4DDC91D5A9CFA'}
,q791F9E0D6D7AD0AE={lvl=30,giver='U037A1FAC673492F2'}
,q04F8FFEEC49AEEED={lvl=30,type={4},giver='U6C926E295B084F77'}
,q72E6EA700E6568DA={lvl=30,type={4},giver='U1992AEF41E5A52CF'}
,q7FD99A3FB1B57789={lvl=30,type={13}}
,q241127E875F78383={lvl=30,type={13}}
,q75041C81D6B64D27={lvl=30,type={4},giver='U5F41BCCB53B71223'}
,q11234C425DEBDF72={lvl=30,scene="Stone Grove",type={4},giver='U7B55E275737A968F'}
,q5F22FCD795F3EB05={lvl=30,giver='U2E5D64B26DF429FC'}
,q1ABCEAC430FA873B={lvl=30,scene="Chancel of Labors",type={3,2}}
,q0808317062A2EAEE={lvl=30,giver='U2E5D64B26DF429FC'}
,q5503C809047C6AB1={lvl=30,scene="Scarwood Lift Summit",type={1},giver='U218B1A597EEE334C'}
,q7B33AFE920562B1D={lvl=30,scene="Scarwood Ridge",type={6},giver='U7B28F39D72656434'}
,q2C14D53F3895DD0B={lvl=30,scene="Chancel of Labors",type={8,24},giver='U068B93E466090425'}
,q4F749E1008A727F0={lvl=30,scene="Infested Range",type={10},giver='U42398A605A2E4004'}
,q1F0353A82177D910={lvl=30,scene="Steampike Pit",type={4,10,1},giver='U068B93E466090425'}
,q3044EA084AE47F3C={lvl=30,type={13}}
,q6D675D177C08490F={lvl=30,giver='U4E0D52D664228852'}
,q58AA8270C3489038={lvl=30,type={4},giver='U5FC6586627C82692'}
,q4B7E857D921040D6={lvl=30,scene="Stone Grove",type={1},giver='U64C087643E91820D'}
,q5DC19A0CCCF78E80={lvl=30,scene="Stone Grove",type={8},giver='U40C8CD8A3929067D'}
,q0B8A0270940C4B16={lvl=30,type={5,18},giver='U056D571065EA1A65'}
,q34E49EBA683AF03B={lvl=30,type={4},giver='U11AFB5F042C37BCD'}
,q3799E4468F695AF8={lvl=30,type={4},giver='U377FC3B56E6C575F'}
,q396A0F1ECD815D67={lvl=30,scene="Chancel of Labors",type={8},giver='U068B93E466090425'}
,q6388B745A5A1E19A={lvl=30,type={8},giver='U5B8019D92CB7EA8B'}
,q58D137FFF77795F1={lvl=30,scene="Chancel of Labors",type={3,4}}
,q602FF2D0F0EA9D50={lvl=30,scene="Stone Grove",type={13}}
,q0A18554A8CAE1B8E={lvl=30,scene="Stone Grove",type={13}}
,q4A2D2562A9F1E7EC={lvl=30,scene="Scarwood Lift Summit",type={13}}
,q3DEB2A531E405D63={lvl=30,scene="Howling Plateau",type={8,5},giver='U2A435EC801F1FE63'}
,q629D7699CF6F0DA6={lvl=30,giver='U27D677941EA6DA74'}
,q1D79CB7AD9C8F064={lvl=30,scene="Scarwood Ridge",type={6,1},giver='U658F98282F2677D9'}
,q1EA370D700000000={lvl=30,scene="Scarwood Ridge",type={3}}
,q348C282915DF8DA1={lvl=30,scene="Scarwood Ridge",type={4},giver='U42398A605A2E4004'}
,q7E4D353900000000={lvl=30,scene="Howling Plateau",type={3}}
,qFCAF948D5B5A0482={lvl=30,scene="Steampike Pit",type={1,9}}
,q51DEC71E89108FAB={lvl=30,scene="Steampike Pit",type={9,1}}
,q6F742F4D3838A90F={lvl=30,scene="Steampike Pit",type={9,1}}
,q51827D5BB5FCC9A8={lvl=30,scene="Cloudbourne Tarn",type={1,9}}
,q1303D07DA2B7DBFC={lvl=30,scene="Cloudbourne Tarn",type={1,9}}
,q01BFC4A7C4A07608={lvl=30,type={13}}
,q0BF01677EA60C4B1={lvl=30,type={13}}
,q2C220C69C0A6582D={lvl=30,scene="Chancel of Labors",type={8}}
,q56F308C2A08F3506={lvl=30,scene="Stone Grove",type={6},giver='U7B55E275737A968F'}
,q4E9A9F34A243F0C7={lvl=30,scene="Stone Grove",type={13}}
,q166A1347BC1E7AED={lvl=30,scene="Stone Grove",type={13}}
,q27B0353945AB1F5D={lvl=30,scene="Scarwood Lift Summit",type={13}}
,q1DDFD62D9F9CFD7C={lvl=30,scene="Scarwood Ridge",type={6},giver='U7B28F39D72656434'}
,q1730DCAAEBC69D0A={lvl=30,giver='U4E0D52D664228852'}
,q2BC3C78B840031DE={lvl=30,scene="Scarwood Ridge",type={4},giver='U4A162136236B0F43'}
,q01E35D750CB78F32={lvl=30,domain="ia"}
,q0A4A7A0E5F89A0F0={lvl=30,domain="ia"}
,q35143C1226866484={lvl=30,domain="ia"}
,q3C695C6765EA021E={lvl=30,domain="ia"}
,q76EBDBEA232C744F={lvl=30,domain="ia"}
,q2045289C9205906A={lvl=30,type={13}}
,q04EECA187786C507={lvl=30,scene="Keenblade Mill",type={13},giver='U42398A605A2E4004'}
,q2E40E4BC4984AFB1={lvl=30,domain="ia",type={1}}
,q2EAAC5A41626EB4D={lvl=30,domain="ia",type={1}}
,q59D2CD3D5432BD04={lvl=30,domain="ia",type={1}}
,q78388801388A64BF={lvl=30,domain="ia",type={1}}
,q79440F407774D2E2={lvl=30,domain="ia",type={1}}
,q10D9579C7D8A2353={lvl=30,scene="Stone Grove",type={10},giver='U70C6331A34EEC972'}
,q3158E1B011730360={lvl=30,domain="ia"}
,q5211E9552BCADD55={lvl=30,domain="ia"}
,q608F5E695597EAC0={lvl=30,domain="ia"}
,q661824EB0C4B2386={lvl=30,domain="ia"}
,q66C7AD5553EA6B34={lvl=30,domain="ia"}
,q62F0C817B71955DA={lvl=30,scene="Infested Range",type={4},giver='U42398A605A2E4004'}
,q2574BC13CCD138D5={lvl=30,scene="Infested Range",type={1},giver='U658F98282F2677D9'}
,q31D9F00DDBD678D1={lvl=30,scene="Chancel of Labors",type={3,2}}
,q17D7793620539A7F={lvl=30,domain="ia",type={1}}
,q4389929B1D254688={lvl=30,domain="ia",type={1}}
,q527024BA1B0E3BDA={lvl=30,domain="ia",type={1}}
,q59CA79C120E557A9={lvl=30,domain="ia",type={1}}
,q72FEEE443F43569A={lvl=30,domain="ia",type={1}}
,q54F7C2A134A3ACD5={lvl=30,scene="Howling Plateau",type={6},giver='U40C8CD8A3929067D'}
,q08826F074D50BA73={lvl=30,domain="ia",type={1}}
,q27EB94A471238F8B={lvl=30,domain="ia",type={1}}
,q45D063D39EEAECBA={lvl=30,scene="Howling Plateau",type={1},giver='U3880A53725A7E8DC'}
,q4C62E66133BCB84B={lvl=30,domain="ia",type={1}}
,q57DDDFB059332410={lvl=30,domain="ia",type={1}}
,q6B96BE254346D370={lvl=30,domain="ia",type={1}}
,q0187F38076BD8830={lvl=30,domain="ia",type={1}}
,q0C7F020171A94B42={lvl=30,domain="ia",type={1}}
,q2CA5F48201B356CA={lvl=30,domain="ia",type={1}}
,q6CC907B507DEFF36={lvl=30,domain="ia",type={1}}
,q711BED652FC5E7AF={lvl=30,domain="ia",type={1}}
,q6BD54B9800000000={lvl=30, grp=3,type={7}}
,q48F891339110A77B={lvl=30,type={13}}
,q7F3BB68D66FC3221={lvl=30,type={13}}
,q1C93C49E0BC81E4D={lvl=30,domain="guild"}
,q597F459B987E1905={lvl=30,domain="guild"}
,q6D48907B7B50C865={lvl=30,domain="guild"}
,q797C48EF550B803D={lvl=30,domain="guild"}
,q58D40F55B6297C2A={lvl=30,giver='U662249C758928FB1'}
,q6F3CD25295568341={lvl=30,scene="Howling Plateau",type={4},giver='U2170AEF44B434507'}
,q1264EEFC76320A52={lvl=30,giver='U59D62A616D4A4C50'}
,q7DB99D17BDAD7F88={lvl=30,giver='U037A1FAC673492F2'}
,q6873131C58DF8855={lvl=30,type={5,18},giver='U03A3E8511875EF5A'}
,q2E7140C2C6669054={lvl=30,type={18,4},giver='U59D62A616D4A4C50'}
,q20B68F68A63D9A79={lvl=30,type={18,16,1}}
,q700CE1DDDCA6EC36={lvl=30,scene="Howling Plateau",type={4},giver='U698B2B6654AA4DE3'}
,q09A3043588C5CF0B={lvl=30,scene="Chancel of Labors",type={2},giver='U4AAC1CE610FC821F'}
,q1E16DB80963A2FC9={lvl=30,scene="Chancel of Labors",type={2,3}}
,q182D88DF52E810FD={lvl=30,domain="ia"}
,q37C6B2F15EF96B17={lvl=30,domain="ia",type={1}}
,q3FFC4CF93848D824={lvl=30,domain="ia"}
,q42BEAE7050232DA9={lvl=30,domain="ia"}
,q5ED1253B64A3A726={lvl=30,domain="ia",type={1}}
,q645DD2CC3920048F={lvl=30,domain="ia"}
,q6D775BB963CD1A21={lvl=30,domain="ia",type={1}}
,q70452FAE51A9830B={lvl=30,domain="ia",type={1}}
,q7B9436FC137BC570={lvl=30,domain="ia"}
,q7ED0918B3A6F8CA4={lvl=30,domain="ia",type={1}}
,q69A893B6DE06814F={lvl=30,scene="Stone Grove",type={4},giver='U6F64685012FA03D9'}
,q2CA3A02A802184E6={lvl=30}
,q4A409674CD4FD3D1={lvl=30}
,q49999E37E2F0E6AD={lvl=30,scene="Infested Range",type={6},giver='U4A162136236B0F43'}
,q37593658C2A52CDA={lvl=30,scene="Chancel of Labors",type={3,4}}
,q1C97A4BFF1009B9C={lvl=30,scene="Scarwood Lift Summit",type={8},giver='U218B1A597EEE334C'}
,q7562A8264E16EAF7={lvl=31,scene="Icewatch Ridge",type={20},giver='U1DD898E147D8A091'}
,q2F138DF828CF23DC={lvl=31,scene="Keenblade Mill",type={6},giver='U15B840133FE34DAA'}
,q402D6E09CFB79008={lvl=31,scene="Granite Watch",type={10},giver='U46C8598E00BCB137'}
,q72F29698AC3AC561={lvl=31,scene="Kain's Command",type={8},giver='U451793B13DE1F508'}
,q0D4B9AD5014B5721={lvl=31,scene="Scarhide Waste",type={4},giver='U4146049C3EA6E2D7'}
,q11673280212649C8={lvl=31,domain="ia"}
,q21CB16EF1265420F={lvl=31,domain="ia"}
,q487C0593008F470C={lvl=31,domain="ia"}
,q7D67462A1B1ECA85={lvl=31,domain="ia"}
,q7EA97F17392CDD50={lvl=31,domain="ia"}
,q471F8B30D0EE995E={lvl=31,scene="Granitewood Haunt",type={1,4,6},giver='U009BBB8963E65E55'}
,q55D6E82BD7DF456C={lvl=31,scene="Granitewood Haunt",type={4},giver='U009BBB8963E65E55'}
,q008E5D2C00000000={lvl=31,scene="Oathbound Pass",type={8}}
,q3B19EAD000000000={lvl=31,scene="Whitefall",type={8}}
,q19BBD35F66723907={lvl=31,scene="Keenblade Barricade",type={8},giver='U16B7302D37AC3B46'}
,q793F30A6AB2955FE={lvl=31,scene="Kain's Command",type={10},giver='U1425EA2B4D02EA31'}
,q15219CAA6F027AD7={lvl=31,scene="Kain's Command",type={8},giver='U3E8DD51207475AD8'}
,q511EF4FCB66CF6E0={lvl=31,scene="Keenblade Mill",type={13}}
,q4ECFE10BEBFD4F63={lvl=31,scene="Oathbound Pass",type={8,15,4},giver='U7E786817169EA06E'}
,q152383ACC719D293={lvl=31,scene="Keenblade Mill",type={1},giver='U46C8598E00BCB137'}
,q3A0EA567CF90EB94={lvl=31,scene="Icewatch Ridge",type={8}}
,q6089CD9529995950={lvl=31,scene="Granitewood Haunt",type={8}}
,q0008D779CC70E3C4={lvl=31,scene="Keenblade Mill",use={{key='I4740AF5483650935,C9C2F5EBF6A4607F,,,,,,', count=4}},type={10},giver='U763DAE5D26889EB0'}
,q637A0CDDC834CE8E={lvl=31,scene="Keenblade Mill",type={4,3}}
,q030AF73965B12500={lvl=31,domain="ia"}
,q089AF06375704908={lvl=31,domain="ia"}
,q5B3AC128207BB6BD={lvl=31,domain="ia"}
,q77847DC23CFB6174={lvl=31,domain="ia"}
,q162297941E822A3B={lvl=31,scene="Scarhide Waste",type={4,1,10},giver='U065850CD1BF367F3'}
,q6CD8E325C9CCECA3={lvl=31,scene="Keenblade Mill",type={10},giver='U2F94B33C5A57C032'}
,q3439E02AB6E96954={lvl=31,scene="Kain's Command",type={5},giver='U324EA69B65ACB13D'}
,q2259CFECDA336DBD={lvl=31,scene="Keenblade Mill",type={20},giver='U685F1FAB49336D53'}
,q4DAA5E3C00000000={lvl=31,scene="Oathbound Pass",type={8}}
,q7416611BD91E5998={lvl=31,scene="Granitewood Haunt",type={13}}
,q5CDE4E154287495B={lvl=31,scene="Granitewood Haunt",type={13}}
,q19B0C0DCC497F97D={lvl=31,scene="Granitewood Haunt",type={13}}
,q4A10CB7DFC83CB9C={lvl=31,scene="Keenblade Mill",type={13}}
,q36482FE9F5C02D67={lvl=31,scene="Granitewood Haunt",type={13}}
,q442E37487E30F530={lvl=31,scene="Granitewood Haunt",type={4},giver='U37F267547265725C'}
,q095667D7FCE164D5={lvl=31,scene="Icewatch Ridge",use={{key='I3230AB6240D887C4,3205DA2249DE3AB0,,,,,,', count=1}},type={4,10},giver='U7B78438145C33897'}
,q2FBAB17FBE61A6C4={lvl=31,scene="Granite Watch",use={{key='I7BACF4372F467480,497357FD00D3A08A,,,,,,', count=1}},type={4,1,10},giver='U009BBB8963E65E55'}
,q0C896BBEC36238FB={lvl=31,scene="Kain's Command",type={8},giver='U797853A9602E2FF3'}
,q5A447F2DCFAE36C8={lvl=31,scene="Keenblade Mill",type={10},giver='U0E7922511F3849E0'}
,q0695B5BE7873B062={lvl=31,domain="ia",type={1}}
,q2D2A083139983372={lvl=31,domain="ia",type={1}}
,q39EA59F606804F05={lvl=31,domain="ia",type={1}}
,q5122A0706477AD6F={lvl=31,domain="ia",type={1}}
,q72FAB0BE6BA7E3CB={lvl=31,domain="ia",type={1}}
,q0AB0D5D0C4492D96={lvl=31,scene="Granite Watch",type={8},giver='U009BBB8963E65E55'}
,q4ADC57CA1B33961B={lvl=31,domain="ia"}
,q4FF3BB5A7F9D802C={lvl=31,domain="ia"}
,q537D1D71319BEADB={lvl=31,domain="ia"}
,q60ECF62629B75E4E={lvl=31,domain="ia"}
,q6B9383E12C560EEF={lvl=31,domain="ia"}
,q4156ED5AC6B62531={lvl=31,scene="Scarhide Waste",type={4,1},giver='U4146049C3EA6E2D7'}
,q7823A78F1489E356={lvl=31,scene="Whitefall",use={{key='I56A5551C41B77C42,457D86080AA0442E,,,,,,', count=1}},type={8,10},giver='U068B93E466090425'}
,q264AC6DAA91AA49E={lvl=31,scene="Icewatch Ridge",type={1,9}}
,q49920022BF99FF40={lvl=31,scene="Icewatch Ridge",type={1,9}}
,q0B916D988BAEE028={lvl=31,scene="Scarhide Waste",type={4,1},giver='U0883E0DD62A032CA'}
,q2970765DD73A31C5={lvl=31,scene="Stone Grove",type={8},giver='U7B55E275737A968F'}
,q5A15A91045E7C367={lvl=31,domain="ia"}
,q79150B6645B46ACC={lvl=31,scene="Granite Watch",type={4},giver='U009BBB8963E65E55'}
,q139B80CF06AF2DB5={lvl=31,domain="ia",type={1}}
,q26FD986305E56A39={lvl=31,domain="ia",type={1}}
,q2EE2FE927806576D={lvl=31,domain="ia",type={1}}
,q4AF6D2978BDC170B={lvl=31,scene="Kain's Command",type={1},giver='U47E6ACF968A12097'}
,q50AB573A27C89EB0={lvl=31,domain="ia",type={1}}
,q6D90FDC15E3861C7={lvl=31,domain="ia",type={1}}
,q793B7C3C801E6E57={lvl=31,scene="Keenblade Mill",use={{key='I6186CC36A2244D35,AEDF02089A4E4D0F,,,,,,', count=5}},type={10},giver='U2F94B33C5A57C032'}
,q77260A11DE1A0DDC={lvl=31,scene="Keenblade Mill",type={1,3}}
,q4A3668752839A143={lvl=31,scene="Perspice",type={1,3}}
,q7B29BFD82CC68362={lvl=31,scene="Keenblade Mill",type={6},giver='U763DAE5D26889EB0'}
,q075248EC8F878BF2={lvl=31,scene="Granitewood Haunt",type={13}}
,q35A0C93C3AAE5225={lvl=31,scene="Granitewood Haunt",type={13}}
,q273F06CC9D6E6700={lvl=31,scene="Granitewood Haunt",type={13}}
,q404ECE6AC0DE0C9E={lvl=31,scene="Keenblade Mill",type={13}}
,q5883C4D4DE1E1C14={lvl=31,scene="Granitewood Haunt",type={13}}
,q7A3F10CC01B93BB9={lvl=31,scene="Perspice",type={4,3}}
,q050DFF33C18E2811={lvl=31,scene="Keenblade Mill",type={6},giver='U16B7302D37AC3B46'}
,q33BE47F35FE86D94={lvl=31,scene="Keenblade Mill",type={8},giver='U4FC8DDF7690EC38C'}
,q1FFB486003DBF51B={lvl=31,scene="Scarwood Lift Summit",type={8},giver='U0E21460C6B40346A'}
,q1A24615F838939F2={lvl=31,scene="Granitewood Haunt",type={4},giver='U6BCA59EB7628DB33'}
,q0EA031F97E8599FC={lvl=31,scene="Icewatch Ridge",type={4}}
,q06796A74B14BE1A5={lvl=31,scene="Granitewood Haunt",type={10},giver='U5AA248395EE1ADE7'}
,q732F49F06472D4C5={lvl=31,scene="Keenblade Mill",type={4},giver='U46C8598E00BCB137'}
,q20063D812717E5EA={lvl=31,domain="ia",type={1}}
,q2EEFCAC703B31FDD={lvl=31,domain="ia",type={1}}
,q43CB3576223FE9A8={lvl=31,domain="ia",type={1}}
,q66AEB0482577DBD5={lvl=31,domain="ia",type={1}}
,q6DC7D6C919FDFE28={lvl=31,domain="ia",type={1}}
,q40CB2236B13B4531={lvl=31,scene="Kain's Command",type={5},giver='U47E6ACF968A12097'}
,q30D0E47F44E6AAB4={lvl=31,domain="ia"}
,q3C5108779BA4DEED={lvl=31,scene="Kain's Command",type={4},giver='U70BD46AE442E035A'}
,q465BB1787F7653B9={lvl=31,domain="ia"}
,q47C258587DECCB61={lvl=31,domain="ia"}
,q4CB89C391C5EA2EE={lvl=31,domain="ia"}
,q53C59F1C5DE6EEE1={lvl=31,domain="ia"}
,q0925D075DE7A2839={lvl=31,scene="Keenblade Mill",type={8},giver='U0E912CAF2AAA719A'}
,q212823E6540732D2={lvl=31,domain="ia",type={2,22}}
,q66F2A3291200324C={lvl=31,domain="ia",type={2,22}}
,q69E87A41A8A0DC0C={lvl=31}
,q723E1E3D8AF37E0F={lvl=31,type={17,7}}
,q017A9B1760E0CEDE={lvl=31,domain="ia",type={1}}
,q0C5608D5541F0EDF={lvl=31,domain="ia",type={1}}
,q2660A9763C45A5B5={lvl=31,domain="ia",type={1}}
,q3A07D66B66DA84CD={lvl=31,domain="ia",type={1}}
,q7E03889247FA68C5={lvl=31,domain="ia",type={1}}
,q483932E16BF38B5A={lvl=31,scene="Kain's Command",type={4},giver='U251D58BC4491A661'}
,q4D6057B4803ECF74={lvl=31,scene="Granite Watch",type={4},giver='U37F267547265725C'}
,q0A66DAAE20A316B9={lvl=31,domain="ia"}
,q0D6E4A5E710BC96D={lvl=31,domain="ia"}
,q0E5EA42627C34074={lvl=31,domain="ia"}
,q27A2061D2C1D27C2={lvl=31,domain="ia"}
,q46230D020698659E={lvl=31,domain="ia"}
,q14EF3C11856756AD={lvl=31,scene="Keenblade Mill",type={10},giver='U46C8598E00BCB137'}
,q5942272B03B3AF8D={lvl=31,scene="Keenblade Mill",type={10,3},giver='U16B7302D37AC3B46'}
,q4A82929600000000={lvl=31, grp=3,giver='U466F8E012F1FF1FB'}
,q7C6DFAB700000000={lvl=31, grp=3,giver='U3D8EA30F468E8E08'}
,q6764C7A8B4CE6BBF={lvl=32,scene="Icewatch Outpost",type={13}}
,q4A6B6449935E9D86={lvl=32,scene="Icewatch Outpost",type={8},giver='U0652AAB57EF7EC80'}
,q26F68A0300000000={lvl=32,scene="Exile's Den",type={13}}
,q058AB3AFCB418F1D={lvl=32,scene="Iron Fall",type={10},giver='U3122C6BB35D945FC'}
,q0A5FC70C2701635D={lvl=32,domain="ia",type={1}}
,q33B0A2D04DD858EE={lvl=32,domain="ia",type={1}}
,q51197ED03538F7B0={lvl=32,domain="ia",type={1}}
,q73E318591EF2DFB9={lvl=32,domain="ia",type={1}}
,q7FFEE99A65D5F13A={lvl=32,domain="ia",type={1}}
,q6B6C8D0873BACB74={lvl=32,scene="Heroes Stand",type={8},giver='U2798B3D1093CB199'}
,q418C852400000000={lvl=32,scene="Exile's Den",type={4}}
,q179BEB473FE2E052={lvl=32,domain="ia"}
,q1DFFE48424C5800F={lvl=32,domain="ia"}
,q21B37A9B635E346C={lvl=32,domain="ia"}
,q3511AA60597EB224={lvl=32,domain="ia"}
,q55B5404457E2C7DF={lvl=32,domain="ia"}
,q614C89EDE5EA36EB={lvl=32,scene="Iron Fall",type={4},giver='U701C03712E0EB61E'}
,q2399F772F8BFE159={lvl=32,scene="Heroes Stand",type={6},giver='U47647B0A316D68F2'}
,q3A1CD0F79824D309={lvl=32,scene="Perspice",type={8},giver='U3122C6BB35D945FC'}
,q2A57529ABC9A66EA={lvl=32,scene="Heroes Stand",type={8}}
,q2D533BE4713E87B6={lvl=32,domain="ia",type={1}}
,q500C1DF562A08C20={lvl=32,domain="ia",type={1}}
,q56C2B62F2D1C47AA={lvl=32,domain="ia",type={1}}
,q60FEDCE65D610A3C={lvl=32,domain="ia",type={1}}
,q74E0EFAC67CBB2E1={lvl=32,domain="ia",type={1}}
,q56AE30FDCC384892={lvl=32,scene="Iron Fall",type={10}}
,q198B499500000000={lvl=32,scene="Exile's Den",type={6,1}}
,q55FD060FAA30AB81={lvl=32,scene="Auld Warden",type={4},giver='U324EA69B65ACB13D'}
,q035A23315FFDA707={lvl=32,type={7},giver='U5846C8575409ABB5'}
,q393B4C63BE534C1A={lvl=32,type={7},giver='U0D6C551553C190EE'}
,q441D043BA35B0C09={lvl=32,scene="Timar Foothills",type={4},giver='U23B4D2CB3335806F'}
,q14B2CCDC6C3A3BB2={lvl=32,type={7,17}}
,q183BB0E94D399D5C={lvl=32,type={7,17}}
,q1AC333309AD5D008={lvl=32,type={17,7}}
,q1AA74E2691428613={lvl=32,scene="Chancel of Labors",type={24,8,2},giver='U610B81787268A249'}
,q3DE59FFB8426345F={lvl=32,scene="Chancel of Labors",type={24,8,2},giver='U7E08BA5F203A4D01'}
,q7DD6502C819B3D55={lvl=32,scene="Perspice",type={20,8},giver='U72041E304383EE03'}
,q56CC82F28BECA0F3={lvl=32,scene="Icewatch Outpost",type={1}}
,q68869A9EB9A31C1F={lvl=32,scene="Perspice",type={10},giver='U21D1DD8B0532AFA7'}
,q1314B624CAEA53B1={lvl=32,scene="Perspice",type={4},giver='U21D1DD8B0532AFA7'}
,q4A33A75D6E0F536D={lvl=32,scene="Icewatch Outpost",type={4,1},giver='U0652AAB57EF7EC80'}
,q05FAB2920805D0DF={lvl=32,domain="ia"}
,q279829FB094EE42D={lvl=32,domain="ia"}
,q35B62CC51600C3C2={lvl=32,domain="ia"}
,q3F835885F9164E30={lvl=32,scene="Iron Fall",type={4},giver='U3122C6BB35D945FC'}
,q468F7BE225E76E91={lvl=32,domain="ia"}
,q6F9815FF26CFC37F={lvl=32,domain="ia"}
,q493126F2B01A95D9={lvl=32,type={7}}
,q720F14EBE6F6D3A1={lvl=32,type={7}}
,q36B17E369A93358D={lvl=32,scene="Perspice",use={{key='I0D8C264E7EF5C0A6,D39FCC6E0FB07D54,,,,,,', count=1}},type={10},giver='U21D1DD8B0532AFA7'}
,q4331562BDFDE6A72={lvl=32,scene="Iron Fall",type={1},giver='U701C03712E0EB61E'}
,q01699D5903BDF9FA={lvl=32,domain="ia",type={1,2,12}}
,q000A363C717A3322={lvl=32,domain="ia",type={2,1,12}}
,q106B9369B3E976B6={lvl=32,scene="Lord's Hall",type={4},giver='U66D153D565F7210A'}
,q145E31C9CD1B4D01={lvl=32,scene="Iron Fall",type={1},giver='U3122C6BB35D945FC'}
,q1EAD41CA1A77EE4A={lvl=32,domain="ia",type={2,1,12}}
,q10B4B512E1609042={lvl=32,scene="Iron Fall",type={13}}
,q1A721DE4B67DA23E={lvl=32,scene="Auld Warden",type={13}}
,q244E8A5BF890C05A={lvl=32,scene="Lord's Hall",type={13}}
,q50E52EF9566D8EBD={lvl=32,scene="Iron Fall",type={13}}
,q57FCF335E202DDAB={lvl=32,scene="Auld Warden",type={13}}
,q485C192100000000={lvl=32,type={6}}
,q0605451700000000={lvl=32,type={6}}
,q0E283B6B08EE0560={lvl=32,domain="ia",type={1}}
,q140EDE7D5B0A224C={lvl=32,domain="ia",type={1}}
,q1E7B1D6B59874D48={lvl=32,domain="ia",type={1}}
,q418ECC903AD2FB7A={lvl=32,domain="ia",type={1}}
,q48EC693E6B864348={lvl=32,domain="ia",type={1}}
,q591E07CD3CF48DE7={lvl=32,scene="Icewatch Outpost",type={1,9}}
,q73BFDF3DB1B84918={lvl=32,scene="Icewatch Outpost",type={9,1}}
,q01902E986217CE7B={lvl=32,scene="Perspice",type={1},giver='U6491032B263D66FA'}
,q040009FCB8312118={lvl=32,scene="Perspice",type={1},giver='U6491032B263D66FA'}
,q112FAFBE002F2032={lvl=32,scene="Perspice",type={1},giver='U6491032B263D66FA'}
,q76737F85122FA280={lvl=32,scene="Perspice",type={1},giver='U6491032B263D66FA'}
,q2DD2858CC59D3568={lvl=32,type={3,1,11},giver='U7AE2C3C44983FBE8'}
,q75B706E607A10334={lvl=32,scene="Heroes Stand",type={13},giver='U66D153D565F7210A'}
,q206B609C039EDA23={lvl=32,domain="ia",type={2,12,1}}
,q677E26CEBF99DF26={lvl=32,scene="Iron Fall",type={13}}
,q086F0F0A78B90015={lvl=32,scene="Auld Warden",type={13}}
,q67F97BAE116902DD={lvl=32,scene="Lord's Hall",type={13}}
,q693E62A5C179CD90={lvl=32,scene="Iron Fall",type={13}}
,q135EF7A8E2564056={lvl=32,scene="Auld Warden",type={13}}
,q5DBE9FE500000000={lvl=32,scene="Exile's Den",type={13}}
,q77DFB831C2926E95={lvl=32,scene="Auld Warden",type={4},giver='U324EA69B65ACB13D'}
,q12770FBA98ECD5EF={lvl=32,scene="Auld Warden",type={4},giver='U66AD01F84277CF64'}
,q37BE0DADB451DABC={lvl=32,scene="Heroes Stand",type={6},giver='U791C257A2BB26F06'}
,q36D3FF6D00000000={lvl=32,scene="Exile's Den",type={4}}
,q7A704CDBA4CABE98={lvl=32,scene="Blood Iron Pools",giver='U068B93E466090425'}
,q379DE4C8024B7DB1={lvl=32,scene="Chancel of Labors",type={2},giver='U17DEBE56228D3A7E'}
,q1EA572B36937DA1F={lvl=32,scene="Cloudbourne Tarn",type={8,6},giver='U4AAC1CE610FC821F'}
,q118AF35845856F9A={lvl=32,scene="Chancel of Labors",type={6,8},giver='U17DEBE56228D3A7E'}
,q35C9D0F1819FA112={lvl=32,scene="Icewatch Outpost",type={6,1},giver='U671EBB5C3A8CEBBE'}
,q69CC807930240D83={lvl=32, grp=3,type={11,3},giver='U69A5E77C177BDEEA'}
,q19F589E5D1D297FC={lvl=32,scene="Auld Warden",type={20,22},giver='U66AD01F84277CF64'}
,q3767260528EA515D={lvl=32,scene="Auld Warden",type={1},giver='U23B4D2CB3335806F'}
,q495689C700000000={lvl=32,scene="Exile's Den",type={4}}
,q037471A447D69174={lvl=32,domain="ia",type={12,1,2}}
,q13446B2659487066={lvl=32,domain="ia"}
,q416B689169FD0C35={lvl=32,domain="ia"}
,q4EF83B05098232B0={lvl=32,domain="ia"}
,q5DAACED02592212E={lvl=32,domain="ia"}
,q7283832967C0B5D0={lvl=32,domain="ia"}
,q1BFC5C6C7E52B806={lvl=32,scene="Sage Spire",type={13},giver='U324EA69B65ACB13D'}
,q00712FA6490E64EF={lvl=32,domain="ia"}
,q22CAC98D4828277C={lvl=32,domain="ia"}
,q3D1D2E5160FC7A59={lvl=32,domain="ia"}
,q4346E2B66B699C07={lvl=32,domain="ia"}
,q7526F9396A788907={lvl=32,domain="ia"}
,q2CAFA8C0DD7A677C={lvl=32,scene="Icewatch Outpost",type={6}}
,q1FA448DA3FF25B98={lvl=32,scene="Lord's Hall",type={1},giver='U269C4B9E1138681D'}
,q40D19B597F7FA431={lvl=32,scene="Auld Warden",type={4},giver='U23B4D2CB3335806F'}
,q7B041324ABED54F9={lvl=32,scene="Lord's Hall",type={13}}
,q2D437DD8954BF351={lvl=32,type={7,17}}
,q311A09A4012F1345={lvl=32,scene="Lord's Hall",type={1},giver='U301A20701BB0E308'}
,q559D4D910A3BE7ED={lvl=32,scene="Chancel of Labors",type={2},giver='U068B93E466090425'}
,q0B8E2B6296139353={lvl=32,scene="Icewatch Outpost",type={8},giver='U0652AAB57EF7EC80'}
,q169542BE00000000={lvl=33,scene="Dayblind Hollow",type={1}}
,q20DDFD4200000000={lvl=33,scene="Dayblind Hollow",type={13}}
,q0AAEDBFC8791E234={lvl=33,type={17}}
,q6CD24C169BE9371F={lvl=33,scene="Exile's Den",type={5,8},giver='U0652AAB57EF7EC80'}
,q07D786FA11AF64F5={lvl=33,domain="ia"}
,q1111170D7E2CFD48={lvl=33,domain="ia"}
,q32D76DF20DC14530={lvl=33,domain="ia"}
,q79E99E8A2EFD269B={lvl=33,domain="ia"}
,q7B4D49B2099651AD={lvl=33,domain="ia"}
,q20DCE7920DDB4BB3={lvl=33,scene="Sage Spire",giver='U68403A1B4DBC184B'}
,q33FBB05A0338286C={lvl=33,domain="ia",type={2,12,1}}
,q0BB2FA7B09084193={lvl=33,scene="Perspice",type={4},giver='U57A2BAB723550C52'}
,q1B27A42B250AD113={lvl=33,scene="Icewatch Ridge",use={{key='I00ADB7DACAC31468,237D5600AF50DA83,,,,,,', count=1}},type={3,10,4,1}}
,q0332C6E3BF42709D={lvl=33,type={17,7}}
,q42B4BED6496E3245={lvl=33,type={7,17}}
,q280DC8C4CF89CA52={lvl=33}
,q718BBC8CADADEC49={lvl=33,type={7,17}}
,q1D22E14CE0D71CD6={lvl=33,scene="Trollblight Caverns",use={{key='I490AA6136AE859A2,D9D931D47F550230,,,,,,', count=1}},type={4}}
,q21A3552108E35B5C={lvl=33,scene="Dayblind Hollow",type={1},giver='U0BFC8A901A43FEC4'}
,q668E64AE8879338E={lvl=33,scene="Sage Spire",type={10},giver='U1084D4EB1FB2A3DD'}
,q00D500E335F4E1D0={lvl=33,type={7,17}}
,q3C53125A7E4ED180={lvl=33,type={17,7}}
,q4D40E833C7F6098E={lvl=33}
,q52A9E1B9B0A96E92={lvl=33}
,q6BC18C33E63E56BE={lvl=33,scene="Perspice",type={3,4}}
,q08EA2D27A07B59F9={lvl=33,scene="Dayblind Hollow",type={2},giver='U0BFC8A901A43FEC4'}
,q7FCDDB5042B64CFC={lvl=33,scene="Dayblind Hollow",use={{key='I6120A0BB48F248E8,4F054AC4133A2B12,,,,,,', count=1}},type={1,4,10,2}}
,q1A3C79B8C5018E58={lvl=33,scene="Trollblight Caverns",type={1},giver='U3E45ACF3784C81D1'}
,q53D5FF38BAD9C199={lvl=33,scene="Trollblight Caverns",type={3}}
,q5298D5CACB6A1A60={lvl=33,scene="Dayblind Hollow",type={4}}
,q743EBBBC28DAB503={lvl=33,scene="Dayblind Hollow",type={6},giver='U634008CE76DC5F90'}
,q2A4657F3E1C2EADF={lvl=33,type={17,7}}
,q460CE662602E5460={lvl=33,type={17,7}}
,q5FD1F32090537C85={lvl=33,type={7,17}}
,q4A7983C483AE9EAB={lvl=33}
,q0B86E4F47A0FB976={lvl=33,type={17}}
,q29668DEAA0D97C1B={lvl=33,scene="Kain's Command",type={4},giver='U434C01A72134CA21'}
,q5A24165E773D749D={lvl=33,scene="Sage Spire",type={8},giver='U1A627B216BFC901B'}
,q6E2FF4F76EDE5078={lvl=33,type={17}}
,q0A5DF1E9A7CE894B={lvl=33,scene="Dayblind Hollow",type={6}}
,q7F2A075BBB1A3782={lvl=33}
,q040E935536EDCD1A={lvl=33,domain="ia",type={1}}
,q078204483F6FCEB6={lvl=33,domain="ia",type={1}}
,q37DC958064416727={lvl=33,domain="ia",type={1}}
,q50BF861E183D8659={lvl=33,domain="ia",type={1}}
,q7324686B08010475={lvl=33,domain="ia",type={1}}
,q6AB473BCBAAE937F={lvl=33,scene="Sage Spire",type={1},giver='U3E6E10FD0D7EC34A'}
,q56A480E45EB56090={lvl=33,type={17}}
,q6D34F565EB826465={lvl=33,scene="Sage Spire",type={8,5},giver='U2D1069BA678469D8'}
,q0832182672131218={lvl=33,domain="ia",type={1}}
,q20F0D51726AE8EBA={lvl=33,domain="ia",type={1}}
,q32B60F9502E72247={lvl=33,domain="ia",type={1}}
,q3973CBEB4758C68C={lvl=33,domain="ia",type={1}}
,q6BCF9DE907AA9C24={lvl=33,domain="ia",type={1}}
,q69554963578D0871={lvl=33,scene="Sage Spire",type={13},giver='U405DD71F6B20B3C0'}
,q5F6877A43B1354C9={lvl=33,scene="Sage Spire",type={1},giver='U1A627B216BFC901B'}
,q7ACF3A64CFC4C034={lvl=33,scene="Lotham's Strike",type={8},giver='U0E5525B92F68428E'}
,q5A101CC8E6F8F5F2={lvl=33,scene="Sage Spire",type={4,8},giver='U1084D4EB1FB2A3DD'}
,q7804E3378E80D987={lvl=33,type={17}}
,q00287A099FF2EDAD={lvl=33,scene="Sage Spire",type={1},giver='U68403A1B4DBC184B'}
,q1854CB040669B351={lvl=33,domain="ia",type={1}}
,q415C7A5A4C8A95A7={lvl=33,domain="ia",type={1}}
,q471D0ED40789B086={lvl=33,domain="ia",type={1}}
,q52F2E102727045AC={lvl=33,domain="ia",type={1}}
,q7309590D74672877={lvl=33,domain="ia",type={1}}
,q23B6CC94726DC0DF={lvl=33,domain="ia"}
,q31ADF208567C06A2={lvl=33,domain="ia"}
,q394BE39993817699={lvl=33,scene="Sage Spire",type={4,1},giver='U2D1069BA678469D8'}
,q5DA1B6187F7ABC1D={lvl=33,domain="ia"}
,q6E56FE723F594B60={lvl=33,domain="ia"}
,q751C60270E166685={lvl=33,domain="ia"}
,q1608CD574B8FC343={lvl=33}
,q0BD1B6B00E9395C4={lvl=33,domain="ia"}
,q19A2E3501E20A1CD={lvl=33,domain="ia"}
,q2C7C9311656F3AA9={lvl=33,domain="ia"}
,q3623B89C51986D77={lvl=33,domain="ia"}
,q3CF4C72349C1E499={lvl=33,domain="ia"}
,q2143BA8EB8CCDA11={lvl=33,type={17}}
,q2FE8E15A794B2340={lvl=33}
,q00325360457A4B02={lvl=33,scene="Trollblight Caverns",type={20},giver='U3D7800613B6F7A11'}
,q33E569BCBDD06023={lvl=33,scene="Dayblind Hollow",type={2}}
,q20415D32CD5FAABC={lvl=33,scene="Timar Foothills",type={3,4}}
,q408B6EAB78A1DE73={lvl=33}
,q7228FEBA13879F62={lvl=33,type={7,17}}
,q17D51A410B4E7C4C={lvl=33,domain="ia"}
,q219560C102812C22={lvl=33,domain="ia"}
,q334B63215C082DE0={lvl=33,domain="ia"}
,q7E6BCF3D6F4361D2={lvl=33,domain="ia"}
,q7F481DB0210BF755={lvl=33,domain="ia"}
,q49184EAC754976F7={lvl=33}
,q537DF79A95BCF186={lvl=33,type={17,7}}
,q0767EC196A68B0EA={lvl=33}
,q40FDEAB3BC06D297={lvl=33}
,q3E30655279110FED={lvl=33,type={17}}
,q794D3FCFB82ECEEB={lvl=33,type={17}}
,q2DA1005FD126D416={lvl=33,scene="Sage Spire",type={4},giver='U1A627B216BFC901B'}
,q629E0DC095F94E59={lvl=33,scene="Sage Spire",type={4},giver='U405DD71F6B20B3C0'}
,q373096CD46A6ACA4={lvl=33,scene="Kain's Command",type={4},giver='U434C01A72134CA21'}
,q4809D086A30FE3FA={lvl=33,scene="Timar Foothills",type={13}}
,q4D668EB2B475E5F0={lvl=33,scene="Trollblight Caverns",type={13}}
,q493190FE1599CC13={lvl=33,scene="Timar Foothills",type={13}}
,q40B01D05843B25AB={lvl=33,scene="Auld Warden",type={13}}
,q68D5D1D2A9A32DE5={lvl=33,scene="Trollblight Caverns",type={13}}
,q46CAE80BF2429FCA={lvl=33,scene="Timar Foothills",type={13}}
,q5705926FC100C0EE={lvl=33,type={17}}
,q525B9C38DC270F22={lvl=33,scene="Dayblind Hollow",type={4}}
,q3C304A543614F028={lvl=33,scene="Timar Foothills",type={3,1}}
,q6B1AAE0A8E48AC42={lvl=33,scene="Trollblight Caverns",type={1}}
,q25A60F326993B5C3={lvl=33,domain="ia",type={1}}
,q2663667D769C865D={lvl=33,domain="ia",type={1}}
,q334A6F9E4431438F={lvl=33,domain="ia",type={1}}
,q4202CA7C7813A3BB={lvl=33,domain="ia",type={1}}
,q5AA1C02920DBBB3B={lvl=33,domain="ia",type={1}}
,q29CBCF9C673A658F={lvl=33,scene="Perspice",type={1,3}}
,q138CF98AE341B827={lvl=33,scene="Dayblind Hollow",type={4,3}}
,q6C2108D990F9BA16={lvl=33,scene="Dayblind Hollow",type={1,9}}
,q069BC86A8CBAEEE2={lvl=33}
,q14296B57EF706414={lvl=33}
,q40EEDFD6D546B7A6={lvl=33,scene="Perspice",type={4},giver='U57A2BAB723550C52'}
,q4A681D5EE4A0D108={lvl=33,scene="Timar Foothills",type={13}}
,q0FBE056136F0F97A={lvl=33,scene="Trollblight Caverns",type={13}}
,q0339697F06057DC2={lvl=33,scene="Timar Foothills",type={13}}
,q40E7E6858A8F92F9={lvl=33,scene="Auld Warden",type={13}}
,q7545DF021AE72EED={lvl=33,scene="Trollblight Caverns",type={13}}
,q12F95EE89353BA90={lvl=33,scene="Timar Foothills",type={13}}
,q1F922312FFFF6490={lvl=33,scene="Trollblight Caverns",type={13}}
,q04F95D940A53236A={lvl=33,domain="ia"}
,q07A1C6C004FF69B4={lvl=33,domain="ia"}
,q2E2DB70C708103C5={lvl=33,domain="ia"}
,q3915D4421A38B1C1={lvl=33,domain="ia"}
,q4C646BAD78DFE279={lvl=33,domain="ia"}
,q5BB4911164B1CEF7={lvl=33,type={17}}
,q20F10EA27D31FC8D={lvl=33,type={17,7}}
,q25CF4A2D8DC4832E={lvl=33,type={7,17}}
,q7EB53B27F64C6500={lvl=33,scene="Sage Spire",type={1,10},giver='U1084D4EB1FB2A3DD'}
,q5482F1276F1402EF={lvl=33,scene="Dayblind Hollow",type={4},giver='U7B1833116195B4DD'}
,q55F99B0EDA5BAB57={lvl=33,scene="Trollblight Caverns",type={4}}
,q56B7AF5182AE57DA={lvl=33,type={17}}
,q75D6B5368856F681={lvl=33,scene="Timar Foothills",type={13}}
,q7822C71AB6E72528={lvl=33,scene="Dayblind Hollow",type={4},giver='U33EEF8150CDA5462'}
,q39E77ADB68B7EC22={lvl=33,scene="Dayblind Hollow",type={4},giver='U634008CE76DC5F90'}
,q1A7D546970D39A8B={lvl=33,domain="ia"}
,q1CFD09763A5CF223={lvl=33,domain="ia"}
,q24F7658F1D8A0C5E={lvl=33,domain="ia"}
,q44488C09198C9E6F={lvl=33,domain="ia"}
,q4DEF16CD5092533B={lvl=33,domain="ia"}
,q262EDF6D19084965={lvl=33,scene="Trollblight Caverns",type={4},giver='U3D7800613B6F7A11'}
,q4C6C5D585235A1D3={lvl=33,scene="Trollblight Caverns",type={15},giver='U0E5525B92F68428E'}
,q41DBFE8307C665B8={lvl=33,scene="Sage Spire",type={1},giver='U1A627B216BFC901B'}
,q769F0E55B6B4C273={lvl=33,scene="Trollblight Caverns",type={10}}
,q136665A2C47AE122={lvl=33,scene="Sage Spire",type={4,8},giver='U2D1069BA678469D8'}
,q073001FA43B94FF4={lvl=33,domain="ia",type={1}}
,q1600B3042211F342={lvl=33,domain="ia",type={1}}
,q218AD2A754519AA0={lvl=33,domain="ia",type={1}}
,q2FE16AD764893564={lvl=33,domain="ia",type={1}}
,q466B61DA10C26BFE={lvl=33,domain="ia",type={1}}
,q0CDB90FA22A3AB0E={lvl=33,type={17}}
,q4D4218E35D815EC8={lvl=33,domain="ia"}
,q6122FA421A3985FB={lvl=33,domain="ia"}
,q62FCA30E7D720AE1={lvl=33,domain="ia"}
,q674BD284565B0FFA={lvl=33,domain="ia"}
,q6E0670B5094473E9={lvl=33,domain="ia"}
,q4C78B147CC50E15E={lvl=33,scene="Dayblind Hollow",type={10},giver='U33EEF8150CDA5462'}
,q5123AB1A88DD0E3B={lvl=33,scene="Dayblind Hollow",type={10}}
,q5678216047C36DE5={lvl=33,domain="ia",type={2,22}}
,q2349C0A3156C7B0C={lvl=33,domain="ia",type={1}}
,q28EF5CD100A9CE2F={lvl=33,domain="ia",type={1}}
,q583C2EFA3B0235D0={lvl=33,domain="ia",type={1}}
,q68A6D1B25CC7D385={lvl=33,domain="ia",type={1}}
,q7E12896D607792AD={lvl=33,domain="ia",type={1}}
,q1041C8EFE60AE26B={lvl=33,scene="Trollblight Caverns",type={6},giver='U3A64EB9C5E2C32B7'}
,q7F6BEF0CB1CFD15D={lvl=33}
,q0FCE9D695B5BBC07={lvl=33}
,q4DEAA87F68029225={lvl=33,type={7,17}}
,q13DC2D3CD75D6B60={lvl=34,type={1,11,3},giver='U0A2D96E96D6DDB44'}
,q00D5193002E2B602={lvl=34,domain="ia",type={1}}
,q0DF498E0590304F3={lvl=34,domain="ia",type={1}}
,q0EF730D175618FE1={lvl=34,domain="ia",type={1}}
,q16681804561B1887={lvl=34,domain="ia",type={1}}
,q1A54AC5B2D823709={lvl=34,domain="ia",type={1}}
,q113F992B92701B6A={lvl=34,scene="Whitefall",type={8},giver='U304D84E64BE18CA1'}
,q52AEFB4300000000={lvl=34,type={3,1,10},giver='U3559294F270F7470'}
,q1D0974A0E6EEDF4D={lvl=34,scene="Kestral's Cry Ravine",type={20},giver='U64FDBF4252FFF39D'}
,q75111DAB00000000={lvl=34,scene="Blood Iron Pools",type={13}}
,q46D3938800000000={lvl=34,scene="Whitefall",type={8}}
,q59737CF800000000={lvl=34,type={1,6}}
,q2291904800000000={lvl=34,type={10,3},giver='U76F842C16787FBBB'}
,q4DAC6EE200000000={lvl=34,type={1,3,10},giver='U5BB010B654E9225B'}
,q64A50B0C00000000={lvl=34,scene="Whitefall",type={8},giver='U6BCB4F815239A9B7'}
,q16D1608C00000000={lvl=34,use={{key='I4B70DD74AA44EC89,C4A207FC3CD6E0D8,,,,,,', count=10}},type={6,3},giver='U5EA27D8D7BEF9AF6'}
,q066D376A60DF4AFB={lvl=34,scene="Lotham's Strike",type={4},giver='U3E0CBE6E2914EF66'}
,q066E88DC145B9EC2={lvl=34,type={3,1,11},giver='U0A74AD912395194F'}
,q12B2D71E00000000={lvl=34,type={3,1},giver='U32E344235D03EA86'}
,q78D3AEEB9AF323EB={lvl=34,scene="Lotham's Strike",type={5},giver='U3E0CBE6E2914EF66'}
,q185604E8FED78C14={lvl=34,scene="Blood Iron Pools",type={4},giver='U1DE2A12F6043F057'}
,q6AAF33A7EA1A1CF1={lvl=34}
,q5F1FD148C4E60046={lvl=34,scene="Howling Caves",use={{key='I07F5E62CBBE9D0AC,65D14952A2000224,,,,,,', count=5}},type={1,10},giver='U7BDC08D935830011'}
,q3A6D6FBC93E4EC14={lvl=34,scene="Shatterbone Hold",type={1},giver='U533D3EA8646848EC'}
,q0D29558963BA73BA={lvl=34,domain="ia"}
,q4CCD8B885F148D7E={lvl=34,domain="ia"}
,q651160314AD13422={lvl=34,domain="ia"}
,q689EE6C9373D8E1F={lvl=34,domain="ia"}
,q793254DD2024BD21={lvl=34,domain="ia"}
,q2CD8C862053D4A97={lvl=34,scene="Camp Cestus",type={5,8},giver='U646095CF55494C16'}
,q3D95A43FC6FE96D4={lvl=34,scene="Whitefall",type={8},giver='U3333102C5C15083E'}
,q78B7079A6B49B710={lvl=34,scene="Whitefall",type={8},giver='U0BFC8A901A43FEC4'}
,q4980212E8784ECBC={lvl=34,scene="Camp Cestus",type={8},giver='U434C01A72134CA21'}
,q44A2F9E7DA9D2003={lvl=34,scene="Whitefall",type={8,22},giver='U72D6764B182A1089'}
,q52C665CC58AAA4CC={lvl=34,scene="Shatterbone Hold",type={4},giver='U2DD5379242368CA2'}
,q29CBE0C6105D2FE9={lvl=34,domain="ia"}
,q53F6416826DF97C1={lvl=34,domain="ia"}
,q5921DD3F61F9081E={lvl=34,domain="ia"}
,q6D3A240733168EA0={lvl=34,domain="ia"}
,q7A55AD8B6A5AEC77={lvl=34,domain="ia"}
,q33565F35109DEE55={lvl=34,scene="Shatterbone Canyon",type={1},giver='U1A4A9D3529CA193F'}
,q15A63A540CBE2D56={lvl=34,domain="ia",type={1}}
,q5CFF30C67F7F1D20={lvl=34,domain="ia",type={1}}
,q606353432E2E30AA={lvl=34,domain="ia",type={1}}
,q71D3B52522EFFE17={lvl=34,domain="ia",type={1}}
,q7236B5CE2DD63456={lvl=34,domain="ia",type={1}}
,q027782596B98B206={lvl=34,type={1,3,11},giver='U612482D648FB81CD'}
,q5B9BC2DB00000000={lvl=34,type={6,3,10,1},giver='U7195ECE4770DCF6C'}
,q3D6C8E890E31A1C5={lvl=34,scene="Shatterbone Canyon",type={1},giver='U4AEF200B7739BAFD'}
,q6A53121F00000000={lvl=34,scene="Dayblind Hollow",type={13}}
,q4C80C1F700000000={lvl=34,type={1,10,3},giver='U7B21BAEE0E147ED9'}
,q042A079B8F69B64D={lvl=34,scene="Lotham's Strike",type={11,1},giver='U367C4291622571F3'}
,q13CF406101186BDC={lvl=34,scene="Lotham's Strike",type={22},giver='U5682455A54A38C5D'}
,q5ABFE7526CC536E6={lvl=34,scene="Howling Caves",use={{key='I647099ECAEBC23FD,36246C9C42E0FF37,,,,,,', count=6}},type={10},giver='U0D03E32C06CA5515'}
,q002A27354A5B1FFB={lvl=34,scene="Lotham's Strike",type={4}}
,q6D3980E300000000={lvl=34,type={3,6},giver='U6983F2840E37019E'}
,q748687A3BBB66B99={lvl=34,scene="Shatterbone Canyon",type={1},giver='U02377A55771F5D4F'}
,q17FCE5893A6D59B8={lvl=34,domain="ia",type={2,1,12}}
,q7CD311BEC77B85D6={lvl=34,scene="Camp Cestus",type={4},giver='U4AEF200B7739BAFD'}
,q45F229F1C571B526={lvl=34,scene="Kestral's Cry Ravine",type={6},giver='U0E1D8B37017A9A48'}
,q45248920DE48F84E={lvl=34,scene="Blood Iron Pools",type={20},giver='U5F1B44FD72189675'}
,q0E4B30040F69D4C1={lvl=34,scene="Camp Cestus",type={5,8},giver='U646095CF55494C16'}
,q534039C65C46C134={lvl=34,scene="Camp Cestus",type={4},giver='U0DD3AECE37B29A57'}
,q654751966AB34124={lvl=34,scene="Lotham's Strike", grp=2,type={10,1},giver='U47736FF375C439FD'}
,q069058C1C39592C9={lvl=34,scene="Lotham's Strike",type={1},giver='U4C8DB0B601F721CA'}
,q07CD850AC709D7FC={lvl=34,scene="Lotham's Strike",type={4},giver='U51C82C17613FD126'}
,q0781BBDEC7DA9826={lvl=34,scene="Whitefall",type={10,2},giver='U3333102C5C15083E'}
,q06768D6B34524DDA={lvl=34,domain="ia",type={1}}
,q13F5F13467B42629={lvl=34,domain="ia",type={1}}
,q1658E98F73A25C2A={lvl=34,domain="ia",type={1}}
,q58633B7A3CC5A0EA={lvl=34,domain="ia",type={1}}
,q7EBBA48710CD4464={lvl=34,domain="ia",type={1}}
,q0BDDBEF67DF6C2E9={lvl=34,scene="Lotham's Strike",type={22},giver='U10F4107F31B06322'}
,q04ED4FBB5EFE8825={lvl=34,domain="ia"}
,q2842780670257BFE={lvl=34,domain="ia"}
,q4C8866E166A71516={lvl=34,domain="ia"}
,q4E44FD017B7667D8={lvl=34,domain="ia"}
,q5DC7ED0C0A6CDE6F={lvl=34,domain="ia"}
,q209E5212B2E1E319={lvl=34,scene="Camp Cestus",type={13,5},giver='U2DD5379242368CA2'}
,q7A505CA3CBA96E59={lvl=34,scene="Blood Iron Pools",type={4},giver='U652E067F5510B7B3'}
,q15AA152FE4FE08DF={lvl=34,scene="Granitewood Crossing",type={8},giver='U10F4107F31B06322'}
,q200737312698D31B={lvl=34,domain="ia"}
,q35A2E48A502C87A5={lvl=34,domain="ia"}
,q473D3E120E3F56B1={lvl=34,domain="ia"}
,q48CDCAE6084C852A={lvl=34,domain="ia"}
,q67112E915656641B={lvl=34,domain="ia"}
,q6907622D36ED8898={lvl=34,scene="Camp Cestus",type={6},giver='U5EF0685274A8F7B8'}
,q4EFA32995E53A14D={lvl=34,scene="Lotham's Strike",type={8},giver='U47736FF375C439FD'}
,q77500F44064C8A9D={lvl=34,scene="Whitefall",type={8},giver='U6BCB4F815239A9B7'}
,q4B2CF1C22D312532={lvl=34,scene="Howling Caves",type={9,1}}
,q16D5C5D9B7D2A724={lvl=34,scene="Blood Iron Pools",type={9,1}}
,q2E1792C6682883C0={lvl=34,scene="Kestral's Cry Ravine",type={1,9}}
,q1656B7D669274A76={lvl=34,scene="Blood Iron Pools",type={9,1}}
,q4D8CC92A70F7CB7C={lvl=34,scene="Howling Caves",type={9,1}}
,q7B159F5FCB959F68={lvl=34,scene="Howling Caves",type={1,9}}
,q4D67702956038643={lvl=34,scene="Howling Caves",type={1,9}}
,q64D4AF113F8BC63B={lvl=34,scene="Shatterbone Hold",type={1},giver='U533D3EA8646848EC'}
,q345EFE78CE31BD39={lvl=34,scene="Shatterbone Canyon",type={1},giver='U5EF0685274A8F7B8'}
,q60DCA1374ADC87E3={lvl=34,giver='U3E0CBE6E2914EF66'}
,q40FAF79F00000000={lvl=34,type={1}}
,q29CB39BE83FC03E8={lvl=34,scene="Lotham's Strike",type={8}}
,q1410751600000000={lvl=34,type={6}}
,q052D6D9900000000={lvl=34,type={6,1,10,3},giver='U6D7E11C407A168B7'}
,q2C70BCF800000000={lvl=34,scene="Howling Caves",type={1,9}}
,q702610B500000000={lvl=34,type={6}}
,q7A30689400000000={lvl=34}
,q67DAF6C2A4930E28={lvl=34,scene="Whitefall",type={8,1},giver='U6BCB4F815239A9B7'}
,q1F5B5563F32A6323={lvl=34,scene="Lotham's Strike",type={1,11},giver='U367C4291622571F3'}
,q1091FF365E491B79={lvl=34,domain="ia",type={1}}
,q1E98F12B663F1A00={lvl=34,domain="ia",type={1}}
,q256ED02453F5E6A2={lvl=34,domain="ia",type={1}}
,q55790E665829C667={lvl=34,domain="ia",type={1}}
,q7FB9281D766A6A7D={lvl=34,domain="ia",type={1}}
,q50E476DA00000000={lvl=34,type={1,10,3,6},giver='U31AE4D7736F39EA5'}
,q32DB40A9683CE2E1={lvl=34,domain="ia",type={1,12,2}}
,q5FEB7BD810271D5D={lvl=34,domain="ia",type={1,12,2}}
,q2C85A16A00000000={lvl=34,type={1}}
,q4A87BED100000000={lvl=34,scene="Howling Caves",type={1}}
,q5EC0B624B77D8291={lvl=34,scene="Lotham's Strike",type={6},giver='U4C8DB0B601F721CA'}
,q2E3FA5D2AAA0357A={lvl=34,scene="Lotham's Strike",type={4},giver='U51C82C17613FD126'}
,q4B63CBE900000000={lvl=34,scene="Howling Caves",type={1}}
,q679AC78100000000={lvl=34,type={6,3,4},giver='U4A8ED6A37F7CED31'}
,q1DDF833600000000={lvl=34,type={4,3,6},giver='U57F36CE04DF093AC'}
,q151865BB75F2FB95={lvl=34,domain="ia"}
,q41FC1BD802332F07={lvl=34,domain="ia"}
,q5888A0B80E7077CE={lvl=34,domain="ia"}
,q5EF769EA5ECBD7CA={lvl=34,domain="ia"}
,q6A5DDFF743D9159F={lvl=34,domain="ia"}
,q5CC64EC5B1A220FE={lvl=34,scene="Lotham's Strike",type={10,1,4},giver='U367C4291622571F3'}
,q4ECEA00F6019A5E4={lvl=34,scene="Camp Cestus",type={19,6},giver='U1701570218F944CD'}
,q44F3A6E7B7838528={lvl=34,scene="Whitefall",type={2,10},giver='U304D84E64BE18CA1'}
,q135E8BB54F76BBEE={lvl=34,domain="ia",type={1}}
,q2057BA086C613B88={lvl=34,domain="ia",type={1}}
,q256A9C5271D355DA={lvl=34,domain="ia",type={1}}
,q42E645B7970F679B={lvl=34,scene="Camp Cestus",type={1},giver='U02377A55771F5D4F'}
,q508CBE517C59C8E8={lvl=34,domain="ia",type={1}}
,q5B9A24AE1A720CC9={lvl=34,domain="ia",type={1}}
,q3822FF5E6EE06112={lvl=34,domain="ia",type={22,2}}
,q260781694AA9DDD9={lvl=34,scene="Whitefall",type={8},giver='U6BCB4F815239A9B7'}
,q75A17796301CAEC2={lvl=34,scene="Shatterbone Hold",type={22,20},giver='U1701570218F944CD'}
,q1039AA37D0BA0D5F={lvl=34,scene="Howling Caves",type={6},giver='U7D80D275681185C4'}
,q6F150628843B3EB7={lvl=34,scene="Lotham's Strike",type={19},giver='U47736FF375C439FD'}
,q2C78BC8A00000000={lvl=34, grp=3,giver='U466F8E012F1FF1FB'}
,q7792AEFC00000000={lvl=34, grp=3,giver='U3D8EA30F468E8E08'}
,q0F2826B48FD97438={lvl=34, grp=3,type={3,11},giver='U37F5DB205A61A109'}
,q04E4E84F00000000={lvl=35, grp=5,type={6,1,3}}
,q5D5D7B1800000000={lvl=35, grp=5,type={6,3,1}}
,q06757E746CD99503={lvl=35,type={5,18},giver='U03A3E8511875EF5A'}
,q598C705E8FE519A7={lvl=35,type={4,18},giver='U31C124D606CEDFB9'}
,q251DBE6500000000={lvl=35,scene="Chancel of Labors",type={13}}
,q2B0400526D8365E2={lvl=35,domain="ia",type={12,1,2}}
,q6F107289B2D1AEB5={lvl=35,scene="Howling Caves",type={13},giver='U7BDC08D935830011'}
,q4AD4BBCFD28E6031={lvl=35,scene="Blighted Pit",type={1},giver='U02377A55771F5D4F'}
,q0807C8D100000000={lvl=35,scene="Cloudbourne Cavern"}
,q0A0CE583C31FF16A={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q2BAFF3F6AC70DB78={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q2BC88D26D6381354={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q493D9C7DC205BEFC={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q4F2C1ED0F712D287={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q52B7251B23D62C9D={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q657E3E77A55F5CC0={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q6ADFACF98565E315={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q781392F6BEB04A4A={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q7CC54D10B275819B={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q25D3F81F063CEAE2={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q492E26E282B6C56C={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q047452D2FA91EB13={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q10545F09BA55DD37={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q30AE1D72F9BA894B={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q38DFA179F4F46A62={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q3C9296869392705D={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q4A0B9BC7D2A7C02C={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q4FC9420EEDAA62BE={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q525480FE93B60318={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q1577F52B5F2BD342={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q4815F0CE6E842E7A={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q1365982FC3B680A1={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q63BC4BB6D02F2953={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q7014BCC9F8D59277={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q70AEA9A8D1F786DB={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q71449DE6CE373CC4={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q7508E0EACDC921F1={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q7AEA56F03113E495={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q7FAFD7DC599B6845={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q3191660CFB521104={lvl=35,craft={{key='I3C0BBFB464F6EF3E,48F79AECE059A4AA,,,,,,', count=6},{key='I30595E3358AB2D50,77813CCEDF557EEB,,,,,,', count=2}},type={4}}
,q1E63045D8329C0B2={lvl=35,craft={{key='I17928694B00F8EB5,FB30197B01895174,,,,,,', count=6}},type={25}}
,q48FCC08F0810C279={lvl=35,craft={{key='I17928694B00F8EB5,FB30197B01895174,,,,,,', count=6}},type={25}}
,q1B4551B0B9585773={lvl=35,craft={{key='I4BF8CF4ECD29D2A4,1D295C986F344825,,,,,,', count=4},{key='I3C0BBFB464F6EF3E,48F79AECE059A4AA,,,,,,', count=4}},type={4}}
,q642B0ED7E3573930={lvl=35,craft={{key='I3C0BBFB464F6EF3E,48F79AECE059A4AA,,,,,,', count=8}},type={4}}
,q6136B690C8FF362F={lvl=35,craft={{key='I3C0BBFB464F6EF3E,48F79AECE059A4AA,,,,,,', count=8}},type={4}}
,q4AB0CB499BC18F2B={lvl=35,craft={{key='I40A14CFBA56755B4,2064F189BB6713CB,,,,,,', count=8}},type={25}}
,q2591852AF2ADE649={lvl=35,craft={{key='I33E82AEE3A3B86C1,E6FCA263162C410F,,,,,,', count=6}},type={25}}
,q578C7939BCA7525C={lvl=35,craft={{key='I33E82AEE3A3B86C1,E6FCA263162C410F,,,,,,', count=6}},type={25}}
,q3EEA8BA11B8EA865={lvl=35,craft={{key='I4E4730393D07F346,4690A6F21094FD8D,,,,,,', count=8}},type={4}}
,q60133788CFEFC9B0={lvl=35,craft={{key='I17E89AB32F06C307,0D4C10C45238DAF9,,,,,,', count=1},{key='I543A02F0828EF5A5,6752275A7C4E3626,,,,,,', count=7}},type={4}}
,q569C271BC21FFC41={lvl=35,craft={{key='I543A02F0828EF5A5,6752275A7C4E3626,,,,,,', count=8}},type={4}}
,q1AA17A1AA946B9B4={lvl=35,craft={{key='I543A02F0828EF5A5,6752275A7C4E3626,,,,,,', count=8}},type={4}}
,q33647191BD1BAC48={lvl=35,craft={{key='I1D0FEC155767EA70,E9C00008E25E9B82,,,,,,', count=6}},type={25}}
,q726AC965C49F876B={lvl=35,craft={{key='I1D0FEC155767EA70,E9C00008E25E9B82,,,,,,', count=6}},type={25}}
,q039C04078B644429={lvl=35,craft={{key='I15CFD4756A626D29,0D1D35FDD1AEBFA1,,,,,,', count=6}},type={25}}
,q2EA3C95DC2E683FE={lvl=35,craft={{key='I15CFD4756A626D29,0D1D35FDD1AEBFA1,,,,,,', count=6}},type={25}}
,q166F802CFCDC6DEF={lvl=35,craft={{key='I07579690DE76A83C,F478777028A4F092,,,,,,', count=6}},type={25}}
,q688910AAE1E54A4A={lvl=35,craft={{key='I07579690DE76A83C,F478777028A4F092,,,,,,', count=6}},type={25}}
,q0ECD01C46949AE05={lvl=35,craft={{key='I124B43571B752EAE,E94FF765DBB8A0C5,,,,,,', count=6}},type={25}}
,q51201B73E2A86302={lvl=35,craft={{key='I124B43571B752EAE,E94FF765DBB8A0C5,,,,,,', count=6}},type={25}}
,q73F9ABF3CE55ADE2={lvl=35,craft={{key='I50BAF6BC5BCDF7DB,15E54B64ECBB579F,,,,,,', count=6}},type={25}}
,q7B0B377892AC07F8={lvl=35,craft={{key='I50BAF6BC5BCDF7DB,15E54B64ECBB579F,,,,,,', count=6}},type={25}}
,q3D511C31B3015140={lvl=35,craft={{key='I2EE8CF23C7288AFC,5A5335A38B386DEA,,,,,,', count=8}},type={4}}
,q05F1CDECD21FE7F0={lvl=35,craft={{key='I2EE8CF23C7288AFC,5A5335A38B386DEA,,,,,,', count=8}},type={4}}
,q0498C291C536B737={lvl=35,craft={{key='I56032B145FE4E69C,251ACFE5A19AFD7F,,,,,,', count=6}},type={25}}
,q339E80D1CA02480A={lvl=35,craft={{key='I56032B145FE4E69C,251ACFE5A19AFD7F,,,,,,', count=6}},type={25}}
,q04F436F5EE960CB1={lvl=35,craft={{key='I54FDB5FC169F1DA9,CEDAF77A8C1D4685,,,,,,', count=6}},type={25}}
,q567AAAE18E3ADE28={lvl=35,craft={{key='I54FDB5FC169F1DA9,CEDAF77A8C1D4685,,,,,,', count=6}},type={25}}
,q1D71581CD6105AEE={lvl=35,craft={{key='I68AE0B617EA0F53C,D5E2FC951DE0AD46,,,,,,', count=6}},type={25}}
,q2B0233D202D4DF0C={lvl=35,craft={{key='I68AE0B617EA0F53C,D5E2FC951DE0AD46,,,,,,', count=6}},type={25}}
,q09D7DF2F69A997B5={lvl=35,craft={{key='I1871629A7C594693,6254B305FF9510FB,,,,,,', count=4}},type={25}}
,q0AF2F9B185EEC0E4={lvl=35,craft={{key='I1871629A7C594693,6254B305FF9510FB,,,,,,', count=4}},type={25}}
,q5B4B9794B7FD0403={lvl=35,craft={{key='I1871629A7C594693,6254B305FF9510FB,,,,,,', count=4}},type={25}}
,q6312C24F9B4AA207={lvl=35,craft={{key='I1871629A7C594693,6254B305FF9510FB,,,,,,', count=4}},type={25}}
,q7BEF67A0C3AFEC68={lvl=35,craft={{key='I51F572104218914E,DD9FDBED3EF60744,,,,,,', count=8}},type={4}}
,q08941E099DC18559={lvl=35,craft={{key='I4C2FABAB7475865B,094EC3374DBA3970,,,,,,', count=4}},type={25}}
,q3882E5D9F626248D={lvl=35,craft={{key='I4C2FABAB7475865B,094EC3374DBA3970,,,,,,', count=4}},type={25}}
,q5AD1A7D3CD5F6223={lvl=35,craft={{key='I4C2FABAB7475865B,094EC3374DBA3970,,,,,,', count=4}},type={25}}
,q7BBC237047E21589={lvl=35,craft={{key='I4C2FABAB7475865B,094EC3374DBA3970,,,,,,', count=4}},type={25}}
,q377EE8A68A09743A={lvl=35,craft={{key='I7FBEDDCF82D7D8FE,EC93B2000082DEF5,,,,,,', count=6}},type={25}}
,q415F0DE5EFFA36E2={lvl=35,craft={{key='I7FBEDDCF82D7D8FE,EC93B2000082DEF5,,,,,,', count=6}},type={25}}
,q54390FE441E745A6={lvl=35,craft={{key='I4C2FABA99CB8082D,BCBA292ED11D6FA0,,,,,,', count=4}},type={25}}
,q560F381700381F63={lvl=35,craft={{key='I4C2FABA99CB8082D,BCBA292ED11D6FA0,,,,,,', count=4}},type={25}}
,q670374A4189D1CC1={lvl=35,craft={{key='I4C2FABA99CB8082D,BCBA292ED11D6FA0,,,,,,', count=4}},type={25}}
,q7879455126E07C31={lvl=35,craft={{key='I4C2FABA99CB8082D,BCBA292ED11D6FA0,,,,,,', count=4}},type={25}}
,q0079ED61DBF128E8={lvl=35,craft={{key='I4C2FABAAC776019D,023E6A4B4DB96693,,,,,,', count=4}},type={25}}
,q067FF06EA048B34C={lvl=35,craft={{key='I4C2FABAAC776019D,023E6A4B4DB96693,,,,,,', count=4}},type={25}}
,q35274B658E5995CE={lvl=35,craft={{key='I4C2FABAAC776019D,023E6A4B4DB96693,,,,,,', count=4}},type={25}}
,q773A6C0E1CCA00FA={lvl=35,craft={{key='I4C2FABAAC776019D,023E6A4B4DB96693,,,,,,', count=4}},type={25}}
,q74699A2AAC945B65={lvl=35,craft={{key='I543A02F0828EF5A5,6752275A7C4E3626,,,,,,', count=7},{key='I6F6A70B94721137D,7F0A019CF74EDE7E,,,,,,', count=1}},type={4}}
,q62CD28E979F8BC9F={lvl=35,domain="pvp",giver='U7970CCE43478A898'}
,q4ACB6B7C7EBD95AD={lvl=35,type={17}}
,q72C7661D704121AF={lvl=35,type={17}}
,q53BE03BF4C08D817={lvl=35,domain="ia",type={12,1,2}}
,q0F5EA7E2DDDAC677={lvl=35,scene="Granitewood Crossing",type={22,10},giver='U0F1D15586696BA42'}
,q00EDD5FC00000000={lvl=35,type={11,6}}
,q600A8AB200000000={lvl=35,scene="Thedeor's Shield",type={8,5}}
,q161117F800000000={lvl=35,scene="Pilgrim's Crossing",type={8},giver='U6BCB4F815239A9B7'}
,q41C81A49959F5C0D={lvl=35,scene="Camp Cestus",type={8},giver='U646095CF55494C16'}
,q59DC5C2C3C985CED={lvl=35,scene="Cloudbourne Cavern",type={2},giver='U469DD67376CD9722'}
,q0940C19898402D82={lvl=35,scene="Camp Cestus",type={1},giver='U4AEF200B7739BAFD'}
,q676C0383FF74363B={lvl=35,scene="Granitewood Crossing", grp=3,type={1},giver='U0F1D15586696BA42'}
,q74D2BB9475F8BF13={lvl=35,scene="Cloudbourne Cavern",type={1,10},giver='U469DD67376CD9722'}
,q049EA6C68C83EF4B={lvl=35,scene="Chancel of Labors",type={8},giver='U068B93E466090425'}
,q73A6C40FDCA926A4={lvl=35,type={4},giver='U5517E35F5DCEB5A0'}
,q70AD997AAF701023={lvl=35,type={10},giver='U7FF54CBF7D9A1435'}
,q1BE0E1E5AA2C69A3={lvl=35,scene="Cloudbourne Cavern",use={{key='I323C862DE2FBAED5,5B40E51B38896DA3,,,,,,', count=6}},type={10},giver='U29977E5F5F7745F3'}
,q042429297CF29355={lvl=35,scene="Keenblade Mill",type={3,1}}
,q545730B4F0BBDE22={lvl=35,scene="Thedeor's Shield",type={5,8},giver='U469DD67376CD9722'}
,q189B8597AB4F39CA={lvl=35,scene="Camp Cestus",type={13},giver='U324EA69B65ACB13D'}
,q3C7A743476225BEC={lvl=35,domain="ia",type={12,2,1}}
,q4627417555F31335={lvl=35,domain="ia",type={2,1,12}}
,q686E162472805BB7={lvl=35,domain="pvp",giver='U7970CCE43478A898'}
,q6A5F58B0663534DF={lvl=35,domain="ia",type={2,1,12}}
,q2623468742E16E6F={lvl=35,domain="ia",type={11}}
,q2924D6C51A01F84A={lvl=35,domain="ia",type={11}}
,q2B0331A7144BD12D={lvl=35,domain="ia",type={11}}
,q2BAD132B35F0DF79={lvl=35,domain="ia",type={11}}
,q49ABC2F5204298ED={lvl=35,domain="ia",type={11}}
,q5D5E58CE02A0FAC6={lvl=35,domain="ia",type={11}}
,q4303A1FDCDD4BBFE={lvl=35,scene="Blighted Pit",type={4},giver='U4BFD9E5B55E6D823'}
,q4C3FB144B1CC65FB={lvl=35,type={8},giver='U324EA69B65ACB13D'}
,q78C4FF84FA700273={lvl=35,scene="Granitewood Crossing",type={4},giver='U0F1D15586696BA42'}
,q21F04A5A3ECDE4D3={lvl=35,scene="Granitewood Crossing",type={4},giver='U26AB0A433C3ABC44'}
,q0C107141A0854199={lvl=35,scene="Chancel of Labors",type={1},giver='U4190E6496B6E61AE'}
,q096F3C802672E4B9={lvl=35}
,q3AB2934472C0ED7D={lvl=35,scene="Perspice",type={8},giver='U0E5525B92F68428E'}
,q2E7DA5C500000000={lvl=35,type={3}}
,q43749C8E00000000={lvl=35,type={3}}
,q027BADED79491502={lvl=35,domain="ia"}
,q0BDE46C352242838={lvl=35,domain="ia"}
,q1919125319588509={lvl=35,domain="ia"}
,q731EB633045573E1={lvl=35,domain="ia"}
,q7753CBA82E9D9754={lvl=35,domain="ia"}
,q097836B600000000={lvl=35,scene="Cloudbourne Cavern",type={10,1},giver='U53E9376532C4D3D7'}
,q0B0842FE00000000={lvl=35,type={3}}
,q2345925501D342CF={lvl=35,domain="ia",type={1}}
,q2E39A1007ADE0F66={lvl=35,domain="ia",type={1}}
,q309E21B458CE3E91={lvl=35,domain="ia",type={1}}
,q60DD142D64D5A75D={lvl=35,domain="ia",type={1}}
,q6EDC98300D1E0B39={lvl=35,domain="ia",type={1}}
,q2DEB6A9CF11831BF={lvl=35,scene="Camp Cestus",type={6},giver='U1A4A9D3529CA193F'}
,q50F3E2E06F52C885={lvl=35,domain="ia",type={12,1,2}}
,q437225DE00000000={lvl=35, grp=5,type={6,1,3}}
,q5695E4BC00000000={lvl=35, grp=5,type={3,6,1}}
,q512DB21BD004E6D7={lvl=35,scene="Perspice",type={8},giver='U0F1D15586696BA42'}
,q296DF635D4C802DD={lvl=35,scene="Perspice",type={15},giver='U3E45ACF3784C81D1'}
,q00EDD5FF00000000={lvl=35,type={6,11}}
,q38825CA714B8ED63={lvl=35,domain="ia",type={12,2,1}}
,q41DA4406014AEEC4={lvl=35,domain="ia",type={1,12,2}}
,q03AB856D00000000={lvl=35,scene="Pilgrim's Crossing",type={8},giver='U5DFE07B1586324CE'}
,q7F74604F48361D61={lvl=35,domain="ia",type={17}}
,q3FF6B36F588119E3={lvl=35,scene="Kain's Command",type={8},giver='U211C9F56721F36A0'}
,q302900CEDAA922B9={lvl=35,scene="Granitewood Crossing",type={13}}
,q040619DBD7D9CD99={lvl=35,scene="Granitewood Crossing",type={13}}
,q38BFF0D896166F6C={lvl=35,scene="Blighted Pit",type={10}}
,q0FDD29A19152B8A7={lvl=35,scene="Perspice",type={3,4}}
,q4C1A399F1BDC6268={lvl=35,domain="ia",type={12,1,2}}
,q0C7957C1121F01B5={lvl=35,domain="ia",type={1}}
,q125DBD1518C0773A={lvl=35,domain="ia",type={1}}
,q45291A7E4F03F551={lvl=35,domain="ia",type={1}}
,q6CD2755A15A473D8={lvl=35,domain="ia",type={1}}
,q7E93C26C09BCD846={lvl=35,domain="ia",type={1}}
,q538DD6B3B3731F55={lvl=35,scene="Perspice",type={1,3}}
,q00EDD5FD00000000={lvl=35,type={6,11}}
,q43859612C1178FC1={lvl=35,scene="Chancel of Labors",type={4},giver='U068B93E466090425'}
,q409AD1AA4E60BE63={lvl=35,domain="ia"}
,q06C0F3014411D05B={lvl=35,domain="ia"}
,q18F832191CF23241={lvl=35,domain="ia"}
,q1F0A07EB35CADA63={lvl=35,domain="ia"}
,q1F6404613A2B7D37={lvl=35,domain="ia"}
,q036FF0C3B8F026E0={lvl=35,scene="Cloudbourne Cavern",type={1,9}}
,q4B6510A99B486195={lvl=35,type={18,1,10},giver='U6631E6AD7919EE75'}
,q4AC623126779B8B8={lvl=35,scene="Granitewood Crossing",type={8,10,4},giver='U0F1D15586696BA42'}
,q70B89164AB3BEC63={lvl=35,type={5},giver='U2BDD0D2C64F7258C'}
,q74001EC9B4325EA9={lvl=35,type={5},giver='U2BDD0D2C64F7258C'}
,q141A4A937D67E98C={lvl=35,scene="Granitewood Crossing",type={6},giver='U0F1D15586696BA42'}
,q0BF0D29A5977DE0A={lvl=35,scene="Granitewood Crossing",type={13}}
,q27BFE53A88DD2F9B={lvl=35,scene="Granitewood Crossing",type={13}}
,q208CCE00452D79D2={lvl=35,domain="ia",type={1,2,12}}
,q30951855328378F2={lvl=35,domain="ia",type={12,1,2}}
,q5DEB147356F8FB6B={lvl=35,domain="ia",type={2,12,1}}
,q689A7E2005FF91A6={lvl=35,domain="ia",type={12,2,1}}
,q19660E79F22D49A8={lvl=35,scene="Keenblade Mill",type={4,3}}
,q6448D454BBB6D0E6={lvl=35,scene="Granitewood Crossing",type={4,19},giver='U0F1D15586696BA42'}
,q0C74B6AA9BC13C11={lvl=35,domain="pvp",giver='U0FCD909B4ABB28A9'}
,q69A530C4649615A8={lvl=35,scene="Granitewood Crossing",type={1},giver='U0F1D15586696BA42'}
,q0370BCC4C49D2646={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q0C3043ACC125EDD0={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q15F4A6A58C256F73={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q2535DF45960F7C6A={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q376A152E5989C1C0={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q53A73E4FF227BBF5={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q548BE37566120C41={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q5B864690BC6A2356={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q68E4AF64129E1D02={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q74CA4F7290282F2B={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q0EE305D2FA9C4FED={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q42AEE86F147BEE5A={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q43A1D8BC9207702E={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q4F60A3938297655C={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q52CCD5DBA1DE9961={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q15B448D739617787={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q18E9A5371DE6806B={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q3EC81C9599D793DE={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q557A209F0B71E702={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q7C1CE72299A7AE32={lvl=35,domain="guild",giver='U75FBE0CA773819E9'}
,q256E87DC7EC69F64={lvl=35,domain="ia"}
,q3214CE623A5AD38A={lvl=35,domain="ia"}
,q389DF26DF74D4CD3={lvl=35,scene="Granitewood Crossing",type={15}}
,q56F392297075998B={lvl=35,domain="ia"}
,q6170B7890E21D04F={lvl=35,domain="ia"}
,q6E5510D0400BD6F0={lvl=35,domain="ia"}
,q00B9BFFEBFF509DC={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q1A719FF5CD536655={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q278769FC923A21A0={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q3A9AD2ACD0D4FEDB={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q42CF83A6FFECE457={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q50AAE2ACF6F1112C={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q6BFCE01CF7A0E2D4={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q6E0ED79009C2CB28={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q72E6D6F2AE8FB70D={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q76A5B392D3F5B1B1={lvl=35,domain="guild",giver='U501D431647F9ADB3'}
,q63F88DCB04001BF1={lvl=35,domain="ia",type={2,1,12}}
,q0E78DB459E8A1FAB={lvl=35,scene="Granitewood Crossing",type={1},giver='U0F1D15586696BA42'}
,q004F92583E4A3088={lvl=35,domain="ia",type={1}}
,q098D3EF7199832B6={lvl=35,domain="ia",type={1}}
,q2802D585712A4751={lvl=35,domain="ia",type={1}}
,q4AA3AAD566DA9437={lvl=35,domain="ia",type={1}}
,q6FD18ED556BEF00A={lvl=35,domain="ia",type={1}}
,q06EAAA3440AE32DB={lvl=35,domain="pvp",giver='U6C2F9BF5136514D7'}
,q01109CEC00000000={lvl=35,type={3,1}}
,q0874535800000000={lvl=35,type={1,3}}
,q2FFD9F7C00000000={lvl=35,scene="Cloudbourne Cavern",type={1}}
,q499E54BD00000000={lvl=35,type={3}}
,q72F7C48800000000={lvl=35,type={3}}
,q00EDD60000000000={lvl=35,type={6,11}}
,q212C040104AFD4C7={lvl=35,scene="Cloudbourne Cavern",type={4},giver='U2ABB3D6E2997E0A9'}
,q0C62CD5E37362BDE={lvl=35,type={8},giver='U2FC08E9446C6F348'}
,q778A3B6F484E7930={lvl=35,domain="ia",type={22,2}}
,q5824229D95E2779B={lvl=35,type={1,18,16}}
,q64B272311306490B={lvl=35,domain="ia",type={2,22}}
,q576D020E724A15F1={lvl=35,domain="pvp",giver='U7970CCE43478A898'}
,q7F46D1075A09BC90={lvl=35,domain="ia",type={1,2,12}}
,q596F2A2AE48156F8={lvl=35,domain="pvp",giver='U186DC1D6050DDD2A'}
,q00EDD5FE00000000={lvl=35,type={6,11}}
,q2F183293BA31FBD0={lvl=35,domain="pvp",giver='U186DC1D6050DDD2A'}
,q39E3D598CF329ADC={lvl=35,domain="pvp",giver='U186DC1D6050DDD2A'}
,q3D2C163AC6979FA9={lvl=35,scene="Chancel of Labors",type={8},giver='U068B93E466090425'}
,q4900EA96BB52EE54={lvl=35,scene="Chancel of Labors",type={13},giver='U061A986647F75203'}
,q2BEB9163BF1E4200={lvl=36,giver='U501547FD720B84FB'}
,q6521BB0E26E046EA={lvl=36,giver='U622E114B42B015A5'}
,q362911E5CA362B45={lvl=36,scene="Trapper's Rest",type={8},giver='U2009D6BB5427124C'}
,q04E6B6E685A58BC9={lvl=36,giver='U67AAD2C737DB135E'}
,q4FA1BAD6C2A38B9B={lvl=36,giver='U622E114B42B015A5'}
,q42A0CEDC9D50C815={lvl=36,giver='U11DC56B90147B1C0'}
,q7517C52796AD1AB6={lvl=36,scene="Trapper's Rest",type={4,6},giver='U2F8F6B674EE1B548'}
,q2E77D32DF4E2FB62={lvl=36,giver='U622E114B42B015A5'}
,q1A84B850937749B8={lvl=36,giver='U67AAD2C737DB135E'}
,q2933ADD391706083={lvl=36,giver='U1A627B216BFC901B'}
,q28020172B6818602={lvl=36,giver='U537645C326771F2C'}
,q7311B3FBE0FC2814={lvl=36,scene="Three Springs",giver='U622E114B42B015A5'}
,q2C989D690B133129={lvl=36}
,q4848117FCF6D321A={lvl=36,scene="Lantern Plateau",type={8},giver='U1625F73C2E866455'}
,q74890EE5B1DE6D30={lvl=36,scene="Lowlands Gulley",giver='U11DC56B90147B1C0'}
,q32AE9EB7318863E5={lvl=36,use={{key='I63C89E1F5B498D57,DF8FDBB7436A2FB7,,,,,,', count=4}},giver='U67AAD2C737DB135E'}
,q0E8DBA2845EB79C2={lvl=36,giver='U3BEF89FC1E1B73D5'}
,q33EEE6456BD9CEC0={lvl=36,giver='U622E114B42B015A5'}
,q366A47EE681D6288={lvl=36,giver='U622E114B42B015A5'}
,q6C58AC1384AF9C73={lvl=36,giver='U2100504C4B095914'}
,q2D97FE3EDC37470B={lvl=36,scene="Trapper's Rest",type={4},giver='U128405477F11C7E5'}
,q28A9B7CA8E796317={lvl=36,giver='U622E114B42B015A5'}
,q0B0F738D1F8415A2={lvl=36,scene="Trapper's Rest",type={4},giver='U34E79DED6EB39129'}
,q1F548222E3EC2001={lvl=36,giver='U7691CD9F460E089A'}
,q786D3B12BE36B39A={lvl=36,giver='U67AAD2C737DB135E'}
,q345ADD54AF4EF00E={lvl=36,giver='U537645C326771F2C'}
,q5CAEA8853359ADE3={lvl=36,scene="Trapper's Rest",type={6,1},giver='U2F8F6B674EE1B548'}
,q795D0DA2BEED43E1={lvl=36,giver='U537645C326771F2C'}
,q1494F4BC7DAE1E01={lvl=36,giver='U622E114B42B015A5'}
,q09995845EAD3B795={lvl=36,scene="Lowlands Gulley",type={1},giver='U3BEF89FC1E1B73D5'}
,q0E9F9EF3EE5F0819={lvl=36,giver='U3BEF89FC1E1B73D5'}
,q0A3A910DAFE2C419={lvl=36,giver='U11DC56B90147B1C0'}
,q52F1810AEA8C38E6={lvl=36,giver='U537645C326771F2C'}
,q0079A43C00000000={lvl=36,type={3}}
,q120F2718CCDA4836={lvl=36,giver='U67AAD2C737DB135E'}
,q78B6A4AA3FA03C6B={lvl=36,giver='U3AD26F474632D4F2'}
,q697227BECD52617B={lvl=36,giver='U1A627B216BFC901B'}
,q2BF3171006DB7414={lvl=36,scene="Timberveil",giver='U67AAD2C737DB135E'}
,q0FD4D62219BD139E={lvl=36,giver='U67AAD2C737DB135E'}
,q539C2D5000000000={lvl=36,scene="Trapper's Rest",type={6}}
,q1F1C7FBBF9DBCE18={lvl=36,scene="Perspice",type={8},giver='U57A2BAB723550C52'}
,q52D8787DBA3E7E3F={lvl=36,scene="Stalwart Rise",type={4},giver='U1625F73C2E866455'}
,q6EB3D0540645FC18={lvl=36,scene="Trapper's Rest",type={22},giver='U34E79DED6EB39129'}
,q329B7DCB21044503={lvl=36,scene="Trapper's Rest",type={6,4},giver='U2F8F6B674EE1B548'}
,q1D1AD9EC6BF4F7FF={lvl=36,scene="Trapper's Rest",type={4},giver='U35745F7E26D938E0'}
,q2CE381B5433AB9FC={lvl=36,giver='U39268F32295BD69A'}
,q7213FF2791AD10C3={lvl=36}
,q154749E0F3842D9B={lvl=36,scene="Trapper's Rest",type={1},giver='U35745F7E26D938E0'}
,q5B8686F82DE7F1BD={lvl=36,scene="Trapper's Rest",type={4},giver='U35745F7E26D938E0'}
,q7E762DDD0BB82EC6={lvl=36,giver='U537645C326771F2C'}
,q3BD7216C00000000={lvl=36,type={4,3}}
,q78F2A05100000000={lvl=36,type={3,4}}
,q169556692CD4864C={lvl=36,giver='U2F4570800146F836'}
,q30BB1FFD00000000={lvl=36,scene="Trapper's Rest",type={6}}
,q3B05DA0CB9D6AD1B={lvl=36,giver='U109F9B385E3ED9C4'}
,q381187D7D68B55A9={lvl=36,giver='U11DC56B90147B1C0'}
,q45DEA07AD63A5449={lvl=36,giver='U3BEF89FC1E1B73D5'}
,q7A130809E0F016AD={lvl=36,giver='U622E114B42B015A5'}
,q1C5077D9E02740E5={lvl=36,giver='U448A3E3B5AC6BE58'}
,q7C80B684FCAD1FA8={lvl=36,giver='U537645C326771F2C'}
,q59A3109892DD902A={lvl=36}
,q2AD22F53D4F50784={lvl=37,giver='U258F393429662983'}
,q167AEB4FDE7BB31D={lvl=37,giver='U3BEF89FC1E1B73D5'}
,q5F858E569FAE145A={lvl=37,giver='U567CC6B01EAE08AF'}
,q1EC5574247313E90={lvl=37,type={17}}
,q661F786FE8DC2971={lvl=37,type={17}}
,q3B912D0AA44CBD87={lvl=37,giver='U080ECDB714C13929'}
,q5BFD4215F012664D={lvl=37,giver='U11DC56B90147B1C0'}
,q0267F79BFE9A27BB={lvl=37,type={17,7}}
,q2E0282ECB2DA4568={lvl=37,type={7,17}}
,q02F135236B6652DF={lvl=37,giver='U162ECF29706405AD'}
,q189058AAF7C03AC9={lvl=37}
,q17DAC0D0A445CCA8={lvl=37,type={17}}
,q0BCF654DA17DE50C={lvl=37}
,q249C982D98DB486D={lvl=37}
,q436F681485A52EB3={lvl=37}
,q630F0D69C749AA94={lvl=37}
,q7462035D195D0C54={lvl=37}
,q7D4593BEE7FBDE2E={lvl=37}
,q731E9EA7F9210980={lvl=37,giver='U11DC56B90147B1C0'}
,q7CF2D1C60D2F1B42={lvl=37,type={17}}
,q5454585682F86602={lvl=37,giver='U4020765C3EE2EB6E'}
,q5840353DF5F0B0B0={lvl=37,scene="Stalwart Rise",type={8},giver='U128405477F11C7E5'}
,q6266670EE02E90CA={lvl=37,giver='U415A7B30449AC4AE'}
,q0D16044DA175B978={lvl=37,scene="Lantern Hook",type={8,1},giver='U53EC980871B3B4E6'}
,q797026E9BCA72E20={lvl=37,scene="Stalwart Rise",type={6,4},giver='U6B71D622536914C8'}
,q4D7E9291ABD3AC1E={lvl=37,type={1},giver='U53EC980871B3B4E6'}
,q1315C724C8395650={lvl=37,giver='U4ACC01015EA697CE'}
,q0AD616368A77F652={lvl=37,giver='U162ECF29706405AD'}
,q1422FAF427EC8478={lvl=37,giver='U2F79EA29690221D4'}
,q52B89AEDFC61F775={lvl=37,use={{key='I69AC5CCC20243CD6,0D2394D789DD5572,,,,,,', count=1}},giver='U3A3987831453A81B'}
,q41C42D67DA36A1BF={lvl=37,type={17}}
,q76B0AB37CED5E65F={lvl=37,scene="Stalwart Rise",type={4},giver='U35745F7E26D938E0'}
,q6A67BE93696B8EB7={lvl=37,scene="Lantern Hook",type={4},giver='U255BBC9410ED4123'}
,q059B8CE2D81A4FB8={lvl=37,giver='U4ACC01015EA697CE'}
,q509269FC942FEE27={lvl=37,scene="Stalwart Rise",type={6},giver='U584F1A337CF3A469'}
,q1EF2762F1825D864={lvl=37,type={17}}
,q58AD26388841959E={lvl=37,type={17}}
,q4344C9B3D7C1A687={lvl=37,giver='U620D798471205478'}
,q50998984E8C5552E={lvl=37,giver='U67AAD2C737DB135E'}
,q0BC43EF3EF930BD7={lvl=37,scene="Lantern Hook",type={4},giver='U2009D6BB5427124C'}
,q27F7C1DD6CBC4B1E={lvl=37,type={17}}
,q7B6F354A1BFD0777={lvl=37,scene="Lantern Hook",type={13},giver='U6B71D622536914C8'}
,q2A5B7A02A1C1F181={lvl=37,scene="Stalwart Rise",type={1}}
,q401D1F533BE31559={lvl=37,giver='U258F393429662983'}
,q3FBF09B665E1B61C={lvl=37,scene="Lantern Hook",type={6,4},giver='U53EC980871B3B4E6'}
,q36DB4E4BFC478276={lvl=37,scene="Timberveil",giver='U67AAD2C737DB135E'}
,q20D9132B9F69DE90={lvl=37,type={17}}
,q305E62C07B70904B={lvl=37,giver='U56F37B0936599FAF'}
,q751A098B8A033BA9={lvl=37,giver='U67AAD2C737DB135E'}
,q089DD499CE9A871D={lvl=37,giver='U2F79EA29690221D4'}
,q1EF44F402DD95B84={lvl=37,giver='U567CC6B01EAE08AF'}
,q239D1E2EF8CE1F2D={lvl=37,giver='U567CC6B01EAE08AF'}
,q7F436A5CB2FD6056={lvl=37,giver='U620D798471205478'}
,q60BF005E90759A5A={lvl=37,giver='U7891010D572D950B'}
,q331DC1379C7C7290={lvl=37,giver='U080ECDB714C13929'}
,q3F62A0E0007E2511={lvl=37,scene="Lantern Hook",type={8},giver='U53EC980871B3B4E6'}
,q146679A172C0AF44={lvl=37,type={17}}
,q305E506D16B9BEBA={lvl=37,giver='U16989EE31232AB7A'}
,q1BD7CB3B26E16ABE={lvl=37,giver='U567CC6B01EAE08AF'}
,q3632C597959AD173={lvl=37,giver='U7891010D572D950B'}
,q02DF8F03C5DC2FA8={lvl=37}
,q03516E6584EBD238={lvl=37,giver='U7891010D572D950B'}
,q7EE04AC782C298A1={lvl=37,giver='U162ECF29706405AD'}
,q14520154CAA50608={lvl=37,giver='U4020765C3EE2EB6E'}
,q1ED31400A13A987E={lvl=37,scene="Stalwart Rise",type={4},giver='U255BBC9410ED4123'}
,q5A20ADBD00000000={lvl=37,scene="Stalwart Rise",type={6}}
,q4988C56703D31B5C={lvl=37,giver='U3A3987831453A81B'}
,q70FDA54CE2044875={lvl=37,giver='U56F37B0936599FAF'}
,q74A0D97BCA2360F9={lvl=37,giver='U415A7B30449AC4AE'}
,q344F133100000000={lvl=38, grp=3,giver='U466F8E012F1FF1FB'}
,q67B34DF900000000={lvl=38, grp=3,giver='U3D8EA30F468E8E08'}
,q07210C3A715F1CF6={lvl=38}
,q608821E02F5F4B8B={lvl=38}
,q5F272B32AE045A8C={lvl=38,scene="Mongrel Foothills",type={1},giver='U443660404B2D5EC0'}
,q641AC0A841B295C7={lvl=38,giver='U4129F8785BE5246E'}
,q3FC8FE489443D25A={lvl=38,giver='U30CF3E0B3690334B'}
,q3CF127263808FD71={lvl=38,type={17,7}}
,q43BEAA6EF71C707D={lvl=38,scene="Centaurs' Stand",type={1},giver='U45CE2FBC52176E8A'}
,q300894DFB616F543={lvl=38,type={7,17}}
,q339347A998358013={lvl=38,type={17,7}}
,q396904FEFB9BA035={lvl=38,type={17,7}}
,q1E1EAE19B016C0D3={lvl=38,giver='U5A91BF037CB20149'}
,q7D1AB795D30C6E94={lvl=38,giver='U5A91BF037CB20149'}
,q390C5511F555C3B0={lvl=38,giver='U567CC6B01EAE08AF'}
,q6F7CBAD12561E33B={lvl=38}
,q19CD48AF9D61ADB1={lvl=38,giver='U30CF3E0B3690334B'}
,q3528AFBE78D2C19F={lvl=38,scene="Centaurs' Stand",type={6},giver='U2D6C438102531896'}
,q52D2575978D881F4={lvl=38,giver='U4BB22BE9233C5AC8'}
,q3C96A456C6C3E085={lvl=38,giver='U038BD63A76747697'}
,q2D805C636F47DBE5={lvl=38,giver='U038BD63A76747697'}
,q40506FC10A449673={lvl=38,giver='U2CFAE06910E0FD51'}
,q390A2EEDE6BDF547={lvl=38,scene="Centaurs' Stand",type={6},giver='U2D6C438102531896'}
,q01A82907DD523D33={lvl=38,giver='U2CFAE06910E0FD51'}
,q2D1995597369B789={lvl=38,giver='U349915D94134AA77'}
,q4AD7AFD5872A287D={lvl=38,giver='U4129F8785BE5246E'}
,q6409A44F00000000={lvl=38,scene="Lantern Hook",type={4},giver='U01B0CFE1308ED775'}
,q69203C7B1E638723={lvl=38,type={7,17}}
,q6AD8657F8CE8FEAF={lvl=38,type={7,17}}
,q52DEFBA4B21750BF={lvl=38,giver='U5A91BF037CB20149'}
,q1F6A1394934048D8={lvl=38,type={1,3,11},giver='U61B03D274C62A2A4'}
,q5BB435378F5044D9={lvl=38,type={1,11,3},giver='U700CF10618DE2658'}
,q4262779300000000={lvl=38,scene="Lantern Hook",type={4},giver='U7B3C2C6E75B5CA2F'}
,q2DEED1703C83DB64={lvl=38,type={10,1},giver='U1907DE8C69725616'}
,q4DBD8A85E897EC76={lvl=38,giver='U349915D94134AA77'}
,q79489D2EEB9AAD6A={lvl=38,scene="Lantern Hook",use={{key='I451C629F9882BFD0,1A8DE43C2E1EB907,,,,,,', count=6}},type={4},giver='U0698ECB90349A02F'}
,q2108A4F2EF7CBF2D={lvl=38}
,q1511E06C37293CD5={lvl=38,giver='U0D24E27516C50271'}
,q09ABED2500000000={lvl=38,scene="Centaurs' Stand",giver='U7EEB470A10F6B54D'}
,q600E222E2869F284={lvl=38,giver='U5A91BF037CB20149'}
,q04934F206B0A58BE={lvl=38,type={17,7}}
,q77B05F87A2CB9F41={lvl=38,type={17,7}}
,q7FF938F8F828C6E6={lvl=38,giver='U73B7B9944CA493A0'}
,q01641F44C0147F60={lvl=38,giver='U038BD63A76747697'}
,q69FF252A02EE43CE={lvl=38, grp=3,type={11,3},giver='U06153F5255E74A35'}
,q47125006B6515E66={lvl=38,giver='U1EB2C5657129239C'}
,q4D48EA30F45D7A8A={lvl=38,giver='U4129F8785BE5246E'}
,q4CC50CEDDB63C4F8={lvl=38,type={17}}
,q02E247CED860FC5B={lvl=38,giver='U038BD63A76747697'}
,q40BD35BCA3C0B8A8={lvl=38,scene="Centaurs' Stand",type={3},giver='U039EA4C744D7548C'}
,q74E3F541CA34B275={lvl=38,scene="Centaurs' Stand",type={1},giver='U45CE2FBC52176E8A'}
,q700239F7ED843BBA={lvl=38,scene="Centaurs' Stand",type={4},giver='U2D6C438102531896'}
,q2BB14DA357595DC5={lvl=38,type={17,7}}
,q6CE151E480EC1E0A={lvl=38,scene="Mongrel Foothills",type={4,6},giver='U1CDA67854E5C61CE'}
,q3150F74D73617E7C={lvl=38,scene="Mongrel Foothills",type={4},giver='U79B1EFA669C16E9B'}
,q660F07BC00000000={lvl=39,scene="Jagged Fringe",type={10,4},giver='U31279927705E77E8'}
,q2689753D8C498AFB={lvl=39,domain="pvp"}
,q5BD08691C6B80342={lvl=39,giver='U4129F8785BE5246E'}
,q3082C4A81F2433BC={lvl=39,domain="pvp"}
,q701FA7789CACF85A={lvl=39,scene="Jagged Fringe",type={4},giver='U4AD85894031876CB'}
,q69076FD6330E4390={lvl=39}
,q28EE918500000000={lvl=39,scene="Jagged Fringe",type={10,3},giver='U4FEAC8852B734DC3'}
,q6C14BAFD021324EE={lvl=39,giver='U038BD63A76747697'}
,q2914AEAD10DB4543={lvl=39,scene="Jagged Fringe",use={{key='I525A475922734DB2,7700D671FA2CE260,,,,,,', count=1}},type={10,1},giver='U4AD85894031876CB'}
,q126E120F6880D9F7={lvl=39,domain="pvp"}
,q30D9754229091407={lvl=39,giver='U2CFAE06910E0FD51'}
,q7E936C34EB1D4E54={lvl=39,domain="pvp"}
,q2B15FEBF2155846A={lvl=39,domain="pvp"}
,q2C6ED2C6F63DE43B={lvl=39,giver='U4129F8785BE5246E'}
,q764374EB6E30F89E={lvl=39}
,q21D7BA64F80D81A4={lvl=39}
,q4B7C41A860F65D46={lvl=39}
,q2F78FC2B76FFCCF0={lvl=39}
,q55439E11906C9C99={lvl=39,scene="Jagged Fringe",type={1},giver='U407BC83649D650DB'}
,q4FFCEC66843591C6={lvl=39}
,q55323599700DE4DC={lvl=39,giver='U5FB0E68F2DB0FB18'}
,q646934589C875C28={lvl=39,giver='U2B998DE038FA3632'}
,q44AACDDF24C58364={lvl=39,giver='U4129F8785BE5246E'}
,q78E2CF6BF0ECE201={lvl=39}
,q15E14CBDCF00D799={lvl=39,giver='U2CFAE06910E0FD51'}
,q0D16AA41B316AD22={lvl=39,giver='U2B998DE038FA3632'}
,q1F1A3DFDE8E65BC8={lvl=39,giver='U4D9FE4611CDAACB7'}
,q6343D7BB625171EC={lvl=39}
,q0D9DF4A8A7E341A1={lvl=39,scene="Jagged Fringe",type={1},giver='U407BC83649D650DB'}
,q37F0029177D98587={lvl=39,scene="Jagged Fringe",type={4},giver='U34BB14B671B612A1'}
,q40CCBF896B857592={lvl=39,domain="pvp"}
,q4DC510C98E7D1C8A={lvl=39}
,q57E8304DF60C5754={lvl=39,giver='U4129F8785BE5246E'}
,q326E283A947E15C8={lvl=39,giver='U038BD63A76747697'}
,q4D2EAE0BCE7896EF={lvl=39,scene="Jagged Fringe",type={1},giver='U3AF85FFA601BF09B'}
,q310F044A565894B0={lvl=39}
,q399EE5409F60A0C6={lvl=39}
,q7E58F36F5D4D01C0={lvl=39}
,q26412D4DA27D33D2={lvl=39,giver='U4D9FE4611CDAACB7'}
,q666A2F2DB7A425EA={lvl=39,type={17}}
,q6C8D8AFBDAE762FA={lvl=39,giver='U4129F8785BE5246E'}
,q7A889F23DD7FD450={lvl=39,giver='U22DFD6994F81457C'}
,q22673E4FB6EACC08={lvl=39,scene="Jagged Fringe",type={15},giver='U407BC83649D650DB'}
,q749789D5C8026FB1={lvl=39, grp=2,type={3},giver='U1A99F9996AB32BB3'}
,q00C3B1796B9CAFE6={lvl=39}
,q16C31BD48A33D6BE={lvl=39}
,q4847BC42B9A46F53={lvl=39,giver='U2CFAE06910E0FD51'}
,q1FE5EBB2F305713B={lvl=39,giver='U30CF3E0B3690334B'}
,q70610A8D9C76BE0F={lvl=39,giver='U30CF3E0B3690334B'}
,q1B36F85E0E3A1D8B={lvl=39,scene="Jagged Fringe",use={{key='I0BC0F7D5834CF23A,324076C37D68FC05,,,,,,', count=5}},type={10},giver='U34BB14B671B612A1'}
,q5B4E564B52B3C9E8={lvl=39,domain="pvp"}
,q600C39289F192900={lvl=39,giver='U038BD63A76747697'}
,q60432A84C57E5B5F={lvl=39,giver='U35C1F879164BC05E'}
,q6D0E055B7A212986={lvl=39,type={17}}
,q55D0D10293803F64={lvl=39,scene="Lantern Hook",type={4},giver='U09055C1B28FED451'}
,q47B0DE8ED6FFE395={lvl=39}
,q50A266D8E9AA6078={lvl=39,scene="Jagged Fringe",type={13}}
,q0FF5D560B640F39B={lvl=39,giver='U4129F8785BE5246E'}
,q0E0CC99997F27B36={lvl=39,giver='U65CEA59B1A5071A6'}
,q0A860ED3A86CADC9={lvl=39,giver='U038BD63A76747697'}
,q68F7DF578C5D8216={lvl=39,domain="pvp"}
,q2C4EE83340198219={lvl=39,giver='U038BD63A76747697'}
,q735F85B575716A16={lvl=39}
,q18E171F2E195ED30={lvl=39,giver='U5A91BF037CB20149'}
,q47B56B2FC56856F2={lvl=39,giver='U598F245D33D15AFC'}
,q24664F7AAF5D9B99={lvl=39}
,q2D068BE1687B4D55={lvl=39,giver='U2CFAE06910E0FD51'}
,q685433C900000000={lvl=40,type={3,1}}
,q37F9297D19EBD174={lvl=40,type={3},giver='U598F245D33D15AFC'}
,q1BF386A5FF2B09D1={lvl=40,scene="Lantern Hook",type={4,1},giver='U3DCEE26A37993435'}
,q39EF58B78541154E={lvl=40,type={4},giver='U280651E7448A7BE9'}
,q308F9F580F948CFE={lvl=40,giver='U610B81787268A249'}
,q29D2855682D76FFC={lvl=40,giver='U4129F8785BE5246E'}
,q1FE914589F788C6B={lvl=40,type={6},giver='U120B9C592F754D56'}
,q6560E7BB00000000={lvl=40,scene="Breaker's Camp",type={8}}
,q31BEECB8A633C822={lvl=40,scene="Mongrel Foothills",type={1},giver='U3DCEE26A37993435'}
,q724FDF10C21047B8={lvl=40,scene="Stormbrood Lair",use={{key='I10D3090875096FCA,433FFE446ABBC33A,,,,,,', count=5}},type={10},giver='U26DE876D40324221'}
,q0F36F482304902D0={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q13BFBB5D71D0DF6B={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q175A0D2477099889={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q17BCA5AFE09D18E9={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q1E16A03AF1ED7071={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q1FE87DB8AF0106F1={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q2C6BBED1A2F72021={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q37AE1225AEC06F7F={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q3D92E9D4FB4A7B8A={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q3E4841D825E84C66={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q1D70EDB92577AD13={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q4D614A2EBF30964F={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q64E3DC4336676F7B={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q25EB572ECB7CAA26={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q3AD7647EB700E45F={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q3DDDF4AFA473FCE3={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q5EDA56B2F3140627={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q71229824EAC187F5={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q7CEEAFCB7E23C813={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q7FD9B1239D58AC86={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q004D19C879DD9B51={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q57D43531FDC72FFF={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q6695AC62D12E1FE0={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q679FDAE90D954FFF={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q711831B0D932E920={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q00EE13628B0F0813={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q209D5367115A755F={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q4D80272AEDA44CC6={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q4F93BA4A49187FEC={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q790C08F3939B69F3={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q431C8C43B0D4B50F={lvl=40,type={5,8},giver='U2FC08E9446C6F348'}
,q26A0A4DD00000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q5A029C2E00000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q501A6BB000000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q65DA7E2C00000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q488614C4A66444D8={lvl=40,giver='U525E7E3B7FE09361'}
,q3520AC5406BC9230={lvl=40,giver='U610B81787268A249'}
,q146EC9CAC777F05A={lvl=40,giver='U038BD63A76747697'}
,q34BCDAD1022376EC={lvl=40,giver='U5FB0E68F2DB0FB18'}
,q53AF37F285FC644C={lvl=40,type={4},giver='U6C926E295B084F77'}
,q750CE24AF8A35415={lvl=40,giver='U598F245D33D15AFC'}
,q71D4C9F400EAF7FA={lvl=40,giver='U65CEA59B1A5071A6'}
,q5671BFA99004F51A={lvl=40,type={3},giver='U598F245D33D15AFC'}
,q469087EA8F031BE4={lvl=40,giver='U2100504C4B095914'}
,q1466B2064BC87E5C={lvl=40,giver='U2B998DE038FA3632'}
,q0A73AEB27434F831={lvl=40,type={4},giver='U5F41BCCB53B71223'}
,q3DBB2D96DDEA85E4={lvl=40,type={8,5},giver='U03A3E8511875EF5A'}
,q2BCED9D295DF19B0={lvl=40,scene="Lantern Hook",type={8}}
,q4450E59ADC6151E6={lvl=40,scene="Whitefall",type={5}}
,q68FDBCC6F6907336={lvl=40,type={4},giver='U6B4B73484A2794E4'}
,q0BDF4E6155A5A140={lvl=40}
,q103AEF5E3D8874D9={lvl=40}
,q390A19D30981DF55={lvl=40,giver='U2B998DE038FA3632'}
,q5A286BABE46B0193={lvl=40,scene="Lantern Hook",type={8},giver='U09055C1B28FED451'}
,q6DF04C7DB2DCA974={lvl=40,type={8},giver='U26DE876D40324221'}
,q5FA7F174F2DAD8B3={lvl=40,giver='U2B998DE038FA3632'}
,q422DFE0BEA86D268={lvl=40,scene="Stormbrood Lair",type={4},giver='U5F1956D02EBD628B'}
,q3DBDFB9C39916196={lvl=40,giver='U5A91BF037CB20149'}
,q12A1304B84FC6B46={lvl=40,type={1}}
,q19B9F2A400000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q3A902A1600000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q4C534112A0CF01DA={lvl=40,type={5,8},giver='U22DFD6994F81457C'}
,q6766BBC5C0D41681={lvl=40, grp=3,type={1}}
,q308E4EF602D2BF37={lvl=40, grp=3,type={1}}
,q2FF549AB65AFB8CD={lvl=40, grp=3,type={1}}
,q5FC7CB3EE5F35767={lvl=40,type={4},giver='U1992AEF41E5A52CF'}
,q681C0C1726402620={lvl=40,type={4},giver='U13A4DDC91D5A9CFA'}
,q25163D6BC16C0687={lvl=40,scene="Stormbrood Lair",type={4}}
,q054DA0227F28D62F={lvl=40,type={13}}
,q192DA5E7FBFDC35A={lvl=40,type={13}}
,q0F8D64DEBB6FD56C={lvl=40}
,q098813D800000000={lvl=40,scene="Cloudbourne Tarn",type={8}}
,q5B62BEDC00000000={lvl=40,scene="Hammerknell Fortress"}
,q7731F211E859130C={lvl=40,type={1},giver='U1BCFBE470EE5F69A'}
,q154446A5AAB47885={lvl=40,type={3},giver='U35C1F879164BC05E'}
,q366DAC808B9EB7BC={lvl=40,scene="Jagged Fringe",type={13},giver='U4AD85894031876CB'}
,q3C39FF1797CD6178={lvl=40,type={6},giver='U1BF49D4A10217873'}
,q4EDD0395E8EEDF95={lvl=40,type={1,4},giver='U2B998DE038FA3632'}
,q583E99FED0B85B0A={lvl=40,giver='U5FB0E68F2DB0FB18'}
,q10063EA6A4BD33B2={lvl=40,giver='U22DFD6994F81457C'}
,q5BE654A8ED99A509={lvl=40,scene="Lantern Hook",type={8},giver='U3DCEE26A37993435'}
,q0C32FD0EAB603887={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q10B6E431DCBADEA1={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q110BAAB46CAB80B3={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q207CB5928AD28843={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q23A0AE5596D8E973={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q292F922EC1728C07={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q405791759B17A46C={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q46A62409F5E7602B={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q4FF8AF9D97D8C943={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q576E81486C723E77={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q05327F30B1147B7B={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q0BC7A8B3BF4A5845={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q725DF1F49A08250E={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q01CA5F48E55AFB73={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q046CC56CBBB1699B={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q4C2025E41DCA2819={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q583244C182577B94={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q6E0E6D3AFA25E91A={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q721E03B411AEAD44={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q7DFE7780397EDA19={lvl=40,domain="guild",giver='U75FBE0CA773819E9'}
,q01627F62B8AAD8D9={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q0EA198F817152625={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q27CC82BA8BB55253={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q28ACDD818E6322DD={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q2EF675BB1D808F51={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q33B780146ADB07D3={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q39A2EEAA370B00F0={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q3D40E3A9187980DB={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q51199D9830117509={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q769BC831B46D904B={lvl=40,domain="guild",giver='U501D431647F9ADB3'}
,q52F42265806AA354={lvl=40,scene="Stormbrood Lair",type={1},giver='U26DE876D40324221'}
,q49046BE4E62B15F3={lvl=40,giver='U75526206316307F2'}
,q7C055356D5F642C4={lvl=40,type={1},giver='U2AA15303049E1BD1'}
,q44E49F5A00000000={lvl=40,type={6}}
,q706EDF7900000000={lvl=40,type={6}}
,q33C613FE00000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q64BEE74B00000000={lvl=40,scene="Hammerknell Fortress",type={5}}
,q2683F220548E15FC={lvl=40,giver='U1B806D2E68E0050E'}
,q7A9610ED00000000={lvl=40,giver='U2F4570800146F836'}
,q216C0D35DCFC20F9={lvl=40,giver='U448A3E3B5AC6BE58'}
,q11E0A52E95CD4B95={lvl=40,domain="guild"}
,q31C88FAF67DB8ED4={lvl=40,domain="guild"}
,q658AECDCB040C931={lvl=40,domain="guild"}
,q521C868AA51931D0={lvl=40, grp=2,type={3},giver='U35C1F879164BC05E'}
,q12585C25CEE272D7={lvl=40,giver='U2B998DE038FA3632'}
,q390DDF987FB5B3F6={lvl=40,scene="Stormbrood Lair",use={{key='I502E1935224E7648,F9F9B370EFD36BD4,,,,,,', count=3}},type={10}}
,q66AFC2FB602629D6={lvl=40,giver='U22DFD6994F81457C'}
,q47A1A993B21868BB={lvl=40,scene="Stormbrood Lair",type={4},giver='U17B0E7C20D00A91C'}
,q448D9543BF02FD73={lvl=40,giver='U5A91BF037CB20149'}
,q10D0DECE9868EC15={lvl=40}
,q7CAE6A12A83BF0B3={lvl=40,giver='U2B998DE038FA3632'}
,q271450EACD1C911F={lvl=40,giver='U65CEA59B1A5071A6'}
,q10BCF06F93A1CA2D={lvl=40}
,q4292667563352348={lvl=40}
,q1810705DCDFE4846={lvl=40,type={3},giver='U1A99F9996AB32BB3'}
,q2570BE83021E4495={lvl=40,giver='U525E7E3B7FE09361'}
,q52E2FC07D38445C5={lvl=40,giver='U5FB0E68F2DB0FB18'}
,q3DBA270400000000={lvl=41, grp=3,giver='U3D8EA30F468E8E08'}
,q6E6158C800000000={lvl=41, grp=3,giver='U466F8E012F1FF1FB'}
,q7BF2194300000000={lvl=41,scene="Chancel of Labors",type={8}}
,q351F007FD59D002E={lvl=41,scene="Harlan's Lament",type={6,4},giver='U20DA99B47932861E'}
,q2019BFA71DA1789C={lvl=41,craft={{key='I3F74F085CF4DAA1B,EF3EFF5D42EA648C,,,,,,', count=6},{key='I186C7C8EDA8D97BC,02D7B7263B5B2E63,,,,,,', count=2}},type={4}}
,q4C128C3F03159D6D={lvl=41,craft={{key='I17928695F0E94765,0D3270908CE5954E,,,,,,', count=7}},type={25}}
,q6669158291DF8D84={lvl=41,craft={{key='I17928695F0E94765,0D3270908CE5954E,,,,,,', count=7}},type={25}}
,q6AD9FD062F03FC4B={lvl=41,craft={{key='I5D24419C68580282,378AA9966FEDD765,,,,,,', count=8}},type={4}}
,q21B621E2C08898DF={lvl=41,craft={{key='I5D24419C68580282,378AA9966FEDD765,,,,,,', count=8}},type={4}}
,q11C2B968A73FA0BF={lvl=41,craft={{key='I005EB96656DF7EB1,02B24026D1F036E5,,,,,,', count=6},{key='I6F3C2DE2BA5F52DB,B8C8B7A8D666F82D,,,,,,', count=1},{key='I7408B0A7B939EF1C,397CDEAC893E3AFB,,,,,,', count=1}},type={4}}
,q0FDA632BE1AA4EA0={lvl=41,craft={{key='I3487F23347DF5317,A33D7C1FBE1597D3,,,,,,', count=7}},type={25}}
,q110A78EBAFEE6D1B={lvl=41,craft={{key='I3487F23347DF5317,A33D7C1FBE1597D3,,,,,,', count=7}},type={25}}
,q3B11CA83F1207CF6={lvl=41,craft={{key='I3F55586874D59458,FBEAA4E37E9C9775,,,,,,', count=7}},type={25}}
,q5185C8ADBFFC7112={lvl=41,craft={{key='I3F55586874D59458,FBEAA4E37E9C9775,,,,,,', count=7}},type={25}}
,q064A647619593D0D={lvl=41,craft={{key='I5D24419C68580282,378AA9966FEDD765,,,,,,', count=6},{key='I30595E3358AB2D50,77813CCEDF557EEB,,,,,,', count=2}},type={4}}
,q7652FCCFDACA66A9={lvl=41,craft={{key='I4549FE7A9387B7C5,FC4641CDD6818BF1,,,,,,', count=6},{key='I2EE8CF23C7288AFC,5A5335A38B386DEA,,,,,,', count=2}},type={4}}
,q4F06E3DDA26DE07E={lvl=41,craft={{key='I4BF8CF4ECD29D2A4,1D295C986F344825,,,,,,', count=4},{key='I5D24419C68580282,378AA9966FEDD765,,,,,,', count=4}},type={4}}
,q28FFBD6CCCF0BE88={lvl=41,craft={{key='I51F572104218914E,DD9FDBED3EF60744,,,,,,', count=4},{key='I3F74F085CF4DAA1B,EF3EFF5D42EA648C,,,,,,', count=4}},type={4}}
,q628BDF22CD0823A6={lvl=41,craft={{key='I7408B0A7B939EF1C,397CDEAC893E3AFB,,,,,,', count=1},{key='I005EB96656DF7EB1,02B24026D1F036E5,,,,,,', count=7}},type={4}}
,q46C460DA1F12A2A3={lvl=41,craft={{key='I50BAF6BD75C8C2E3,379E6E48E910E033,,,,,,', count=7}},type={25}}
,q5995DA1FE9669280={lvl=41,craft={{key='I50BAF6BD75C8C2E3,379E6E48E910E033,,,,,,', count=7}},type={25}}
,q76B0C4448BF80247={lvl=41,craft={{key='I4549FE7A9387B7C5,FC4641CDD6818BF1,,,,,,', count=8}},type={4}}
,q3DA7EBCED8827913={lvl=41,craft={{key='I4549FE7A9387B7C5,FC4641CDD6818BF1,,,,,,', count=8}},type={4}}
,q117812D921D61C04={lvl=41,craft={{key='I56032B15614543D8,308B021007666461,,,,,,', count=7}},type={25}}
,q75F63CCCDA1ECF5A={lvl=41,craft={{key='I56032B15614543D8,308B021007666461,,,,,,', count=7}},type={25}}
,q41389F245D4517E0={lvl=41,craft={{key='I6F3C2DE2BA5F52DB,B8C8B7A8D666F82D,,,,,,', count=1},{key='I005EB96656DF7EB1,02B24026D1F036E5,,,,,,', count=7}},type={4}}
,q62A538D882CB9FE8={lvl=41,craft={{key='I30595E3358AB2D50,77813CCEDF557EEB,,,,,,', count=2},{key='I5D24419C68580282,378AA9966FEDD765,,,,,,', count=2},{key='I4BF8CF4ECD29D2A4,1D295C986F344825,,,,,,', count=4}},type={4}}
,q5BC305C2FAA37D1C={lvl=41,craft={{key='I331239F78C7549E8,0344EB886873E94B,,,,,,', count=7}},type={25}}
,q6C4CC532DB864EB2={lvl=41,craft={{key='I331239F78C7549E8,0344EB886873E94B,,,,,,', count=7}},type={25}}
,q6B458AB09D5D6F35={lvl=41,craft={{key='I40A14CFD78D4D6DB,6ADAE33BD96AEBBA,,,,,,', count=7}},type={25}}
,q7F479E5B439A3C90={lvl=41,craft={{key='I40A14CFD78D4D6DB,6ADAE33BD96AEBBA,,,,,,', count=7}},type={25}}
,q4CB2C78A9528466F={lvl=41,craft={{key='I1D0FEC1654207A6C,393D299FE919997A,,,,,,', count=7}},type={25}}
,q4FB8CD8BC93AA091={lvl=41,craft={{key='I1D0FEC1654207A6C,393D299FE919997A,,,,,,', count=7}},type={25}}
,q2CE7BC7DF01575CC={lvl=41,craft={{key='I15CFD476BE49008A,0E4FB15118BE3F70,,,,,,', count=7}},type={25}}
,q5E96DE80EDAF3621={lvl=41,craft={{key='I15CFD476BE49008A,0E4FB15118BE3F70,,,,,,', count=7}},type={25}}
,q1A8A56ED886128CB={lvl=41,craft={{key='I0757969165BEB51D,067ACE85B401346C,,,,,,', count=7}},type={25}}
,q76FD0419018BE605={lvl=41,craft={{key='I0757969165BEB51D,067ACE85B401346C,,,,,,', count=7}},type={25}}
,q5FA5C13E0315F111={lvl=41,craft={{key='I124B435879D193C4,EF940C6630A90D89,,,,,,', count=7}},type={25}}
,q75B00069BDEED581={lvl=41,craft={{key='I124B435879D193C4,EF940C6630A90D89,,,,,,', count=7}},type={25}}
,q05DEE654CCFBF598={lvl=41,craft={{key='I005EB96656DF7EB1,02B24026D1F036E5,,,,,,', count=8}},type={4}}
,q5BF66B7F852ED8D6={lvl=41,craft={{key='I005EB96656DF7EB1,02B24026D1F036E5,,,,,,', count=8}},type={4}}
,q2847EB3CB974308A={lvl=41,craft={{key='I7FBEDDD0AE6D9A16,FE9609150BDFA61E,,,,,,', count=7}},type={25}}
,q42044DCEF535F43C={lvl=41,craft={{key='I7FBEDDD0AE6D9A16,FE9609150BDFA61E,,,,,,', count=7}},type={25}}
,q49CFF6DE00000000={lvl=41,scene="Chancel of Labors",type={4}}
,q0E3247B5F3FEDBF7={lvl=41,scene="Harlan's Lament",use={{key='I1C55D8422E0AE0B0,A86ABC754EC8FBF3,,,,,,', count=1}},type={4},giver='U1CFA4E0D5C55798B'}
,q483C230BFBF7E5D1={lvl=41,scene="Spitescar Wash",type={4,10,1},giver='U7D4E84704B52DAAD'}
,q0C7F0CEBF56E5EFC={lvl=41,scene="Harlan's Lament",type={1},giver='U7F62DE454C8B3CE8'}
,q69BF09D35E4AFF23={lvl=41,scene="Spitescar Wash",type={20},giver='U4D50D4DB0EDACDDE'}
,q4AF414FECC4255CD={lvl=41,scene="Harlan's Lament",type={4},giver='U1CFA4E0D5C55798B'}
,q2742A44414EE1972={lvl=41,scene="Harlan's Lament",type={1},giver='U7F62DE454C8B3CE8'}
,q71D33F051AEF62AC={lvl=41,scene="Harlan's Lament",type={4},giver='U1CFA4E0D5C55798B'}
,q45F0508900000000={lvl=41,type={3}}
,q70B7522B00000000={lvl=41,type={3}}
,q680AD0B0E26687C8={lvl=41,scene="Harlan's Lament",type={1},giver='U5E26E896014C2EEA'}
,q2B3A926400000000={lvl=41,scene="Chancel of Labors",use={{key='I1D7784D458C7318E,2CBFC27475A1B2EB,,,,,,', count=6}},type={10}}
,q7578EFDB00000000={lvl=41,scene="Chancel of Labors",use={{key='I461370F7765D15A5,256DFCF3FFFF0E50,,,,,,', count=1}},type={10}}
,q3A9352E600000000={lvl=41,scene="Harlan's Lament"}
,q773D2A84029ED433={lvl=41,scene="Harlan's Lament",type={15},giver='U2390BEFB6D5D0AD0'}
,q0762D76000000000={lvl=41,scene="Chancel of Labors",use={{key='I07FB1EB9618446A3,DE990EDD61577E94,,,,,,', count=1}},type={4,10}}
,q3B7E5D6694B86D76={lvl=41,scene="Harlan's Lament",type={10},giver='U20DA99B47932861E'}
,q535A4FA1DB9E3D9A={lvl=41,scene="Jagged Fringe",type={4},giver='U2390BEFB6D5D0AD0'}
,q18271E7600000000={lvl=41,scene="Chancel of Labors",type={8}}
,q5984A23400000000={lvl=41,scene="Harlan's Lament"}
,q3C5D445F750A58B7={lvl=41,scene="Jagged Fringe",type={1},giver='U7F62DE454C8B3CE8'}
,q6172DE9FE2317A29={lvl=41,scene="Harlan's Lament",type={1},giver='U7F62DE454C8B3CE8'}
,q231D1CB807A91279={lvl=42,type={13},giver='U628E05021D22920E'}
,q48876723C2B83D83={lvl=42,scene="Mordant Warren"}
,q38FEA7C06E40E239={lvl=42,type={17}}
,q1ADD027C00000000={lvl=42,scene="Mordant Warren",type={3}}
,q129C2D09EF5EE792={lvl=42,scene="Mordant Warren",type={6,4},giver='U257ECBAB303658EA'}
,q759068B0D0B95666={lvl=42,scene="Carrion Heights",type={6,4},giver='U1D98A0111F586A95'}
,q5F88ADCF493A302A={lvl=42,scene="Whitefall",type={1,4},giver='U272A487049AB2B62'}
,q0B36B577A3910F3A={lvl=42,giver='U036676660FAA5DEB'}
,q4F33D64BEA52CF0B={lvl=42,scene="Whitefall",giver='U068B93E466090425'}
,q3DAC004EFF6F9029={lvl=42,scene="Mordant Warren",use={{key='I792E5EC7A7000D7E,AD9E9C4B95CE2D63,,,,,,', count=1}},type={1,10},giver='U1F11DCA1022C250A'}
,q024D5568D1CD225E={lvl=42,scene="Chancel of Labors",type={5}}
,q0AC8298211678041={lvl=42,giver='U258186875D667DE0'}
,q6ADBFE8FECE1E775={lvl=42,scene="Whitefall",type={4,1},giver='U13ECFEB35C44019A'}
,q56FAE2E676DDE967={lvl=42,scene="Mordant Warren",type={15},giver='U257ECBAB303658EA'}
,q5AD4CAEF76F39AE8={lvl=42}
,q6C44AD82C9D2E583={lvl=42,type={5}}
,q41066161AF085F7A={lvl=42,scene="Whitefall",type={1},giver='U47EEE9D70040576A'}
,q30961D5CFBB38026={lvl=42,scene="Carrion Heights",type={3,4},giver='U133F836567D0F7D4'}
,q383FC4F7BA6A68B5={lvl=42,scene="Whitefall",type={23,8},giver='U47EEE9D70040576A'}
,q6B756773CF3AD5BC={lvl=42,scene="Carrion Heights",type={1},giver='U133F836567D0F7D4'}
,q7EF2F14AEA21033A={lvl=42,scene="Carrion Heights",type={1},giver='U1D98A0111F586A95'}
,q7E947247B4730E15={lvl=42,scene="Mordant Warren",type={1},giver='U32B5288531C78624'}
,q410EEF754F4AFCC7={lvl=42,type={8},giver='U2390BEFB6D5D0AD0'}
,q02896C22A7805A93={lvl=42,scene="Whitefall",type={5},giver='U734AC8615759A021'}
,q714E879300000000={lvl=42,scene="Whitefall"}
,q7C2A8CED00BA42FF={lvl=42,scene="Whitefall",type={8},giver='U7F8B54AC77BDDC74'}
,q5F4D4891F1B48F27={lvl=42,scene="Whitefall",type={1,4},giver='U47EEE9D70040576A'}
,q5E2D08A2DC9819CE={lvl=42,scene="Carrion Heights",type={3,4},giver='U133F836567D0F7D4'}
,q2A74A64A3B3F3E7A={lvl=42,scene="Whitefall",type={5},giver='U304D84E64BE18CA1'}
,q71818B01C36C4063={lvl=42,scene="Carrion Heights",type={6,4},giver='U628E05021D22920E'}
,q29C7DB68D0E05401={lvl=42,scene="Carrion Heights",type={1},giver='U133F836567D0F7D4'}
,q5C402875977A789A={lvl=43,scene="Mordant Knolls",type={10},giver='U1F11DCA1022C250A'}
,q5D788CBBF996ADF2={lvl=43,scene="Splitmouth Ponds", grp=2,type={1},giver='U301DB37F454BB295'}
,q4CFEB312F4F27EE0={lvl=43,type={8},giver='U53EC980871B3B4E6'}
,q2CCFCC8347047871={lvl=43,scene="Splitmouth Ponds",type={8},giver='U5E689B6955B461F9'}
,q3252AF96B5444886={lvl=43,type={3,11,1},giver='U491CCE5231538A95'}
,q0805EBB66DB875EE={lvl=43,giver='U5325629A1A61C04D'}
,q26AA492400000000={lvl=43,scene="Splitmouth Ponds",use={{key='I57A107B77B77D116,FDCB7E7820EAF92F,,,,,,', count=1}},type={4},giver='U0727600C7E984437'}
,q1C63D09DBC3159DB={lvl=43,scene="Splitmouth Ponds", grp=3,type={1},giver='U301DB37F454BB295'}
,q79B99BF200000000={lvl=43,scene="Mordant Knolls",type={1,4}}
,q17B4817CD8F10ED6={lvl=43,scene="Splitmouth Ponds",type={1},giver='U5E689B6955B461F9'}
,q7A734DE5DF7D7B15={lvl=43,giver='U0A9469780D05F07C'}
,q15E4BAC5733B95DC={lvl=43,giver='U5F192A892909287D'}
,q5EBF7F3A0CA275FD={lvl=43,giver='U5908310D4432644A'}
,q3BE7EA46B993D815={lvl=43, grp=3,type={1},giver='U570C41434E929A94'}
,q16FA11F08DBB3272={lvl=43,scene="Splitmouth Ponds",type={8},giver='U301DB37F454BB295'}
,q46F63846555FFFD6={lvl=43,type={11,1,3},giver='U3CE11C504F628364'}
,q57553E5700000000={lvl=43,scene="Mordant Knolls",type={6}}
,q3EA9319E92B515C7={lvl=43,giver='U0A9469780D05F07C'}
,q142C36435798419C={lvl=43}
,q73946B3AE811AB33={lvl=43,scene="Splitmouth Ponds", grp=3,type={1},giver='U7A3F76C1104442B4'}
,q3B14E9DAFAC9DD9F={lvl=43,giver='U5908310D4432644A'}
,q5F2FD93E4CB8EF24={lvl=43,scene="Splitmouth Ponds",type={1},giver='U257ECBAB303658EA'}
,q5E63C15AED0C8281={lvl=43,scene="Mordant Knolls",type={1},giver='U1F11DCA1022C250A'}
,q1C25C8A8972E9EFD={lvl=43,giver='U5F192A892909287D'}
,q4B96DD4E1563B8FC={lvl=43}
,q19511850E517F6EB={lvl=43,giver='U5908310D4432644A'}
,q0C539E22BD987C24={lvl=43,scene="Splitmouth Ponds", grp=2,type={1},giver='U301DB37F454BB295'}
,q38A068AECDDCC460={lvl=43,giver='U0A9469780D05F07C'}
,q37E39BBCF22011AA={lvl=43,use={{key='I4632A0DF827127CC,3C0993B3D7C433E3,,,,,,', count=1}},giver='U5F192A892909287D'}
,q5A9478CC6895D0D3={lvl=43,giver='U5325629A1A61C04D'}
,q4000F4B300000000={lvl=43,scene="Splitmouth Ponds",use={{key='I30D73C94A49CABDC,F30983F7BAF3ED6B,,,,,,', count=1}},type={4},giver='U69B92F0674BDF48A'}
,q7EC0AD75A7722206={lvl=43,scene="Splitmouth Ponds", grp=2,type={1},giver='U301DB37F454BB295'}
,q423A62C27ECFA73A={lvl=43,scene="Splitmouth Ponds",type={8},giver='U5E689B6955B461F9'}
,q5A65FC77BD74FB0F={lvl=43,scene="Mordant Knolls",type={4,6},giver='U32B5288531C78624'}
,q655F00C2CFC831C5={lvl=44}
,q60314108BA60E579={lvl=44,scene="Redoubt",type={4},giver='U63D033E52D049D44'}
,q203C6164A188FD37={lvl=44,giver='U418E620838DAD25E'}
,q25D5BCEF99B97FE3={lvl=44,giver='U11B70ED260C4439B'}
,q06A1FC0C00000000={lvl=44,type={1},giver='U5E06D9421760F953'}
,q18F553FCDB7D5B23={lvl=44,scene="Redoubt",type={8},giver='U63D033E52D049D44'}
,q1FB62FAF1C943C38={lvl=44,giver='U007D255954E984B2'}
,q626BE445C5ED94AD={lvl=44,giver='U418E620838DAD25E'}
,q32ACE851EB92D912={lvl=44,scene="Redoubt",type={1},giver='U2EA11F866AAC7BAA'}
,q5F415E1CED3E11C9={lvl=44,giver='U007D255954E984B2'}
,q4DF8F23B7A8068D8={lvl=44,giver='U5DD0C95B61C00640'}
,q68C28B644B4E0D28={lvl=44,scene="Redoubt",type={1},giver='U47C6AF8C521CBDA2'}
,q708DD684D68924FC={lvl=44,type={8},giver='U41A8878221FCB60A'}
,q18F2D862A2129582={lvl=44,type={8},giver='U3DCEE26A37993435'}
,q233AB7241313CFD6={lvl=44,scene="Redoubt",type={8}}
,q2397258CB962E5A7={lvl=44,scene="Redoubt",giver='U47C6AF8C521CBDA2'}
,q7588F8736E084CA5={lvl=44}
,q767D56D0BA75C097={lvl=44,giver='U6FDC531214AA466B'}
,q2DD365101DABD61A={lvl=44,giver='U1544104155B16C95'}
,q0715AAC0024CDA94={lvl=44,type={6},giver='U300F5EA673555DB4'}
,q13ADFAE0CD575273={lvl=44,giver='U0B88976703D772CA'}
,q7480AEE1235A9D82={lvl=44,giver='U363861521E98B1CC'}
,q270939E1D36281CF={lvl=44,scene="Redoubt",type={8},giver='U07EFB7A4403F049D'}
,q52D32BB0F9CEA557={lvl=44}
,q775E2B32746733E2={lvl=44,giver='U363861521E98B1CC'}
,q1ED1D580D1AA0CB1={lvl=44,giver='U6FDC531214AA466B'}
,q3CFBA1F08348717D={lvl=44,giver='U1544104155B16C95'}
,q0AFEBC775B12EBA1={lvl=44,type={1,8}}
,q6090A0449A65FCEF={lvl=44,scene="Brigand's Bluff",type={13},giver='U257ECBAB303658EA'}
,q3777F8530D74688A={lvl=44,giver='U5DD0C95B61C00640'}
,q184A9242BEFC76DF={lvl=44,giver='U11B70ED260C4439B'}
,q479BEA401995B159={lvl=44,scene="Redoubt",type={1},giver='U07EFB7A4403F049D'}
,q68836EBBA477EE5C={lvl=44,giver='U5908310D4432644A'}
,q1DCB9EF1A941534C={lvl=44,type={8},giver='U1820AE1A074B0DA6'}
,q7A93D8DE00000000={lvl=44,type={1},giver='U344B58F54C907D8B'}
,q489D7F47BD7A263F={lvl=44,scene="Redoubt",type={8},giver='U774114B23325C5BA'}
,q6A6B60B30DE6DB46={lvl=45,giver='U5BB08D3A47EAD2FC'}
,q73E7EEE9FBD9B06C={lvl=45,giver='U5BB08D3A47EAD2FC'}
,q4A5F4708A23B037B={lvl=45,scene="Endless Watch",type={8,15},giver='U3BB7E6906AC2D10D'}
,q13104D20D490A5C2={lvl=45,giver='U007D255954E984B2'}
,q3321FBB1BB813743={lvl=45,giver='U2475A7D6602C7AB5'}
,q50488C11D6275605={lvl=45,giver='U6BF1F8BD7103A91F'}
,q0C6ADD86F8C44936={lvl=45,craft={{key='I119E316911316240,4407081BAA37F05D,,,,,,', count=4}},type={25}}
,q626DF15CA459D76D={lvl=45,craft={{key='I119E316911316240,4407081BAA37F05D,,,,,,', count=4}},type={25}}
,q47D7B0B29AA088EB={lvl=45,craft={{key='I02D4B09D598CB8D1,1A2957A31EFC7B90,,,,,,', count=4}},type={25}}
,q65D144C15F8C70C1={lvl=45,craft={{key='I02D4B09D598CB8D1,1A2957A31EFC7B90,,,,,,', count=4}},type={25}}
,q201C002A604BDE6F={lvl=45,craft={{key='I02D4B09A24C04AAA,E4225264FCE62615,,,,,,', count=4}},type={25}}
,q565E72E283E05558={lvl=45,craft={{key='I02D4B09A24C04AAA,E4225264FCE62615,,,,,,', count=4}},type={25}}
,q00EDD60100000000={lvl=45,type={6,11}}
,q0770B02850DCBFFB={lvl=45,scene="Endless Watch",type={8},giver='U17DFD49249456D60'}
,q5AACA688997322F2={lvl=45,scene="Burlingham",type={8,6},giver='U141080493C17BFCF'}
,q7B557D4EB352BBB0={lvl=45,scene="Belmont",type={6,8},giver='U3A3C58B87C37745E'}
,q0046AB148DE6D7F8={lvl=45,scene="Belmont",type={13}}
,q58DE7BE4C71ACB16={lvl=45,giver='U527CE06E35609204'}
,q7AECDD2743E38561={lvl=45,scene="Phoenix Rise",type={8},giver='U0335673A45C4111E'}
,q020EFEDDD2052993={lvl=45,type={4},giver='U3611CC2276DCD477'}
,q19E8D2540CCBD1B3={lvl=45,giver='U1CB0E0C95D68041A'}
,q77F7E22FCA570793={lvl=45,scene="Belmont",type={4},giver='U0C66151D0894B90B'}
,q7A7B7112D314697A={lvl=45,scene="Burlingham",type={6,1},giver='U520562FA1B118825'}
,q6E36335BDFB8395E={lvl=45,giver='U6BF1F8BD7103A91F'}
,q63114EC08DB4DD7F={lvl=45,giver='U6BF1F8BD7103A91F'}
,q39F688E8CAA14E41={lvl=45,scene="Endless Watch",type={8},giver='U7072481A78270C0F'}
,q1DAFB55192D05F5F={lvl=45}
,q1468CAFBE26F0274={lvl=45,type={4},giver='U3611CC2276DCD477'}
,q5D3238881503F9C6={lvl=45,scene="Belmont",type={1},giver='U5EA7F9E7421B487A'}
,q2C4C08310045B4C1={lvl=45,giver='U75526206316307F2'}
,q065D1505DBD7A4B6={lvl=45,scene="Burlingham",type={8,1},giver='U743749914163CAFC'}
,q6237EF538FD2B337={lvl=45,scene="Belmont",type={10},giver='U396F8E492C80C32C'}
,q75E88BD24C1F8C9B={lvl=45,giver='U6BF1F8BD7103A91F'}
,q5ECAEE22A38E1813={lvl=45,giver='U3F82C25E0145A6FF'}
,q454281D0D1337989={lvl=45,giver='U5BB08D3A47EAD2FC'}
,q1E64625A00000000={lvl=45,type={3}}
,q7DE018FA00000000={lvl=45,type={3}}
,q6E33734B8308E5EF={lvl=45}
,q42F37B3880622A78={lvl=45,scene="Burlingham",use={{key='I283B49CC8397682F,2013D9D6B701C18B,,,,,,', count=1}},type={10},giver='U5342FB094F3D5B77'}
,q1E650BD3C2409A18={lvl=45,giver='U1ED517803AA910BF'}
,q7F456181008372C5={lvl=45,giver='U337CFEDA373E579E'}
,q3AC034D4D4D6A421={lvl=45,scene="Chancel of Labors",type={8},giver='U2D6C438102531896'}
,q5432E6F612501FD6={lvl=45,giver='U0B86A7947EA225EF'}
,q00EDD60400000000={lvl=45,type={11,6}}
,q0A489988B4B79011={lvl=45,giver='U4438BC786530AE96'}
,q68A37F6AB552D6E0={lvl=45,giver='U0B86A7947EA225EF'}
,q6E00D4AA89393D03={lvl=45,giver='U4DECF9436884AD14'}
,q507BAC61E0321ABC={lvl=45,giver='U60F28FDB7A96D309'}
,q14C1686993D032B4={lvl=45,scene="Phoenix Rise",type={6},giver='U396F8E492C80C32C'}
,q5D85DD4EDF7434D3={lvl=45,giver='U5BB08D3A47EAD2FC'}
,q39AC6687156BD158={lvl=45,scene="Crusader's Advance",type={6},giver='U5342FB094F3D5B77'}
,q1671671567F5B35F={lvl=45,giver='U57DE89A43200D146'}
,q59E0CD5319A07757={lvl=45,scene="Lantern Hook",type={8},giver='U79B1EFA669C16E9B'}
,q5E7DEF3E00000000={lvl=45,scene="Redoubt",type={6}}
,q00EDD60200000000={lvl=45,type={11,6}}
,q14585450D702E0F8={lvl=45}
,q37CCC5A1C3EA1B56={lvl=45,giver='U16A16C3D6221891B'}
,q594F5E6FF9A1D348={lvl=45,giver='U418E620838DAD25E'}
,q5454A6966C713EF6={lvl=45,scene="Burlingham",type={1},giver='U1E221D8D6CF13A02'}
,q617588177A84FEA8={lvl=45,scene="Burlingham",type={1,10},giver='U743749914163CAFC'}
,q2780B19CDA6B9A12={lvl=45,scene="Chancel of Labors",type={8},giver='U2D6C438102531896'}
,q421C809CF08184E4={lvl=45,scene="Burlingham",type={1},giver='U743749914163CAFC'}
,q5FBA11315ABD791C={lvl=45,giver='U1ED517803AA910BF'}
,q10A84FCA162E710B={lvl=45}
,q02521DFBA342DEC5={lvl=45,scene="Crusader's Advance",type={8},giver='U2D7F9EFA06742BD0'}
,q6A5E69D96E57EB55={lvl=45,scene="Belmont",type={1,8},giver='U5EA7F9E7421B487A'}
,q4847886DBE9CA561={lvl=45,scene="Belmont",type={4,10},giver='U1A169ABC06B98C7B'}
,q3F638237E47FFD72={lvl=45,scene="Burlingham",type={6,4},giver='U520562FA1B118825'}
,q1BE6AEB4C5886AFB={lvl=45,scene="Crusader's Advance",type={8},giver='U7072481A78270C0F'}
,q192B0BF000000000={lvl=45,type={1,3}}
,q7A5179DC00000000={lvl=45,type={3,1}}
,q32BC882E00000000={lvl=45, grp=3,giver='U466F8E012F1FF1FB'}
,q361A4ED400000000={lvl=45, grp=3,giver='U3D8EA30F468E8E08'}
,q3FEE052E6ABA0501={lvl=45,domain="guild"}
,q2C2653BE9232A0B2={lvl=45,scene="Belmont",type={4,6},giver='U6C16C565069B3AC3'}
,q0DFDC8F200000000={lvl=45,type={3}}
,q5EE941B500000000={lvl=45,type={3}}
,q25AFDD0E00000000={lvl=45,scene="Redoubt",type={6}}
,q00EDD60500000000={lvl=45,type={11,6}}
,q48140D468B72896D={lvl=45,scene="Endless Watch",type={8},giver='U0335673A45C4111E'}
,q0CFDC5A7DC9898A1={lvl=45,scene="Burlingham",type={4}}
,q4C1F94A29FD7806D={lvl=45,giver='U76501DF979B9E5CF'}
,q1161CE34E606B615={lvl=45,giver='U4438BC786530AE96'}
,q12BC6448E7AF003E={lvl=45,scene="Belmont",type={1},giver='U0C66151D0894B90B'}
,q203433CFD2E06AB3={lvl=45,scene="Burlingham",use={{key='I7993D83BA46EBCF4,CD2E45BE2930CEF5,,,,,,', count=6}},type={10},giver='U141080493C17BFCF'}
,q19268FF21E3E5360={lvl=45,scene="Belmont",type={1,10},giver='U5EA7F9E7421B487A'}
,q00EDD60300000000={lvl=45,type={6,11}}
,q4A2A3265A8604DAD={lvl=45,type={4},giver='U050418932DA214C7'}
,q3C7C8B099EF78BE2={lvl=45,scene="Burlingham",type={13},giver='U743749914163CAFC'}
,q0A489DA7EB75D953={lvl=45,scene="Endless Watch",type={8},giver='U47C6AF8C521CBDA2'}
,q74510C1449798A9F={lvl=46,giver='U76501DF979B9E5CF'}
,q2B54393E9E3F9149={lvl=46,scene="Briarcliff",type={4,6},giver='U268292A948286D2D'}
,q7C3C1E5B5CE6DEEA={lvl=46,scene="Ravenna",type={13}}
,q020BF80E17029D01={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q0483EF5186ADDCDB={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q0ADC0A0823B1931D={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q1CB3A8B199F4FF6A={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q3E8A9AC47EEAF632={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q4E94F5F69D291B72={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q60D7832D32973571={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q6D9F4EF5B9661913={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q71E4FAE712100E59={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q75245D0AB4FC2B73={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q18665F936BF7E996={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q1E0CA58EBB8FB9FD={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q63A8FD9490555E91={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q7779A946E512379C={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q7890D495BA7D5C98={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q0F3DF0F1BF550BC1={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q38E62A09EB2C8F02={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q5D0EF269D1D6BAA1={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q65F85CC534C67D02={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q6C63B95EBD878F63={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q2B221B1BABD9E165={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q448FDFEDD73BBE1D={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q1DFFC6A35B9E9012={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q2DBAE28E9439FC6D={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q375A42343B793D48={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q40FB541DEDAFECF9={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q45EE2DE39E94D063={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q642D355E2288BD5F={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q6D5608D5A497A0EC={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q7AA386931594FB2B={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q308B251F0D1BBA5F={lvl=46,scene="Ravenna",type={4,6},giver='U11462F3D355CB5C5'}
,q3578357D5F00A3BB={lvl=46,scene="Briarcliff",type={4},giver='U258B20BF7DAA1F91'}
,q08E873F39C8FEBFD={lvl=46,scene="Briarcliff",type={1},giver='U012871AA2943CF3F'}
,q096AD1E945A0878F={lvl=46,scene="Ravenna",type={1},giver='U16C931A842425460'}
,q6F092026D35BE62E={lvl=46,giver='U0276E6A85EA17CB3'}
,q332F8EB6E2DBD1A3={lvl=46,giver='U3B53344356AE5E52'}
,q47E22B8A8D3270D9={lvl=46,giver='U060A5E042D679DFB'}
,q2053A7FB0498F21E={lvl=46,scene="Briarcliff",type={13}}
,q4C40659433AA1EDC={lvl=46,scene="Briarcliff",type={10},giver='U258B20BF7DAA1F91'}
,q257BF0555F2D97CD={lvl=46,scene="Warden's Descent",type={8},giver='U743749914163CAFC'}
,q635CB282832730CA={lvl=46,giver='U060A5E042D679DFB'}
,q4B5C4B24C678D45C={lvl=46,giver='U1918388230C6E124'}
,q365DA39FEAB9610E={lvl=46,giver='U3B53344356AE5E52'}
,q1FF9777B6F275BA0={lvl=46,scene="Ravenna",type={1},giver='U16C931A842425460'}
,q34FFEF47231D32B4={lvl=46,giver='U60F28FDB7A96D309'}
,q10D71924A1D51734={lvl=46,scene="Ravenna",type={4},giver='U1101AC5508BC666A'}
,q6DA2ADCF8FF17760={lvl=46,giver='U60F28FDB7A96D309'}
,q28B2C988B7F5AA55={lvl=46,scene="Ravenna",type={13}}
,q682709218D445DBC={lvl=46,scene="Ravenna",type={10},giver='U6211832A50631D05'}
,q18315234D36D63FB={lvl=46,giver='U3F82C25E0145A6FF'}
,q291239FBB5388994={lvl=46,scene="Briarcliff",type={13}}
,q0E62C96B032B34C2={lvl=46,giver='U4DECF9436884AD14'}
,q26E16C8203530323={lvl=46,use={{key='I6D36614169208FAD,41A7E0950045C4B4,,,,,,', count=1}},type={10,15},giver='U6211832A50631D05'}
,q340919AEE2826EB1={lvl=46,use={{key='I6D36614169208FAD,41A7E0950045C4B4,,,,,,', count=1}},type={10,15},giver='U599299E3253FC61D'}
,q14139AE900000000={lvl=46,type={3}}
,q3CD23E2D00000000={lvl=46,type={3}}
,q40CD8D7800B34596={lvl=46,scene="Briarcliff",type={4},giver='U012871AA2943CF3F'}
,q4D5C5746004D9FB1={lvl=46,scene="Ravenna",type={4},giver='U1101AC5508BC666A'}
,q4A09461B98AD2695={lvl=46,giver='U3B53344356AE5E52'}
,q40F5718BA764C56B={lvl=46,giver='U7E82085C178FFF14'}
,q69AF609374FA6FA3={lvl=46,scene="Trial of the Sentinel",type={8},giver='U16C931A842425460'}
,q5508502F940F8107={lvl=46,scene="Ravenna",type={6}}
,q2F890DD8F0812747={lvl=46,scene="Ravenna",type={1},giver='U11462F3D355CB5C5'}
,q6CA036A1B6C0FDAB={lvl=46,scene="Broken Vale",type={8},giver='U3A3C58B87C37745E'}
,q570F3C0ACDDA1346={lvl=46,giver='U272B785A35C6E221'}
,q0A965CFDBB77E22B={lvl=46}
,q747CA664C4B953DE={lvl=46,giver='U060A5E042D679DFB'}
,q74839F1EE1F70C61={lvl=46,giver='U3F82C25E0145A6FF'}
,q1C59A4793ABD0BB3={lvl=46,giver='U76501DF979B9E5CF'}
,q66F94570F1217DCA={lvl=46,scene="Warden's Descent",type={1},giver='U1101AC5508BC666A'}
,q35DB0285C0143657={lvl=46,giver='U57DE89A43200D146'}
,q6BEF53629930DE9B={lvl=46,giver='U060A5E042D679DFB'}
,q5A3FE5F6B8B2EFDF={lvl=46,scene="Briarcliff",type={1},giver='U268292A948286D2D'}
,q000564387EFEF57A={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q0AF4064291F9AAD9={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q0D4FD8189C106173={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q1D9E60E51E08B77D={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q341792B809E90A08={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q42B5A3F6BBC987D2={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q4DA7E482BFEF00F6={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q5604407065F35DCE={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q78031914AE76CB08={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q7EC26314FE171825={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q16B4C99C9038A505={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q207DA132CE4DAE37={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q2188DC94A77CB37A={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q3910CE4CF6480067={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q4C2DE872E23F6C4F={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q1DAF17AF747E28F0={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q41CB491E9912C89F={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q46021D6648EB45AB={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q4A8C7D6A098C676F={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q56A7DF68A4777B9E={lvl=46,domain="guild",giver='U75FBE0CA773819E9'}
,q31FA6FA9956244A5={lvl=46}
,q0AE1C443E7181C45={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q1003770D41D7D863={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q130A43006880B0D5={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q1BADB00DC30992DF={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q219A5DF1AFDD96FD={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q24BB8DF5EDC3C528={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q36768B918516064B={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q4C145328B971ED46={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q796301CDE6F24E37={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q7C35E009B3E5AF56={lvl=46,domain="guild",giver='U501D431647F9ADB3'}
,q7A424E155391ABB0={lvl=46,scene="Briarcliff",type={6}}
,q25AD07B9F9ABFFBB={lvl=46,giver='U272B785A35C6E221'}
,q71B989CFBA7634A8={lvl=46,scene="Briarcliff",type={1},giver='U012871AA2943CF3F'}
,q0A79B589963BC4C2={lvl=46,giver='U272B785A35C6E221'}
,q2A9C89A7EB49B427={lvl=46,giver='U272B785A35C6E221'}
,q48E807C5CFE06635={lvl=46,scene="Ravenna",type={1},giver='U6211832A50631D05'}
,q1062A8D84DA33246={lvl=46,scene="Briarcliff",use={{key='I640262544B6D3D56,064C80E2730E441C,,,,,,', count=3}},type={10},giver='U258B20BF7DAA1F91'}
,q6D2244F93434F4CA={lvl=46,giver='U3B53344356AE5E52'}
,q1AD88D2A32C8F90B={lvl=46,scene="Briarcliff",type={1},giver='U599299E3253FC61D'}
,q00C8EDA2DE696F64={lvl=47,scene="Edgewood",type={4},giver='U6ACDE8D012D68603'}
,q50D98D5050540731={lvl=47,craft={{key='I21C7E506CDCD8805,1D080646D9A17E5E,,,,,,', count=10}},type={4}}
,q17F563F8EC0D1E1F={lvl=47,craft={{key='I4EE1D64A682EB2EE,DFE852D4C99A87A4,,,,,,', count=2},{key='I7A5C6D378C0A3F6C,A99D0CFD8E3CB5F0,,,,,,', count=8}},type={4}}
,q4AD65D17D9C6E77B={lvl=47,craft={{key='I7A5C6D378C0A3F6C,A99D0CFD8E3CB5F0,,,,,,', count=10}},type={4}}
,q708E096A3417B65C={lvl=47,craft={{key='I7A5C6D378C0A3F6C,A99D0CFD8E3CB5F0,,,,,,', count=10}},type={4}}
,q5AD2A55DA4876E2B={lvl=47,craft={{key='I533D98D2B35261ED,EF689FFCCD79A836,,,,,,', count=8}},type={25}}
,q797103A17D54CB83={lvl=47,scene="Zareph's Return",craft={{key='I533D98D2B35261ED,EF689FFCCD79A836,,,,,,', count=8}},type={25}}
,q3A051C34BB51B290={lvl=47,craft={{key='I7DC5A7B798B43DCD,7836ED5FDA385DCC,,,,,,', count=8}},type={25}}
,q3CAF41A1FDB3BF45={lvl=47,craft={{key='I7DC5A7B798B43DCD,7836ED5FDA385DCC,,,,,,', count=8}},type={25}}
,q0D11C6658D938DE2={lvl=47,craft={{key='I55FE0A3A51688D44,FBA16C14E4FB2A5F,,,,,,', count=8}},type={25}}
,q3321FF561E837795={lvl=47,craft={{key='I55FE0A3A51688D44,FBA16C14E4FB2A5F,,,,,,', count=8}},type={25}}
,q27A16615FD9A9ED5={lvl=47,craft={{key='I6CD84793B268C9D0,1E68A0FB840750D2,,,,,,', count=8}},type={25}}
,q5F7A0787AB7C219A={lvl=47,craft={{key='I6CD84793B268C9D0,1E68A0FB840750D2,,,,,,', count=8}},type={25}}
,q7A52B755FD15AC4E={lvl=47,craft={{key='I7A5C6D378C0A3F6C,A99D0CFD8E3CB5F0,,,,,,', count=8},{key='I6BCA6AC346DE738D,29D81DA0D9F70988,,,,,,', count=1},{key='I4EE1D64A682EB2EE,DFE852D4C99A87A4,,,,,,', count=1}},type={4}}
,q15054FDBE4935E35={lvl=47,craft={{key='I7A5C6D378C0A3F6C,A99D0CFD8E3CB5F0,,,,,,', count=8},{key='I6BCA6AC346DE738D,29D81DA0D9F70988,,,,,,', count=2}},type={4}}
,q09D568AAE30455C0={lvl=47,scene="Chancel of Labors",craft={{key='I34CEB0BF5B9A2046,22E3E74F649D424B,,,,,,', count=8}},type={25}}
,q32617369169DEC22={lvl=47,scene="Chancel of Labors",craft={{key='I34CEB0BF5B9A2046,22E3E74F649D424B,,,,,,', count=8}},type={25}}
,q4AB3DA89F949AA49={lvl=47,craft={{key='I148838B8A370FFCD,01086A413DDCD64B,,,,,,', count=8}},type={25}}
,q5C4CAB7FAF71215E={lvl=47,craft={{key='I148838B8A370FFCD,01086A413DDCD64B,,,,,,', count=8}},type={25}}
,q1AE106BA4090373E={lvl=47,craft={{key='I6E908DC18E48AC1B,BAB0C27C2CBFA373,,,,,,', count=6},{key='I4549FE7A9387B7C5,FC4641CDD6818BF1,,,,,,', count=4}},type={4}}
,q6A7243F085C26AD8={lvl=47,craft={{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=4},{key='I5E0809988A5F46E3,FE37B058B3FAA492,,,,,,', count=4},{key='I44EC601A659D4072,F95775B3031A16A7,,,,,,', count=2}},type={4}}
,q3612EC90B3838CCB={lvl=47,scene="Chancel of Labors",craft={{key='I50BAF6BED330B265,53DF3B2C223373A5,,,,,,', count=8}},type={25}}
,q5742071B953D13AC={lvl=47,scene="Chancel of Labors",craft={{key='I50BAF6BED330B265,53DF3B2C223373A5,,,,,,', count=8}},type={25}}
,q2BCD7D93E60B269E={lvl=47,scene="Zareph's Return",craft={{key='I4512D1BFA7B48E96,0ECC99DCBFB2841E,,,,,,', count=8}},type={25}}
,q66536863F7BF05B7={lvl=47,craft={{key='I4512D1BFA7B48E96,0ECC99DCBFB2841E,,,,,,', count=8}},type={25}}
,q2C9E81BD6F59C476={lvl=47,scene="Chancel of Labors",craft={{key='I56032B16EEC06D5E,C91F7E1038550F20,,,,,,', count=8}},type={25}}
,q7DD2ADC4EAB8B8F1={lvl=47,scene="Chancel of Labors",craft={{key='I56032B16EEC06D5E,C91F7E1038550F20,,,,,,', count=8}},type={25}}
,q7220C32DC0239B59={lvl=47,craft={{key='I6E908DC18E48AC1B,BAB0C27C2CBFA373,,,,,,', count=10}},type={4}}
,q587F277617B3218A={lvl=47,craft={{key='I6E908DC18E48AC1B,BAB0C27C2CBFA373,,,,,,', count=10}},type={4}}
,q0DCFD34E79D75F79={lvl=47,craft={{key='I1C068BCAA09E906A,F7D23F7CC4CD6BC4,,,,,,', count=8}},type={25}}
,q1F6CC36247968BCE={lvl=47,craft={{key='I1C068BCAA09E906A,F7D23F7CC4CD6BC4,,,,,,', count=8}},type={25}}
,q5B342756B6843EFA={lvl=47,craft={{key='I44EC601A659D4072,F95775B3031A16A7,,,,,,', count=2},{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=8}},type={4}}
,q3513C67E98298218={lvl=47,craft={{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=6},{key='I5E0809988A5F46E3,FE37B058B3FAA492,,,,,,', count=4}},type={4}}
,q15E214299E1293D3={lvl=47,craft={{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=10}},type={4}}
,q1D43A92A68257631={lvl=47,craft={{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=10}},type={4}}
,q194D3D2B3AB34B42={lvl=47,craft={{key='I72A2801A6ACA8E60,4113B01A4162E2A8,,,,,,', count=6},{key='I30D24C88E6637AB2,2EA18304BCECB07A,,,,,,', count=4}},type={4}}
,q4C9BA9D02D46547E={lvl=47,scene="Zareph's Return",craft={{key='I54FDB5FD79B8EC42,E0DD4E8F977A0DAE,,,,,,', count=8}},type={25}}
,q7B136F3223CA2423={lvl=47,craft={{key='I54FDB5FD79B8EC42,E0DD4E8F977A0DAE,,,,,,', count=8}},type={25}}
,q44E5A374FE11033C={lvl=47,scene="Zareph's Return",craft={{key='I1F6FF0498722CEFC,007545BCB4349000,,,,,,', count=8}},type={25}}
,q5460763AE7FCC380={lvl=47,craft={{key='I1F6FF0498722CEFC,007545BCB4349000,,,,,,', count=8}},type={25}}
,q5F22332BD6451B80={lvl=47,craft={{key='I34C6ED15A3CECDA8,ECBC392A7964C6ED,,,,,,', count=8}},type={25}}
,q7801E0F2A7D1D0C4={lvl=47,craft={{key='I34C6ED15A3CECDA8,ECBC392A7964C6ED,,,,,,', count=8}},type={25}}
,q03CEB5292488C25A={lvl=47,scene="Zareph's Return",craft={{key='I0BEE496B71AD0707,CBE4825F03022998,,,,,,', count=8}},type={25}}
,q11D4F629CF54CBCF={lvl=47,craft={{key='I0BEE496B71AD0707,CBE4825F03022998,,,,,,', count=8}},type={25}}
,q17545F45176FCB60={lvl=47,giver='U25702FE43AAE2037'}
,q3A69059AE90F2624={lvl=47,scene="Edgewood",type={6},giver='U379701F65ADB32BF'}
,q548FBEA5F308AE59={lvl=47,scene="Edgewood",type={1},giver='U5E1BBA125BFA7BBF'}
,q51A1EC68500EBEC6={lvl=47,giver='U3E940301414306CD'}
,q1F75FAF413750030={lvl=47}
,q4DB35353BF78820E={lvl=47,giver='U1CB0E0C95D68041A'}
,q7D761D70F30E7201={lvl=47,scene="Edgewood",type={1},giver='U1430E93C1DE65DEF'}
,q7490442DA2CC5002={lvl=47,scene="Edgewood",type={6},giver='U6ACDE8D012D68603'}
,q76A8216B59C8F32B={lvl=47,scene="Edgewood",type={1},giver='U08BAB1667C094302'}
,q56BF972CC53CFB7E={lvl=47,scene="Edgewood",type={1},giver='U478CB1E254434C70'}
,q657342919739C1E5={lvl=47,scene="Edgewood",type={4},giver='U7F1C01DF5EB9CADC'}
,q46FB2820221A9BFD={lvl=47,scene="Edgewood",type={13}}
,q2961B98E1EBCC3C3={lvl=47,giver='U25702FE43AAE2037'}
,q74FE1EB3DEA32737={lvl=47,type={8},giver='U012871AA2943CF3F'}
,q309F561DC0843A73={lvl=47,giver='U5E13D19D6F96992F'}
,q147BE51182CB1F4C={lvl=47,scene="Edgewood",type={13}}
,q14A4CFFB6210EBDC={lvl=47,giver='U1CB0E0C95D68041A'}
,q16D36AFDDAC55015={lvl=47,giver='U337CFEDA373E579E'}
,q67150CA8F9FDF7DF={lvl=47,scene="Edgewood",type={6},giver='U3957CDE62A48A82C'}
,q5361F52FD4E9C28E={lvl=47,scene="Edgewood",type={1},giver='U379701F65ADB32BF'}
,q0E2791BA83D260C4={lvl=47,scene="Edgewood",type={1},giver='U08BAB1667C094302'}
,q7B43C75EA583E9B4={lvl=47,giver='U66B3C55570D72FD2'}
,q467C57B59C5F1122={lvl=47,giver='U66B3C55570D72FD2'}
,q55724CD5E33D5256={lvl=47,giver='U3E711DB449B32853'}
,q0B5430F6E06EAAB0={lvl=47,giver='U25702FE43AAE2037'}
,q223A38A3FC2D478F={lvl=47,scene="Edgewood",type={10},giver='U1430E93C1DE65DEF'}
,q6F6ED1BB79EDD5D7={lvl=47}
,q44667C2BB5EB1140={lvl=47,scene="Edgewood",type={1},giver='U42E38FCC4877B01D'}
,q72B3167EB3681AA7={lvl=47,giver='U3E711DB449B32853'}
,q72AEDFF4C78EC00C={lvl=47,giver='U5E13D19D6F96992F'}
,q6FF29B83F71D8C2E={lvl=47,scene="Edgewood",type={6},giver='U4FBE79A5081E60EF'}
,q65EAEC36C1135C3B={lvl=47,giver='U337CFEDA373E579E'}
,q3793189401C5866F={lvl=47,scene="Edgewood",type={13}}
,q135116BE08AA4506={lvl=47,giver='U1CB0E0C95D68041A'}
,q240C7EAD75381948={lvl=47,giver='U337CFEDA373E579E'}
,q64A55E7886D94202={lvl=47,giver='U5E13D19D6F96992F'}
,q1AFE1739B9A53A21={lvl=47,giver='U4108F9E76DECDCF2'}
,q378E9F9BA7BA448B={lvl=47,scene="Edgewood",type={10},giver='U379701F65ADB32BF'}
,q563ED8371755501F={lvl=47,giver='U5E13D19D6F96992F'}
,q6B5F56FFB3E8B96B={lvl=47,scene="Edgewood",type={4,6},giver='U42E38FCC4877B01D'}
,q2459AC16BDA2C5F9={lvl=47,scene="Edgewood",type={6,4},giver='U2B01999071011266'}
,q554DB2ED1CAD2853={lvl=47,giver='U337CFEDA373E579E'}
,q603F0940C609277A={lvl=47,giver='U1CB0E0C95D68041A'}
,q1BC0FFECAD05A58F={lvl=47,scene="Edgewood",type={4},giver='U379701F65ADB32BF'}
,q5F506AF390D23471={lvl=47,scene="Edgewood",type={1},giver='U7F1C01DF5EB9CADC'}
,q4094EA719B46B997={lvl=47,scene="Edgewood",type={1},giver='U2B01999071011266'}
,q427B9426F9803E86={lvl=47,scene="Edgewood",type={13}}
,q62762C1200000000={lvl=48,scene="Steampike Pit",type={4,3}}
,q3AE080D91C0F5856={lvl=48,giver='U7A72FCEF0F26DF64'}
,q251B0BEF831CDAD3={lvl=48,giver='U671F2D1C6BDF00C1'}
,q7C5776C3E39C1D44={lvl=48,scene="Eye of Regulos",type={5},giver='U55CF06324434EB20'}
,q4C6248B65BED2B63={lvl=48,use={{key='I021279D297D79616,FEE5C6A88134E14F,,,,,,', count=1}},type={8,4,10},giver='U4C71D9155FAD0728'}
,q082268E4CC65E9AB={lvl=48,type={17}}
,q2AA74947BBB61145={lvl=48,giver='U5E13D19D6F96992F'}
,q34417F157BEAC877={lvl=48,type={17}}
,q3C78AD0ACC801587={lvl=48,giver='U147065E82BD38D22'}
,q08919B0400000000={lvl=48,scene="Whitefall",use={{key='I11666E149F2F4789,BC5D03315B7F0826,,,,,,', count=1}},type={3,1}}
,q2342C4E4D2DB5D45={lvl=48,scene="Eye of Regulos",type={1},giver='U3E1F70977DD4573F'}
,q09E5BC2752D583E5={lvl=48,type={17,7}}
,q2F3AAEBD7DBDC4EE={lvl=48,type={17,7}}
,q45CB0F07E58AC9EA={lvl=48,type={7,17}}
,q738E380892B9DEE1={lvl=48,type={17,7}}
,q5E39BF7B00000000={lvl=48,scene="Whitefall",use={{key='I10561ECCEC1974B6,20B16DF35B6818DE,,,,,,', count=1}},type={3,1}}
,q125F3E6B00000000={lvl=48,scene="Whitefall",use={{key='I45690F115AA55096,0B3B3F9D470AD342,,,,,,', count=1}},type={3,1}}
,q12209AECC8B52758={lvl=48,scene="Ruston",type={8},giver='U4FBE79A5081E60EF'}
,q626D4D7AACE8291E={lvl=48,scene="Brighton",type={8},giver='U08BAB1667C094302'}
,q149E148F8BC0D7EE={lvl=48,giver='U21D7AF18506F93F3'}
,q2C1FBC6D52D4DAF8={lvl=48, grp=3,type={11,3},giver='U386588A9216849BC'}
,q1B5FCB68E178F2AE={lvl=48,type={7,17}}
,q270D1F5C782B1E24={lvl=48,type={17,7}}
,q3BA39EA6460FBC53={lvl=48,type={17,7}}
,q7F5D843277353E90={lvl=48,type={17,7}}
,q120A887A22F979C4={lvl=48}
,q307CFA801412DB5B={lvl=48,scene="Eye of Regulos",giver='U16AAF3FE27D3C087'}
,q6B35AD7EE354B20A={lvl=48,giver='U671F2D1C6BDF00C1'}
,q6BAAE294901C1CFF={lvl=48,scene="Eye of Regulos",type={13}}
,q0A8828CD00000000={lvl=48,scene="Steampike Pit",type={4,3}}
,q1E6AFAB8BCD80497={lvl=48,giver='U7A72FCEF0F26DF64'}
,q0A99B5B0C0F6586F={lvl=48,type={7,17}}
,q0B7006ED71382CE5={lvl=48,type={7,17}}
,q237835738EA3CE21={lvl=48,type={17,7}}
,q52F0AB6B9F4E0B49={lvl=48,type={17,7}}
,q5634B624370EC13D={lvl=48,type={7,17}}
,q67A9DB4DDAC27FD3={lvl=48,type={7,17}}
,q0A3EBFAAC309ABA4={lvl=48,giver='U652056DF6E82D537'}
,q3A823AF59479AF6D={lvl=48,type={3,11,1},giver='U0184E047382113E3'}
,q6D1536B9BE25FF84={lvl=48,type={10},giver='U2B01999071011266'}
,q1BC6B57F8328B94A={lvl=48,scene="Eye of Regulos",type={4},giver='U2F118E4075272F54'}
,q1D8D8317C5295ABC={lvl=48}
,q390394589C31F63B={lvl=48,scene="Eye of Regulos",type={10,1},giver='U47DFC5EC5568437B'}
,q3D00159C41EC6C9D={lvl=48,scene="Twisted Hollow",type={6},giver='U624C0BE07220BF99'}
,q03A3BAADE0EF1E6E={lvl=48,scene="Eye of Regulos",type={1},giver='U6E46E8C84B7AAEEC'}
,q2003E86CFD6419E4={lvl=48,scene="Eye of Regulos",type={1},giver='U6E46E8C84B7AAEEC'}
,q765E2B2A4622081C={lvl=48,giver='U25702FE43AAE2037'}
,q6809D50F8EE4C0AC={lvl=48,scene="Eye of Regulos",type={4,6},giver='U427BD0C313C93913'}
,q7315D11676760D58={lvl=48,type={17}}
,q78ED5F8C00000000={lvl=48,scene="Whitefall",type={3,6}}
,q457EA13100000000={lvl=48,scene="Steampike Pit",type={1,3}}
,q4429791EFD4239F2={lvl=48,scene="Eye of Regulos",type={4},giver='U47DFC5EC5568437B'}
,q7795DA428DD7B82D={lvl=48,type={17}}
,q770C367A232DA07D={lvl=48,type={17}}
,q64EFBA9AB77544F9={lvl=48,type={6,4},giver='U4FBE79A5081E60EF'}
,q45836506632891E4={lvl=48,type={5},giver='U16AAF3FE27D3C087'}
,q01669D9746B75885={lvl=48,type={17,7}}
,q28B0DDA4300AA0D5={lvl=48,type={7,17}}
,q0F63BB845F551DF7={lvl=48,type={7,17}}
,q1667C04C604C7277={lvl=48,type={17,7}}
,q07CA5FDCF47E23E8={lvl=48,giver='U25702FE43AAE2037'}
,q25656648A81B8822={lvl=48,giver='U671F2D1C6BDF00C1'}
,q755F2EDAA8A1F884={lvl=48,scene="Eye of Regulos",type={4,6},giver='U47DFC5EC5568437B'}
,q1312AB517AE1AE46={lvl=48,type={17}}
,q079387587C4E1D6B={lvl=48,type={7,17}}
,q4242E1BFB50BCA7E={lvl=48,scene="Eye of Regulos",use={{key='I2AAA249099EE1E7B,E07FD9A75641BD47,,,,,,', count=1}},type={10,4},giver='U1FA1AEF176223DFA'}
,q684F70450534ACEB={lvl=48,scene="Eye of Regulos",type={1},giver='U1FD436BF0F5DD040'}
,q53F81CF5CC7C5177={lvl=48,type={17}}
,q1B155EBF48ED191C={lvl=48,type={17}}
,q5B32546C00000000={lvl=48,scene="Steampike Pit",type={10,3}}
,q779FEEC6FB6B83F1={lvl=48,scene="Eye of Regulos",type={1,10},giver='U2F118E4075272F54'}
,q665635E6BE458BCF={lvl=48,type={17}}
,q40BF9ECEBAC81DDF={lvl=48,scene="Eye of Regulos",type={1},giver='U2B3D4D3E43EC8736'}
,q78980E5CE3970930={lvl=48,giver='U652056DF6E82D537'}
,q1EADFE6C1C04B228={lvl=48,scene="Eye of Regulos",type={1},giver='U688C866534BEBEAC'}
,q5BAAC7F45FEBB4EE={lvl=48,giver='U21D7AF18506F93F3'}
,q2FFE1DCE82C3ED82={lvl=48,type={6},giver='U4C71D9155FAD0728'}
,q0BEDA8D2412D422F={lvl=48,type={7,17}}
,q66A8EB59AD89960C={lvl=48,type={7,17}}
,q0C16EE5A872803F8={lvl=48,type={17}}
,q55DD64F9720C4186={lvl=48,type={17}}
,q138495C6A21DD646={lvl=48,type={7,17}}
,q34A08F3E9AC81F50={lvl=48,type={7,17}}
,q0023302B85721950={lvl=48,type={17,7}}
,q4501B01A61292CD4={lvl=48,type={17,7}}
,q05355C0DA8D36598={lvl=48,type={17}}
,q7B2347436FD899C7={lvl=48,type={1},giver='U478CB1E254434C70'}
,q3FCD88CE5C75B775={lvl=48,scene="Eye of Regulos",type={10,4},giver='U599D6F553913F733'}
,q26E27495DC96DC1F={lvl=48,scene="Eye of Regulos",type={1},giver='U5A4E571740C36E43'}
,q10F6011F2A0791A0={lvl=48,giver='U25702FE43AAE2037'}
,q118DF1AA00000000={lvl=48}
,q425B944E00000000={lvl=48,scene="Steampike Pit",type={3,4}}
,q598349EFA1980657={lvl=48,type={17}}
,q23E53BAFCD5EF3E9={lvl=48,scene="Eye of Regulos",type={13}}
,q7FE2779308C9BE80={lvl=48,giver='U7A72FCEF0F26DF64'}
,q5FED7EC7B6F8AD55={lvl=48,scene="Caer Thalos",type={1},giver='U688C866534BEBEAC'}
,q1EF2647ADF3E3B00={lvl=48,type={8},giver='U16AAF3FE27D3C087'}
,q5E87F9DBA9AF3ACB={lvl=48,type={17}}
,q3B7A429E9EFEBD53={lvl=48,type={17}}
,q34B5227BB4A2CC79={lvl=48,scene="Eye of Regulos",type={1},giver='U1FD436BF0F5DD040'}
,q43CBBB68C719283D={lvl=49,domain="pvp"}
,q7F75B088B63E2252={lvl=49,giver='U7D1DCA3303A744EE'}
,q2C1FDB6171BE1567={lvl=49,domain="pvp"}
,q182C45BECB32E023={lvl=49,giver='U46FB2498154B5861'}
,q4A8B76F9B4A64119={lvl=49,craft={{key='I513D94AA695F9DC3,6E55958D9E299F29,,,,,,', count=8}},type={25}}
,q5095646D83E09A99={lvl=49,craft={{key='I513D94AA695F9DC3,6E55958D9E299F29,,,,,,', count=8}},type={25}}
,q022C9A0EE7379C74={lvl=49,craft={{key='I7959944CE219E2CC,256A4784A623F89B,,,,,,', count=8}},type={25}}
,q437855A775780B8A={lvl=49,craft={{key='I7959944CE219E2CC,256A4784A623F89B,,,,,,', count=8}},type={25}}
,q312E211D746F843E={lvl=49,scene="Zareph's Return",craft={{key='I40A14CFE7782CBD9,013D1390CA91C39B,,,,,,', count=10}},type={25}}
,q31A14F0AD8105334={lvl=49,craft={{key='I40A14CFE7782CBD9,013D1390CA91C39B,,,,,,', count=10}},type={25}}
,q1F2EEB86C126F853={lvl=49,scene="Chancel of Labors",craft={{key='I594AC3A96C102898,36F32DE49B461B8E,,,,,,', count=8}},type={25}}
,q6C58A5CE2F24895B={lvl=49,scene="Chancel of Labors",craft={{key='I594AC3A96C102898,36F32DE49B461B8E,,,,,,', count=8}},type={25}}
,q12F5A29C01470670={lvl=49,scene="Chancel of Labors",craft={{key='I3487F2342F814A96,0387C89D574F50D2,,,,,,', count=8}},type={25}}
,q3789D317AD3AC1F1={lvl=49,scene="Chancel of Labors",craft={{key='I3487F2342F814A96,0387C89D574F50D2,,,,,,', count=8}},type={25}}
,q67DDD23656176AA0={lvl=49,domain="pvp"}
,q3517BA39020E0989={lvl=49,domain="pvp"}
,q5A11C6E6420B0396={lvl=49,domain="pvp"}
,q553EA484D298F87E={lvl=49,use={{key='I57B679244F2DFED6,45D8C06D257D5AD2,,,,,,', count=1}},giver='U500C64BD77566243'}
,q23A3BFB2A6E80D84={lvl=49,giver='U25DA0D195D4BD672'}
,q497D1133AAF1A60F={lvl=49}
,q1822B00946AAB938={lvl=49,giver='U2CCDF7D4057C5ED0'}
,q4428B1241465D751={lvl=49,scene="Twisted Hollow",type={1,10},giver='U2D6FAEC878B3979F'}
,q0E66B4A811C17A5D={lvl=49,giver='U7A72FCEF0F26DF64'}
,q1D36EB64CC27BBD1={lvl=49,scene="Crown Hill",type={1},giver='U2132550217FB18AB'}
,q3B25C82FBBFFB705={lvl=49,scene="Caer Mathos",type={10},giver='U2D6FAEC878B3979F'}
,q6180DB015824268B={lvl=49,scene="Crown Hill",type={4},giver='U2132550217FB18AB'}
,q14D17B0EA73161DE={lvl=49,giver='U2CCDF7D4057C5ED0'}
,q0A803312B64628EE={lvl=49,giver='U2CCDF7D4057C5ED0'}
,q5BC7D69E8A3B2EBD={lvl=49,scene="Zareph's Return",giver='U2132550217FB18AB'}
,q444BE3DEB4A98F66={lvl=49,giver='U46FB2498154B5861'}
,q235C4833DCC6DCCE={lvl=49,domain="pvp"}
,q3F62302196F40FB1={lvl=49,use={{key='I798CDA4C65CE08BB,3395A7547693154F,,,,,,', count=3}},type={10},giver='U500C64BD77566243'}
,q528EEE36A92A3AED={lvl=49,scene="Crown Hill",type={10},giver='U2132550217FB18AB'}
,q6A47A870E2416B10={lvl=49,giver='U46FB2498154B5861'}
,q1E0569719A1492B7={lvl=49,giver='U610DECD510C32842'}
,q0DA5E8F7D7C15BB4={lvl=49,scene="Crown Hill",type={1,10},giver='U2132550217FB18AB'}
,q42FF7FA93AB7D7A0={lvl=49,giver='U46FB2498154B5861'}
,q5306A61E0B56B04D={lvl=49,giver='U75201A5275762A4D'}
,q24DB45F30293AE81={lvl=49,giver='U46FB2498154B5861'}
,q48CE1BC8DF92682B={lvl=49,giver='U09D040D4126AC805'}
,q055C9557B9B36191={lvl=49,scene="Caer Mathos",use={{key='I480503E57EDC9A73,84890C8714C85EFD,,,,,,', count=5}},type={10},giver='U2D6FAEC878B3979F'}
,q24A1D43411856048={lvl=49,scene="Crown Hill",use={{key='I644AFCD78D8435F5,3B426D108ACCFA35,,,,,,', count=5}},type={10},giver='U2132550217FB18AB'}
,q2AC578D1A21C0548={lvl=49,scene="Twisted Hollow",type={4},giver='U2D6FAEC878B3979F'}
,q5267CBF909533421={lvl=49,giver='U1552784227896486'}
,q5C4AACE1E96FD691={lvl=49,giver='U1552784227896486'}
,q49C3BE753CDB9F64={lvl=49,giver='U75201A5275762A4D'}
,q0BE94575CF4FC6D4={lvl=49,scene="Caer Mathos",type={1},giver='U2D6FAEC878B3979F'}
,q68A81177AFB1B9B8={lvl=49,scene="Zareph's Return",giver='U2D6FAEC878B3979F'}
,q4A81BD5F1E45BA68={lvl=49,giver='U500C64BD77566243'}
,q4DB0136D590DDAAC={lvl=49,domain="pvp"}
,q62510AA6085A25FC={lvl=49,giver='U75201A5275762A4D'}
,q3B6A9B8BD66D2B3B={lvl=49,giver='U1552784227896486'}
,q01C3954DFA4EC7E2={lvl=49,giver='U610DECD510C32842'}
,q724D80CD177D70E5={lvl=49,use={{key='I3225D80C957BC4D1,CC9BB65A0573A300,,,,,,', count=1}},giver='U500C64BD77566243'}
,q577817F53E49BBCA={lvl=49, grp=3,type={4,1},giver='U38BA3C2F13E0CB1A'}
,q445150A76E10DA6F={lvl=49,domain="pvp"}
,q721DBF10EE388B51={lvl=49,use={{key='I2F6E2BECA77CED9D,1370E49DC6FBDC70,,,,,,', count=1}},giver='U500C64BD77566243'}
,q7181FAE49C056C9D={lvl=49,giver='U09D040D4126AC805'}
,q41044DFD1EC65586={lvl=49,giver='U09D040D4126AC805'}
,q5FCA6CB900000000={lvl=50}
,q0835E21900000000={lvl=50, grp=5,type={6,1,3}}
,q0D61180D00000000={lvl=50, grp=5,type={3,1,6}}
,q180F8FB300000000={lvl=50,scene="Crystal Depths",type={1}}
,q3443488700000000={lvl=50,type={3,1}}
,q0920012600000000={lvl=50, grp=5,type={6,5}}
,q5A50B89700000000={lvl=50, grp=5,type={5,6}}
,q46DBCEC400000000={lvl=50}
,q49E8C66800000000={lvl=50}
,q65569B8EC25822A1={lvl=50,scene="Chancel of Labors",type={10,8,2},giver='U068B93E466090425'}
,q6F6A9EBB23F649B7={lvl=50,scene="Chancel of Labors",type={2,10,8},giver='U068B93E466090425'}
,q03C1AB8A4CDCB4F5={lvl=50,type={4,18},giver='U22C3C240360A4988'}
,q3EEE51E888A646E9={lvl=50,type={4},giver='U5B31447119029D11'}
,q7034740C8B86176C={lvl=50,type={1}}
,q1609CE4A00000000={lvl=50, grp=5,type={5,6}}
,qFFFCA3103150E9E4={lvl=50,domain="ia"}
,qFF459DF82BE73A6D={lvl=50,domain="ia"}
,qFD0907642B02D80B={lvl=50,domain="ia"}
,qFCA84BAC7627C82A={lvl=50,domain="ia"}
,qFBEDB0CB5B3F7223={lvl=50,domain="ia"}
,q5D42EF6400000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q1C6ABA1200000000={lvl=50, grp=3,giver='U466F8E012F1FF1FB'}
,q74D4C4E900000000={lvl=50, grp=3,giver='U3D8EA30F468E8E08'}
,q2924323D1A262E3C={lvl=50,scene="Edgewood",domain="ia"}
,q3DB550940881C1B5={lvl=50,scene="Edgewood",domain="ia"}
,q6A2105F1551282C9={lvl=50,scene="Edgewood",domain="ia"}
,q6B5C5B28036245B0={lvl=50,scene="Edgewood",domain="ia"}
,q7F8C94FA213D3197={lvl=50,scene="Edgewood",domain="ia"}
,q1A6A09D3443EBC97={lvl=50,domain="ia"}
,q5079DA4137C4074D={lvl=50,domain="ia"}
,q6989ED8120858725={lvl=50,domain="ia"}
,q6C217D015C70C70C={lvl=50,domain="ia"}
,q7629C3F10DBBA08C={lvl=50,domain="ia"}
,q24AC060EB97BE48D={lvl=50, grp=3,use={{key='I1E11FDB167EE5EAE,4E43C5052F8A9A0F,,,,,,', count=1},{key='I77EEC2DCD6CA3BBC,B47891C1F2617F2A,,,,,,', count=1}},type={11},giver='U3436867F2A80DBC8'}
,q76838DF9106B8523={lvl=50,type={1}}
,q0906700633C83CB7={lvl=50,type={3}}
,q5A9D469B80423B62={lvl=50,type={3}}
,q65DA3BEE0D141388={lvl=50,type={3},giver='U781C716D793142FD'}
,q41E764AF6B596A8E={lvl=50,giver='U448A3E3B5AC6BE58'}
,q4686B47EF514091F={lvl=50,scene="The Endless Citadel",type={1,3}}
,q763D648CB838C2AC={lvl=50,scene="The Endless Citadel",type={1},giver='U05E091603C0BCFE9'}
,q4973A9408BF93D7C={lvl=50}
,qFFA8FF9514825A4C={lvl=50,domain="ia"}
,qFC8E85D816D1B453={lvl=50,domain="ia"}
,qFC1031A81394980B={lvl=50,domain="ia"}
,qFB2FFA6503F611DA={lvl=50,domain="ia"}
,qFACBB1B772792F62={lvl=50,domain="ia"}
,q595834F9926A1781={lvl=50,type={7},giver='U56F70D731D676A5D'}
,q257C4CFFD3D517E7={lvl=50,giver='U3A8B9996451A4D99'}
,q159CC64C3EAA1B48={lvl=50,domain="ia"}
,q21EAB8D47940507E={lvl=50,domain="ia"}
,q4D7DD6DB357425C3={lvl=50,domain="ia"}
,qFFC53DEE6083527F={lvl=50,domain="ia"}
,qFF212F9C1C96F52E={lvl=50,domain="ia"}
,qFC5B9D727824AA96={lvl=50,domain="ia"}
,qFB8EB1617A41D16F={lvl=50,domain="ia"}
,qFABA943B6BD7F0D3={lvl=50,domain="ia"}
,q033EA6E5BD088F9E={lvl=50,domain="guild"}
,q053371787F1AE024={lvl=50,domain="guild"}
,q0663B63CDC9F7F92={lvl=50,domain="guild"}
,q16BE9FABCEF990BA={lvl=50,domain="guild"}
,q2BC14F9CE1DF7E24={lvl=50,domain="guild"}
,q2E142ED9DEACEAD0={lvl=50,domain="guild"}
,q2FB2695176C77B59={lvl=50,domain="guild"}
,q32D5DA369CE43E2C={lvl=50,domain="guild"}
,q35AD5EEC4DB4E917={lvl=50,domain="guild"}
,q362EB7D8DBB316DC={lvl=50,domain="guild"}
,q3B468FCA984D168B={lvl=50,domain="guild"}
,q41490B94EC326B2B={lvl=50,domain="guild"}
,q415813CBD1B4FB9F={lvl=50,domain="guild"}
,q4383D9386F0444DF={lvl=50,domain="guild"}
,q51503E8D816C9D09={lvl=50,domain="guild"}
,q5B934E502E1717AA={lvl=50,domain="guild"}
,q5DDBFF50B4F1BB4E={lvl=50,domain="guild"}
,q66600F231878B8BE={lvl=50,domain="guild"}
,q67DDDF61F92DE6B3={lvl=50,domain="guild"}
,q751209808C734853={lvl=50,domain="guild"}
,q12346103B920CAA5={lvl=50,domain="pvp"}
,q4A37E5B7B86DE50D={lvl=50, grp=3,type={11},giver='U645A71C97E70A784'}
,qFF947CB95B028142={lvl=50,domain="ia"}
,qFE1BA9AF3DBE405A={lvl=50,domain="ia"}
,qFCDBA48B340C8DC6={lvl=50,domain="ia"}
,qFC2A657A41A89757={lvl=50,domain="ia"}
,qFABDBD0604510755={lvl=50,domain="ia"}
,q05754FB541650040={lvl=50,domain="ia"}
,q071A13A9070C1253={lvl=50,domain="ia"}
,q0EDEC71C76660313={lvl=50,domain="ia"}
,q2D6AEE21463C0578={lvl=50,domain="ia"}
,q56D5C97302252C17={lvl=50,domain="ia"}
,q323E77A008A0B966={lvl=50,domain="ia"}
,q5C8DC4B2467196AA={lvl=50,domain="ia"}
,q63D8594E74E7DE2E={lvl=50,domain="ia"}
,q688188417F13CB5B={lvl=50,domain="ia"}
,q7CA568A4786254BC={lvl=50,domain="ia"}
,q040863F445FD1C8E={lvl=50,giver='U0F0CDEFF3C9DCC3B'}
,q7E738839E28C9147={lvl=50,type={8,18}}
,q2FAAD2D1E6093E05={lvl=50,type={1}}
,q5AEAF4FA933E4F93={lvl=50,domain="pvp"}
,q4AF7D158EB25D015={lvl=50,domain="pvp",giver='U679C15062B0D5DB5'}
,q2BD65B16929401BE={lvl=50}
,q2ADE7614AA401E84={lvl=50,type={18,16}}
,q22B42339A8D2C97B={lvl=50}
,q2FE2A3305E77B7B3={lvl=50,giver='U277175AB24CFFAD0'}
,q4F777F099A4501F0={lvl=50,giver='U240602C306529ED4'}
,qFFE2D4986B9D27A1={lvl=50,domain="ia"}
,qFF066A16431E1EDA={lvl=50,domain="ia"}
,qFE000AA96E27A8BA={lvl=50,domain="ia"}
,qFBEA980C567F04BE={lvl=50,domain="ia"}
,qFA15EA8767368785={lvl=50,domain="ia"}
,q47AB50ED9DA65641={lvl=50,giver='U525E7E3B7FE09361'}
,q0AE18B377368BDEB={lvl=50,domain="ia"}
,q14C9E4CB5A577484={lvl=50,domain="ia"}
,q4C8E8F5434F86946={lvl=50,domain="ia"}
,q6EA2BFE2129CEB79={lvl=50,domain="ia"}
,q76740C5E2E692580={lvl=50,domain="ia"}
,q0CE0D51E11578681={lvl=50,scene="Caer Kholum",domain="ia"}
,q0E9B71ED39BD0F6A={lvl=50,scene="Caer Kholum",domain="ia"}
,q25BA7F904DF41F4E={lvl=50,scene="Caer Kholum",domain="ia"}
,q75866BDF0A8812BF={lvl=50,scene="Caer Kholum",domain="ia"}
,qFD97451B155C16A8={lvl=50,domain="ia"}
,qFD38DA6C7B30B4A3={lvl=50,domain="ia"}
,qFC8D6F38155E9C17={lvl=50,domain="ia"}
,qFC561EE00D66FEF6={lvl=50,domain="ia"}
,qFC2FDC8700BC4DDA={lvl=50,domain="ia"}
,q07BD505D00000000={lvl=50,type={4}}
,q57CC6DA000000000={lvl=50,type={4}}
,q58CC1A29A22044DF={lvl=50,type={1}}
,q60E70415B291564A={lvl=50,scene="The Endless Citadel",type={3,6}}
,q6007A37650DD7262={lvl=50,scene="Crown Hill",domain="ia"}
,qFFD8BA5909B8F07B={lvl=50,domain="ia"}
,qFDB1AB763B9273BF={lvl=50,domain="ia"}
,qFD9AF14952A23FDD={lvl=50,domain="ia"}
,qFAEDE2FD15534F14={lvl=50,domain="ia"}
,qFA72AE6C7BBA5FF0={lvl=50,domain="ia"}
,q2435B6AC75BA9C77={lvl=50,domain="ia"}
,q40A56E3745672B87={lvl=50,domain="ia"}
,q5FEC8A9C0A6652F1={lvl=50,domain="ia"}
,q637EE8D7647BC4AF={lvl=50,domain="ia"}
,q7593614A38E12896={lvl=50,domain="ia"}
,q09EEA41C8C4D4647={lvl=50,domain="guild"}
,q0A1D7E16965B3C39={lvl=50,domain="guild"}
,q1C7DF7319319DF3E={lvl=50,domain="guild"}
,q1CCDB633E1BB9A2E={lvl=50,domain="guild"}
,q281393331A841FA8={lvl=50,domain="guild"}
,q2BA3B373E788F6A6={lvl=50,domain="guild"}
,q2E0EAB320BA91841={lvl=50,domain="guild"}
,q316B306FBA8B8852={lvl=50,domain="guild"}
,q38CD4A4EF4DBF76A={lvl=50,domain="guild"}
,q431DC06A0B9EFB3F={lvl=50,domain="guild"}
,q436DF1A701143EDD={lvl=50,domain="guild"}
,q449C0BCB4B541272={lvl=50,domain="guild"}
,q475FE62B463B37D9={lvl=50,domain="guild"}
,q48668686F338613E={lvl=50,domain="guild"}
,q4BB9A3DF9B5C0BB8={lvl=50,domain="guild"}
,q5AD7AE0530C99518={lvl=50,domain="guild"}
,q6F0F9D64D2F5BD48={lvl=50,domain="guild"}
,q7925CC4E976C0932={lvl=50,domain="guild"}
,q7AB6813D1F246CF4={lvl=50,domain="guild"}
,q7B107865C993B5E7={lvl=50,domain="guild"}
,q2C04ADA37465C346={lvl=50,domain="ia"}
,q1AB9209A377A977B={lvl=50}
,q60F2F584E936F5D9={lvl=50,domain="pvp"}
,q7DD72A51DB8E27EE={lvl=50,use={{key='I5165E3485530187A,F792A7EDA344A6D4,,,,,,', count=1}},giver='U3A8B9996451A4D99'}
,q2617045271C3C287={lvl=50,scene="Belmont",domain="ia"}
,q429D469D167C773F={lvl=50,scene="Belmont",domain="ia"}
,q6B3D19135E1D7058={lvl=50,scene="Belmont",domain="ia"}
,q6FEE1F0C52603814={lvl=50,scene="Belmont",domain="ia"}
,q76B4A6A55E8D6B24={lvl=50,scene="Belmont",domain="ia"}
,q1CE6FA51DE04F1FE={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q1D547030134F69A9={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q27DC287A05EE3E0C={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q28D542B2BD6BF61D={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q3282CD47E91300C6={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q3793C262CB07B400={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q38E4EC8185E275D7={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q4EEABAD29E63A04A={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q75A16EC3EA806326={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q7F4522C0CB5D304F={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q124D394208504DF5={lvl=50,type={1}}
,q13DC514D9A335510={lvl=50,type={1}}
,q19B3DAB01F7EDA62={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q1B686FD277CCD435={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q3F82F3A13765C3DC={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q776508AF225E279D={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q0916ED4E76E41205={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q1CB07DCF81BE3034={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q1DA505DE069CBFE3={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q359E02F6767D9C14={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q517C99BBCEBDD045={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q7DD75692BD0B49D7={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q30EC27CE2D915151={lvl=50,domain="ia"}
,qFFE63FB2497C7434={lvl=50,domain="ia"}
,qFFF0CE4209795946={lvl=50,domain="ia"}
,qFE0AC2C50E219DEC={lvl=50,domain="ia"}
,q1731B56FA038109E={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q367857E1AA915921={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q3AF78D57639A6226={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q5C86E834AA14E3C0={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q732B91E1F3453BC2={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q01F2ACB2894AC145={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q19E8E1857C7BAE98={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q1BC39AEFBDD3E7BE={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q3F9565F2B661A6AF={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q59FD3F65184D71AB={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q183FD780D31AB3F7={lvl=50,craft={{key='I02D4B09C6161A3B6,0B15EF5A7018E13C,,,,,,', count=4}},type={25}}
,q782A69556E8DEA42={lvl=50,craft={{key='I02D4B09C6161A3B6,0B15EF5A7018E13C,,,,,,', count=4}},type={25}}
,q1EFC978EB14A5550={lvl=50}
,q5B1D551011120CB3={lvl=50}
,q0C4B57DFC02F8204={lvl=50,craft={{key='I2DAD398E4F07EE8E,A46A749544C960D6,,,,,,', count=4}},type={25}}
,q3300591D73609EE2={lvl=50,craft={{key='I2DAD398E4F07EE8E,A46A749544C960D6,,,,,,', count=4}},type={25}}
,q276631A68510420F={lvl=50}
,q323429E2A3F21039={lvl=50}
,q2DB0A1880AE86D35={lvl=50}
,q60B9A57C026B455B={lvl=50}
,q07413AA092733814={lvl=50}
,q61C55D2E045412AF={lvl=50}
,q57F80375D6634A5E={lvl=50}
,q05094151FF57F396={lvl=50}
,q1BDD2A270B8521AE={lvl=50,craft={{key='I02D4B09B99838D7F,F624A9790842ED3E,,,,,,', count=4}},type={25}}
,q1CACAE062C8CDF98={lvl=50,craft={{key='I02D4B09B99838D7F,F624A9790842ED3E,,,,,,', count=4}},type={25}}
,q3DBBA0D1514AB0E4={lvl=50}
,q4A36DBA9B04A2DCA={lvl=50}
,q2B2EA5600C85D4BB={lvl=50}
,q0EB47D2685EB0E05={lvl=50}
,q6DA40C24D1694537={lvl=50}
,q44CB3DB9E09E358C={lvl=50}
,q0B96C0B8B9207F63={lvl=50}
,q670C305C1ECB97D4={lvl=50}
,q19D51745AF1D8513={lvl=50,craft={{key='I2DAD398F342AE66B,B66CCBAAD025A4B0,,,,,,', count=4}},type={25}}
,q6DE80346031695AA={lvl=50,craft={{key='I2DAD398F342AE66B,B66CCBAAD025A4B0,,,,,,', count=4}},type={25}}
,q4D2A8EDDDE8055A7={lvl=50,giver='U01C1F17B69022E53'}
,q42B810668AA25F50={lvl=50}
,q1BFA92CA3C45D2DC={lvl=50,domain="ia"}
,q3FB2076A7CDDCCF4={lvl=50,domain="ia"}
,q72BD322025E6D01B={lvl=50,domain="ia"}
,q76FB18AE34600E84={lvl=50,domain="ia"}
,q7DD191CC405E31F3={lvl=50,domain="ia"}
,q2BD47AD27468925E={lvl=50,domain="ia"}
,q2D0D53D87966D4B1={lvl=50,domain="ia"}
,q422813D270A06F7E={lvl=50,domain="ia"}
,q4DD590E34E105341={lvl=50,domain="ia"}
,q6E80971F706C8552={lvl=50,domain="ia"}
,q78284FFD4267591D={lvl=50,giver='U1E3BBF1E6ACC84AB'}
,q4804CA4070F2345A={lvl=50, grp=3,giver='U7B97B3B848CCFD63'}
,q2DEBE9239BCCAAF3={lvl=50,type={1}}
,q2D331DD1353E7862={lvl=50,type={17}}
,q0A88EF5B03A366B4={lvl=50,domain="ia"}
,q3A9BDE383432F8A5={lvl=50,domain="ia"}
,q4CE8B0EF06E97D48={lvl=50,domain="ia"}
,q4DDB98E84038D54B={lvl=50,domain="ia"}
,q512598456D1B88B4={lvl=50,domain="ia"}
,q5960529A6FD7A7FC={lvl=50,domain="ia"}
,q6A456C41442E4D1E={lvl=50,domain="ia"}
,q7665AD8435AA9D90={lvl=50,domain="ia"}
,q7A4B89D3381215C3={lvl=50,domain="ia"}
,q7FC8FFE941736AEC={lvl=50,domain="ia"}
,q1FC79C6D33698D6F={lvl=50,scene="Blood Grove",domain="ia"}
,q2035F7DD0E136D0D={lvl=50,scene="Blood Grove",domain="ia"}
,q2DB084DE4D755364={lvl=50,scene="Blood Grove",domain="ia"}
,q4A6EF49C29347E2E={lvl=50,scene="Blood Grove",domain="ia"}
,q734136942019FC31={lvl=50,scene="Blood Grove",domain="ia"}
,q097D076451B66943={lvl=50,scene="Belmont",domain="ia"}
,q2B6C283408689FEF={lvl=50,scene="Belmont",domain="ia"}
,q3B74773B107A32F9={lvl=50,scene="Belmont",domain="ia"}
,q51F268B53F5A71C2={lvl=50,scene="Belmont",domain="ia"}
,q547B088340AB23D3={lvl=50,scene="Belmont",domain="ia"}
,q0304C7F9E6206879={lvl=50,scene="Blood Grove",type={3,4}}
,q665120ACF44F806B={lvl=50}
,q29420450288C9E41={lvl=50,domain="ia"}
,q5ABF5653FB2694AD={lvl=50,scene="Death's Approach",type={3,6}}
,q1A2BCF4CBB579B29={lvl=50,type={7},giver='U009B4B723EFF0BF3'}
,q2262FC1513A51045={lvl=50,type={7},giver='U4629949B27C9E80B'}
,q3D69C6EABF48E93B={lvl=50,type={7},giver='U5FB073C01239E113'}
,qFAA58B2C8DFD78B1={lvl=50,type={1,16}}
,q665D7472BCAE0860={lvl=50,type={1,16}}
,q0972C5207F631241={lvl=50,domain="ia"}
,q50D80F533657AFEF={lvl=50,domain="ia"}
,q763F38D366BABD19={lvl=50,domain="ia"}
,q7C28C10C14BE0CEC={lvl=50,domain="ia"}
,q7F05D50959D32448={lvl=50,domain="ia"}
,q018E4BF0692964C0={lvl=50,domain="ia"}
,q0B3593181BB8B3E9={lvl=50,domain="ia"}
,q2B792A7002835712={lvl=50,domain="ia"}
,q2C98C1CD7B7BE032={lvl=50,domain="ia"}
,q6F363BBC2E202F7C={lvl=50,domain="ia"}
,qFE400E9A732F957F={lvl=50,scene="Scoria Expanse",type={4}}
,q34704257D8948571={lvl=50,domain="pvp"}
,q1D19D4DEBB4DF50F={lvl=50}
,q7AC97AB9A9AD6D85={lvl=50}
,q26449AB136BC10DA={lvl=50,domain="ia"}
,q3F44183434B670A7={lvl=50,domain="ia"}
,q4F1E230E30131F8E={lvl=50,domain="ia"}
,q6BAEFBC851B0CC47={lvl=50,domain="ia"}
,q79183BF325441F70={lvl=50,domain="ia"}
,q1115EDAFA8094BB0={lvl=50,domain="pvp"}
,q34CC9CD1B4243603={lvl=50,domain="pvp"}
,q07D9EECF0E13CAE9={lvl=50,domain="ia"}
,q1203E90926797B39={lvl=50,domain="ia"}
,q5C0B80190F2B2327={lvl=50,domain="ia"}
,q6AA5651104E386B8={lvl=50,domain="ia"}
,q78FACA71573490F8={lvl=50,domain="ia"}
,q1684D6F719C8EDCA={lvl=50,scene="Burlingham",domain="ia"}
,q2FDB23D23D7F0E77={lvl=50,scene="Burlingham",domain="ia"}
,q372C7F7F4AC2DAEA={lvl=50,scene="Burlingham",domain="ia"}
,q4A3EA8567C4D7EDC={lvl=50,scene="Burlingham",domain="ia"}
,q5AA3DB3309E9BBE3={lvl=50,scene="Burlingham",domain="ia"}
,q68E4A97E59A0AE6C={lvl=50,giver='U75526206316307F2'}
,q07BBB69CADA64485={lvl=50,type={1}}
,q5E547D3C00000000={lvl=50}
,q61E0EB1600000000={lvl=50}
,q4D2F356F00000000={lvl=50,scene="Crystal Depths",type={1,6}}
,qFC17B9FE6BB8BA3E={lvl=50,domain="ia"}
,qFBE226A319C8E0A2={lvl=50,domain="ia"}
,qFBD7C33A7B5B6D0F={lvl=50,domain="ia"}
,qFBB059201992DAD9={lvl=50,domain="ia"}
,qFB5228F77DBCA1CB={lvl=50,domain="ia"}
,q1257AA8400000000={lvl=50,type={7}}
,q02D1AC383C85565D={lvl=50,domain="ia"}
,q13E392C6B9D23A1F={lvl=50,domain="pvp"}
,q034E2E9D1EAE7235={lvl=50,domain="ia"}
,q0648C98D219692EE={lvl=50,domain="ia"}
,q083AD7373D571D52={lvl=50,domain="ia"}
,q12DA102027CE8F72={lvl=50,domain="ia"}
,q1A6F951A2F2C24B4={lvl=50,domain="ia"}
,q1DD93DE53C448847={lvl=50,domain="ia"}
,q2653AF3F595B363E={lvl=50,domain="ia"}
,q27CA2776779C90FE={lvl=50,domain="ia"}
,q292BCDCB1D049A22={lvl=50,domain="ia"}
,q29AEE864450C5226={lvl=50,domain="ia"}
,q37C7A88270386180={lvl=50,domain="ia"}
,q462DDA8A6332B025={lvl=50,domain="ia"}
,q4777016611BD9132={lvl=50,domain="ia"}
,q4AF3C9D17BBCF714={lvl=50,domain="ia"}
,q5B9AD1120497BF8F={lvl=50,domain="ia"}
,q5D15DB6A083364A6={lvl=50,domain="ia"}
,q71569E54228FF8DE={lvl=50,domain="ia"}
,q7234CC814BFAFFC1={lvl=50,domain="ia"}
,q7CE685EA23D02796={lvl=50,domain="ia"}
,q0F4FBD874E643285={lvl=50,domain="pvp"}
,q4662E911661B9001={lvl=50,type={3},giver='U330D3BA72F1F5B17'}
,q65C7C3389E247B15={lvl=50,domain="pvp",giver='U4A6802CD01E1D124'}
,q54D417E21A6BAC74={lvl=50,type={4},giver='U5EB1E3BF1D7A2A10'}
,q5269B85D299D3754={lvl=50,giver='U037A1FAC673492F2'}
,q6739D9BD180738AB={lvl=50,scene="Twisted Hollow",domain="ia"}
,q57A19BF9EDF32F89={lvl=50,domain="pvp",giver='U4A6802CD01E1D124'}
,q782A304D7FC36863={lvl=50,domain="pvp",giver='U679C15062B0D5DB5'}
,q27E69D9DA20C1101={lvl=50,giver='U3DBFA6113B3531C1'}
,q5270265B96D75DF6={lvl=50,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,q6B4AB17C3B8CA2CF={lvl=50,domain="pvp",giver='U22C7792F7D4F93BD'}
,q244BF5D02B3F86E4={lvl=50,giver='U2967EAF729A93EE9'}
,q53AC2A27AE305485={lvl=50,giver='U2D18504A758B9147'}
,q220B8F35E4CF19FE={lvl=50,domain="guild"}
,q220DA51211C45BB1={lvl=50,domain="guild"}
,q4DB97CFBAD9EBE52={lvl=50,giver='U47135C2812B17E1F'}
,q4FF735FED98C4010={lvl=50,giver='U71974FB249682D8A'}
,q78411FC6E02394B4={lvl=50,giver='U17DEBE56228D3A7E'}
,qFF3E57E999836D37={lvl=50,giver='UFA66786A75CB83CE'}
,q2875E2C19C6C6F5F={lvl=50,use={{key='I76C5EF47ABBF806E,37C77D7590EF23E3,,,,,,', count=1}},giver='U448A3E3B5AC6BE58'}
,q39FE6E597FDC2D2F={lvl=50}
,qFD7169F0CABE0A10={lvl=50,giver='UFE38E92276C01C20'}
,q2A01878C07BC831F={lvl=50,giver='U598133FF370CE092'}
,q1A3517E1A889E9E4={lvl=50,type={1},giver='U14FC9586103A9D90'}
,qFE307B699C1C85C0={lvl=50,giver='UFE38E92276C01C20'}
,qFE3AEE56BB382026={lvl=50,scene="Cirkbo Plains",type={1}}
,q3FB7349E7D1C3BEF={lvl=50,type={1}}
,q3BC1B98086C39ECE={lvl=50,giver='U13550A2B658C008E'}
,q056A227D00000000={lvl=50,giver='U4A77DFAC4B4F6BCC'}
,q2EFFAAB000000000={lvl=50,giver='U03FCB9E574A86A74'}
,q5AEC50AD12ECAD1B={lvl=50,domain="pvp"}
,q18E80D0CD5DF205B={lvl=50,giver='U33FA16E91969D019'}
,q6A2BB9FD1F62018C={lvl=50,domain="pvp"}
,q07EDCB381FCAFC1D={lvl=50,domain="ia"}
,q3E1204D20B8BC601={lvl=50,domain="ia"}
,q50A3A0122E3EC0A5={lvl=50,domain="ia"}
,q60D4C78454724B65={lvl=50,domain="ia"}
,q63395A5058011C66={lvl=50,domain="ia"}
,q088C68B5679EF825={lvl=50,domain="ia"}
,q0A367E720410B6AE={lvl=50,domain="ia"}
,q2AE2F2A7526EA04D={lvl=50,domain="ia"}
,q4D0FB32E37A799E5={lvl=50,domain="ia"}
,q4ED1A58B735C5217={lvl=50,domain="ia"}
,qFD38084C2AEB6DBC={lvl=50,domain="ia"}
,qFCEB843371021EC6={lvl=50,domain="ia"}
,qFBAF6F0A29352E65={lvl=50,domain="ia"}
,qFB2C53075D9F0EBA={lvl=50,domain="ia"}
,qFA2B8B400D840A01={lvl=50,domain="ia"}
,q00009FEE1FBCAAB6={lvl=50}
,q5CC3E89A916BAC21={lvl=50}
,q1D506FBA601E1034={lvl=50,use={{key='I40B481B04263EE08,5B51BE9AF7E385A1,,,,,,', count=1}},giver='U13550A2B658C008E'}
,q0E6429926E89F204={lvl=50}
,q16826F33CF2CC1FD={lvl=50}
,q72CA7901DBC3FB3E={lvl=50,type={1}}
,q46A18AB9B36EA40F={lvl=50,giver='U681340BC0DF66D6A'}
,q2144167A0987645A={lvl=50}
,q0ABFB57081399B91={lvl=50}
,q1F4FA45CFB70C46F={lvl=50}
,q1200FE2238850918={lvl=50,domain="ia",type={6}}
,q123FA61E3E67B148={lvl=50,domain="ia",type={6}}
,q20CE0DBB13EFF9A5={lvl=50,domain="ia",type={6}}
,q269FB4F6022B4F1D={lvl=50,domain="ia",type={6}}
,q2C7F7E405BC67AEC={lvl=50,domain="ia",type={6}}
,q3E4866B54E125B48={lvl=50,domain="ia",type={6}}
,q3F238ADA35B342ED={lvl=50,domain="ia",type={6}}
,q61200F687E9FA9FC={lvl=50,domain="ia",type={6}}
,q6D3CD86137BDB7B5={lvl=50,domain="ia",type={6}}
,q7C0BCEB32F4E5AAC={lvl=50,domain="ia",type={6}}
,q4DBA93D6443AAF3A={lvl=50,domain="ia",type={12,1,2}}
,q7F84A0AD192F85A5={lvl=50,domain="ia",type={12,1,2}}
,q197D5C5C6FE30377={lvl=50}
,q50EE3931884D7AD2={lvl=50}
,q2D47273C77B97D29={lvl=50,giver='U47C6AF8C521CBDA2'}
,q0718FFCE0417E976={lvl=50,scene="Caer Thalos",domain="ia"}
,q7A511636DAA0D506={lvl=50,type={18,1,16}}
,q683ED9C7FD51AAB1={lvl=50,giver='U30D888A801FECBE5'}
,q2B9736A6B9973236={lvl=50,type={8},giver='U4935B1C32420881C'}
,q784970590697BF3A={lvl=50,giver='U60F28FDB7A96D309'}
,q56291B0A0ECF4BE5={lvl=50,scene="Caer Kholum",type={13,8}}
,q5635A26685628819={lvl=50,type={13}}
,qFC409C8148321BBB={lvl=50,domain="ia",type={1,12,2}}
,q3DE0C7337E01DA75={lvl=50,domain="ia",type={1,2,12}}
,q0633EE424EEA6260={lvl=50}
,q54D12648F9AB4C7B={lvl=50,type={1,6},giver='U6E095D89495421A4'}
,q44A4A5D33FE09551={lvl=50,use={{key='I0BCBC4B13C66CE24,F888D4AAFADF4259,,,,,,', count=1}},giver='U7E08BA5F203A4D01'}
,q005A3AB0ABE72078={lvl=50,type={6},giver='U73ECD3696E8B23C3'}
,q22AC9E82215F6B4B={lvl=50,domain="ia"}
,q3D42FAB7FD5FF525={lvl=50,giver='U2CCDF7D4057C5ED0'}
,q28A077D41440E36A={lvl=50,giver='U448A3E3B5AC6BE58'}
,q364B6E6DE35447C6={lvl=50,type={7},giver='U3F3670735C79C82B'}
,q79AA2418A97FFFAC={lvl=50}
,q39D79D51F3741DD9={lvl=50,giver='U551AFF263D7BD2A7'}
,q730D46738A21A16F={lvl=50,giver='U448A3E3B5AC6BE58'}
,q10F397F255D785F1={lvl=50,type={8,18}}
,q4037EFC156A91ADC={lvl=50,type={18,8}}
,q58229B010F738EDD={lvl=50,type={18}}
,q2435BF95D757E070={lvl=50,type={13}}
,q25C41F9D3320D6FE={lvl=50,type={4},giver='U11AFB5F042C37BCD'}
,q347CFDEA7E07197C={lvl=50,type={4},giver='U377FC3B56E6C575F'}
,q3ABC82AEC3678657={lvl=50,scene="The Endless Citadel",type={1,3}}
,qFD25536E5D3F029C={lvl=50,giver='UFE49276C658F9747'}
,q262BD55A302245F3={lvl=50,domain="ia",type={12,1,2}}
,q37CBCDAE130D9CCC={lvl=50,domain="ia",type={2,12,1}}
,q66020798BA68A5EB={lvl=50,scene="The Endless Citadel",type={3,1}}
,q7AF19775973790D2={lvl=50,giver='U3DB7F3801020C9BC'}
,q0AD5EC95FCE52127={lvl=50,domain="guild"}
,q41BB7465D925A71D={lvl=50,domain="guild"}
,q4846630D8805C846={lvl=50,domain="guild"}
,q4DDBAC84A9A9D7AD={lvl=50,domain="guild"}
,q684772999F00CD49={lvl=50,domain="guild"}
,q09F6F9BD17DD1BCD={lvl=50,giver='U7B97B3B848CCFD63'}
,q00A3EDCA4CC36174={lvl=50,scene="Hillcrest",domain="ia"}
,q648F1FADECD7DEEA={lvl=50,giver='U17DEBE56228D3A7E'}
,q64B11F7105773E16={lvl=50, grp=5}
,q310ABBFFC8D7C253={lvl=50,type={1}}
,q04B76956BD72B1D3={lvl=50}
,q44A89879C8B028F6={lvl=50}
,q13DD9E710911220C={lvl=50,type={1}}
,q7350E1A1E24B5F52={lvl=50,type={1}}
,q2BAC06AB247CFD05={lvl=50,use={{key='I5061AE2E5E31BA21,29C185E849F8ED3D,,,,,,', count=100}},giver='U17DEBE56228D3A7E'}
,q504A2F21BA632CB2={lvl=50,type={11}}
,q176F3DE6FF8C3FC2={lvl=50,type={1,18,16}}
,q00A2A8756B678769={lvl=50,domain="guild"}
,q043445FBC0698154={lvl=50,domain="guild"}
,q0DF2A0222E3C9727={lvl=50,domain="guild"}
,q110D9E18C9501728={lvl=50,domain="guild"}
,q2048B085D27FD7A9={lvl=50,domain="guild"}
,q26FE35493B7E4EA6={lvl=50,domain="guild"}
,q2B5C7202C447F880={lvl=50,domain="guild"}
,q44BFFFE0EEF98FF1={lvl=50,domain="guild"}
,q476C1E12E282B806={lvl=50,domain="guild"}
,q47AAE5AFA6F2AAC3={lvl=50,domain="guild"}
,q489E2ACF81B982F2={lvl=50,domain="guild"}
,q538424142C62F23B={lvl=50,domain="guild"}
,q5F33CC9557CB71E7={lvl=50,domain="guild"}
,q6966DDF67D03C5D0={lvl=50,domain="guild"}
,q69F35EF6901C876D={lvl=50,domain="guild"}
,q69F720F6DD0C5187={lvl=50,domain="guild"}
,q6CCE4CD2E13302DB={lvl=50,domain="guild"}
,q7836E17ED599F3B3={lvl=50,domain="guild"}
,q7AAB6A447931331F={lvl=50,domain="guild"}
,q4974C0E67E703517={lvl=50,domain="guild"}
,q7FBE3F555C785F41={lvl=50,domain="guild"}
,qFA5A9ECBB463F411={lvl=50,scene="Tuldio Retreat",type={2},giver='UFC7C475B62903DE5'}
,qFF16DDCA8B4C83D6={lvl=50,scene="Tuldio Retreat",type={2},giver='UFF4050D61CF212E5'}
,q1080C22CBB3FDE50={lvl=50,type={7},giver='U3A6632B4078C4BD1'}
,q772EAC9D626ED014={lvl=50,type={7},giver='U3A6632B4078C4BD1'}
,q39C077228865E2B7={lvl=50,scene="The Endless Citadel",type={3,1}}
,q5DA5F06F782205B9={lvl=50}
,q1C91D8A67711AEF1={lvl=50,domain="ia"}
,q1F9F2428248073D4={lvl=50,domain="ia"}
,q37554DFD1B465794={lvl=50,domain="ia"}
,q585604FE4F2DC0EF={lvl=50,domain="ia"}
,q6ED701CC389BF607={lvl=50,domain="ia"}
,q084161457AE93EF7={lvl=50,type={18}}
,q5A1C67C20C7FD8EB={lvl=50,type={4,18}}
,q2D67F0F51B977F9D={lvl=50,domain="ia"}
,q423D084638AE046C={lvl=50,domain="ia"}
,q6097FE582BAB91A4={lvl=50,domain="ia"}
,q6416CFF53AF8190D={lvl=50,domain="ia"}
,q6E7AC7F342596274={lvl=50,domain="ia"}
,qFBFDBE6C648A6ABD={lvl=50,scene="Crystal Depths",type={6,1}}
,q2811FB04FB8E2E7E={lvl=50,scene="Tulan",domain="ia",giver='U4894E3A46834C06B'}
,q046B48A648A8E5DF={lvl=50,domain="ia",type={1}}
,qFEA6FF233CFB5739={lvl=50,domain="ia",type={1}}
,qFE7E679E5CB6B6D7={lvl=50,domain="ia",type={1}}
,q062A8D44105B6736={lvl=50,domain="ia",type={1}}
,q0E518D3E4519B338={lvl=50,domain="ia",type={1}}
,q1006FAF40C17DF72={lvl=50,domain="ia",type={1}}
,q12C3EBC309405C58={lvl=50,domain="ia",type={1}}
,q162D86797FADD5E7={lvl=50,domain="ia",type={1}}
,q1BFE94EF0BDABF55={lvl=50,domain="ia",type={1}}
,q209974EE3171B70C={lvl=50,domain="ia",type={1}}
,q2267C1007C693B67={lvl=50,domain="ia",type={1}}
,q22BAE5A77A9807E4={lvl=50,domain="ia",type={1}}
,q2809F49344D94120={lvl=50,domain="ia",type={1}}
,q33A0175C4F7E498B={lvl=50,domain="ia",type={1}}
,q35C58C5025B6C489={lvl=50,domain="ia",type={1}}
,q370D3364317F9664={lvl=50,domain="ia",type={1}}
,q37CF13844B91D1CD={lvl=50,domain="ia",type={1}}
,q3AE8B0592A610825={lvl=50,domain="ia",type={1}}
,q3BA7A8C35DEE18CF={lvl=50,domain="ia",type={1}}
,q3C59596569566A4F={lvl=50,domain="ia",type={1}}
,q3D02BB4971AF3425={lvl=50,domain="ia",type={1}}
,q3DCFB6AD15AA8F84={lvl=50,domain="ia",type={1}}
,q42509BDB7399F399={lvl=50,domain="ia",type={1}}
,q43C0DE0E1D51CA8D={lvl=50,domain="ia",type={1}}
,q4A29F3EC7D77E043={lvl=50,domain="ia",type={1}}
,q4B0D4A554BC05D51={lvl=50,domain="ia",type={1}}
,q4C9134A20B5B21D8={lvl=50,domain="ia",type={1}}
,q5080406B4D9483FF={lvl=50,domain="ia",type={1}}
,q5444AC19714C110C={lvl=50,domain="ia",type={1}}
,q56B3981E2EF704BC={lvl=50,domain="ia",type={1}}
,q58432F9247FF68E6={lvl=50,domain="ia",type={1}}
,q5A43EEFA4ADFEB2D={lvl=50,domain="ia",type={1}}
,q5AB310984FA7D7A5={lvl=50,domain="ia",type={1}}
,q5D88DC7457E49ECE={lvl=50,domain="ia",type={1}}
,q5DAF6F5D615BD76C={lvl=50,domain="ia",type={1}}
,q5F65EE5F35575E66={lvl=50,domain="ia",type={1}}
,q62A237C511DFE96E={lvl=50,domain="ia",type={1}}
,q631977174EE3BFDE={lvl=50,domain="ia",type={1}}
,q66AD6306261071E1={lvl=50,domain="ia",type={1}}
,q676BFAEB3A491B9A={lvl=50,domain="ia",type={1}}
,q6794299D25849015={lvl=50,domain="ia",type={1}}
,q6882CC056CCFF027={lvl=50,domain="ia",type={1}}
,q758CE5A364424CB5={lvl=50,domain="ia",type={1}}
,q7656FF424A1177E8={lvl=50,domain="ia",type={1}}
,q77A46EC911F9DCBC={lvl=50,domain="ia",type={1}}
,q79A68E1E4B7FF5D2={lvl=50,domain="ia",type={1}}
,q7C07C6761CF84970={lvl=50,domain="ia",type={1}}
,q7CC26CAB5AF210D7={lvl=50,domain="ia",type={1}}
,q7F220B3E4059E0DB={lvl=50,domain="ia",type={1}}
,q5CC868EE9A4C332B={lvl=50,giver='U3FE765E7713A6925'}
,qFFFF3D8C577A899A={lvl=50,domain="ia"}
,qFFB238A301CFFCBA={lvl=50,domain="ia"}
,qFC946CDF23876847={lvl=50,domain="ia"}
,qFBC99EB0781EA9A4={lvl=50,domain="ia"}
,qFBC3A3E73F3CF53E={lvl=50,domain="ia"}
,q0E8DAD38EFB61BAD={lvl=50,type={7},giver='U3A6632B4078C4BD1'}
,q1BC1F4C031120E78={lvl=50,type={7},giver='U3A6632B4078C4BD1'}
,q683CD563DFA9E2BD={lvl=50,giver='U28B9A921125E5C06'}
,qFFB3B29840AB1253={lvl=50,scene="Edgestone Ridge",domain="ia"}
,q464280EDDD4F001C={lvl=50,type={13}}
,q72BF1CC8CD3182A9={lvl=50,type={13}}
,q1099437C81125826={lvl=50, grp=3,type={11},giver='U645A71C97E70A784'}
,q45A37CCCA56B0D5D={lvl=50,giver='U7095D6251D056FA9'}
,qFD4ACB6467D4E47A={lvl=50,domain="ia"}
,q29C02480AA4F64A6={lvl=50,scene="Death's Approach", grp=2,type={1,3}}
,q44D84349F41BF34E={lvl=50,giver='U0FCD909B4ABB28A9'}
,q6B90AE641D666843={lvl=50,giver='U5999EB04361316E1'}
,q6D9EA14E04A5CB65={lvl=50,giver='U570CB8EE1B1200DC'}
,q6CD84421C85D281C={lvl=50,giver='U7691CD9F460E089A'}
,q154207125D9F4D87={lvl=50,scene="Shatterbone Hold",type={1},giver='U068B93E466090425'}
,q61585599D0684037={lvl=50, grp=5,giver='U21507025652488F6'}
,qFFD060B39F8915CA={lvl=50,giver='UFEBA6FBE1F2826A8'}
,q224F5FDD670F3CEE={lvl=50,scene="Hillsborough",domain="ia"}
,q3DCDFFA97FF68B74={lvl=50,scene="Hillsborough",domain="ia"}
,q3FC5247D552F9057={lvl=50,scene="Hillsborough",domain="ia"}
,q5EA13EFA7074C7A1={lvl=50,scene="Hillsborough",domain="ia"}
,q5F4DD1F128F63EC9={lvl=50,scene="Hillsborough",domain="ia"}
,q0B98ECDF4CFAFD68={lvl=50,domain="ia",type={2}}
,q1811D6803C188F99={lvl=50,domain="ia",type={2}}
,q1A26E1414843183B={lvl=50,domain="ia",type={2}}
,q204A25E67C58ED93={lvl=50,domain="ia",type={2}}
,q7ECEBC9A0ED7314D={lvl=50,domain="ia",type={2}}
,q1EBF8EC263392AC2={lvl=50,domain="pvp",giver='U4A6802CD01E1D124'}
,q540FC795621D7B9B={lvl=50,type={1},giver='U66C7C2A339BB6B4E'}
,qFBC755DD39DC6F78={lvl=50,giver='UFA6089E018F47FB1'}
,q12DE848C7972DB29={lvl=50,scene="Lord's Hall",giver='U30DB319D3B173DAC'}
,q2D582FF490A417AB={lvl=50,scene="Lord's Hall",giver='U7E08BA5F203A4D01'}
,q4A72BF00792FEFBB={lvl=50,type={18,16}}
,q6F5D39887D8A8ED3={lvl=50,type={16,18}}
,qFBDF07BDECDABCFD={lvl=50,giver='UFBBF9D9D359284BC'}
,q286BB3350486A475={lvl=50,domain="ia"}
,q1764A33A4D02D6D7={lvl=50,domain="ia"}
,q3E9B23E9265054F6={lvl=50,scene="Hillsborough",domain="ia"}
,q4533846AC710763F={lvl=50,giver='U49000B691355FAAC'}
,q23891F08E33D7A3F={lvl=50,type={6},giver='U5AF759E93DA2D559'}
,q27E43E3204F12569={lvl=50,giver='U6BEBE5A41C313874'}
,q0ACE4481D3CAB3BD={lvl=50,giver='U7A1E9E5B4A80A4B9'}
,q07CB885E00000000={lvl=50,domain="pvp"}
,q325C51B600000000={lvl=50,domain="pvp"}
,q30D2A2FD8394D17A={lvl=50,domain="pvp"}
,q7E48B5435721054A={lvl=50,domain="ia"}
,q03C2C9293C16BAE0={lvl=50,scene="Briarcliff",domain="ia"}
,q336B3321049D2BC7={lvl=50,scene="Briarcliff",domain="ia"}
,q3F11F39A1124CC29={lvl=50,scene="Briarcliff",domain="ia"}
,q516FC37F18C18D4D={lvl=50,scene="Briarcliff",domain="ia"}
,q7CE01D341B548B5A={lvl=50,scene="Briarcliff",domain="ia"}
,q365DD6D456A33B04={lvl=50,domain="ia"}
,q4211594C3B167DB8={lvl=50,domain="ia"}
,q5E41973911BBAAAC={lvl=50,domain="ia"}
,q6D4EEB1E25B5D48A={lvl=50,domain="ia"}
,q74EF051A40A97D81={lvl=50,domain="ia"}
,q0591D7A05AD99603={lvl=50,domain="ia"}
,q3FCFBBF0112301E3={lvl=50,domain="ia"}
,q6355573A29097B6A={lvl=50,domain="ia"}
,q637B7D0A760DBB6E={lvl=50,domain="ia"}
,q6D7501BD2762DF2C={lvl=50,domain="ia"}
,q099267BB0F9AA452={lvl=50,domain="ia"}
,q338987ED11D69F39={lvl=50,domain="ia"}
,q4AD118F56DFC3F2B={lvl=50,domain="ia"}
,q4F5003577086B284={lvl=50,domain="ia"}
,q5DAA090A5761B364={lvl=50,domain="ia"}
,q069D53894990B072={lvl=50,scene="Kingsgate",domain="ia"}
,q43A58C2C598E2CA2={lvl=50,scene="Kingsgate",domain="ia"}
,q4898BE9D45EABD73={lvl=50,scene="Kingsgate",domain="ia"}
,q5A01D9E50013FB36={lvl=50,scene="Kingsgate",domain="ia"}
,q7F6866DC1DA8516A={lvl=50,scene="Kingsgate",domain="ia"}
,q2520348B21F915B4={lvl=50,scene="Kingsgate",domain="ia"}
,q4551B6DD7B10A03B={lvl=50,scene="Kingsgate",domain="ia"}
,q4BF1565C05DFD240={lvl=50,scene="Kingsgate",domain="ia"}
,q680DA15F731CE829={lvl=50,scene="Kingsgate",domain="ia"}
,q78A038062FE608FC={lvl=50,scene="Kingsgate",domain="ia"}
,q351E325432050A2D={lvl=50,giver='U2256073C6D19EC5D'}
,q6F01961C8A771606={lvl=50,giver='U2256073C6D19EC5D'}
,q6353DFE484B133F2={lvl=50,scene="Caer Kholum",type={4,3}}
,q04A5FBF964D8DEEF={lvl=50,domain="ia"}
,q21F9A7780949FFE4={lvl=50,domain="ia"}
,q22E09BAE5A53EB9E={lvl=50,domain="ia"}
,q30492CCA2DABD53A={lvl=50,domain="ia"}
,q4A0D507805CB45E9={lvl=50,domain="ia"}
,q6748241505C42FFE={lvl=50,domain="ia"}
,q7EA3E83960CA27CE={lvl=50,scene="Thalin Tor",domain="ia"}
,q672B2BADA5733DD1={lvl=50,domain="pvp"}
,q5024DDE5310F6C29={lvl=50,domain="ia"}
,q6C8A25FE47302442={lvl=50,domain="ia"}
,q6CFDD3EA6AE9B6C9={lvl=50,domain="ia"}
,q046DB89662E9F33C={lvl=50,domain="ia"}
,q0ECEBA18463712CD={lvl=50,domain="ia"}
,q5695799C25674918={lvl=50,domain="ia"}
,q5C14828753AE4F28={lvl=50,domain="ia"}
,q7A8936D2533FC244={lvl=50,domain="ia"}
,q49DCF9601E5E3780={lvl=50,domain="ia"}
,q656D01CE506109D7={lvl=50,domain="ia"}
,q142A0D8619F3086B={lvl=50,domain="ia"}
,q277F3BF6557D442F={lvl=50,domain="ia"}
,q34B130E202638596={lvl=50,domain="ia"}
,q29D6F52604BEFBC3={lvl=50,domain="ia"}
,q6B20885E04FD91B4={lvl=50,domain="ia"}
,q4332C21A5F84DCAD={lvl=50,domain="pvp"}
,q5900A5B615CD50AA={lvl=50,domain="ia"}
,q30AD0BC5445EDA5A={lvl=50,domain="ia"}
,q22261BF81513FEFF={lvl=50,domain="ia"}
,q2E3FA93C5E9CD38E={lvl=50,domain="ia"}
,q75FE79E66BCC30D5={lvl=50,domain="ia"}
,q65393C6E37598474={lvl=50,domain="ia"}
,q1C04963A29FFFDAA={lvl=50,domain="ia"}
,q113A93BD791E4167={lvl=50,domain="ia"}
,q40807A3B655AB8E2={lvl=50,domain="ia"}
,q0F60896F55305A13={lvl=50,domain="ia"}
,q181EB2C46159BBA7={lvl=50,domain="ia"}
,q2D1F170246496075={lvl=50,domain="ia"}
,q10DB43E7159BC730={lvl=50,domain="ia"}
,q5FD2192E1B9842F4={lvl=50,domain="ia"}
,q5A8FF4EA3FEA5F24={lvl=50,domain="ia"}
,q2AC6C4992865922F={lvl=50,domain="ia"}
,q190B20261D3336A8={lvl=50,domain="ia"}
,q40B177B5549840C4={lvl=50,domain="ia"}
,q51D4DA2D12AAB8F4={lvl=50,domain="ia"}
,q1A2E16671C77EF04={lvl=50,domain="ia"}
,q4D1FF2D168976A2C={lvl=50,domain="ia"}
,q65ADC9F159F68F0A={lvl=50,domain="ia"}
,q5AF2B1686B0E58CA={lvl=50,domain="ia"}
,q3F26D55A55342C3B={lvl=50,domain="ia"}
,q1B686DB919460B0C={lvl=50,domain="ia"}
,q40DB563B7DADAAEC={lvl=50,domain="ia"}
,q5716ADEF52BF38D4={lvl=50,domain="ia"}
,q66F2FA3E0E81FB2E={lvl=50,domain="ia"}
,q044EC8755A669770={lvl=50,domain="ia"}
,q2382853B739A5218={lvl=50,domain="ia"}
,q491F3AF118E830C4={lvl=50,domain="ia"}
,q4F4860A57160F68A={lvl=50,domain="ia"}
,q5668CB596B8A9C11={lvl=50,domain="ia"}
,q52B9DE6541480DEC={lvl=50,domain="ia"}
,q19D949C64C84430A={lvl=50,domain="ia"}
,q4F6C4BFC7C99638A={lvl=50,domain="ia"}
,q028C120A285F21B2={lvl=50,domain="ia"}
,qFE660D222F960A99={lvl=50,domain="ia"}
,qFD4CABD50577F387={lvl=50,domain="ia"}
,qFCA4D6C42174E8C2={lvl=50,domain="ia"}
,qFC1216BF5E2A5374={lvl=50,domain="ia"}
,qFAE515FF4BE3117A={lvl=50,domain="ia"}
,qFA6E72D270C3D3C9={lvl=50,domain="ia"}
,q0D954D484C9D688D={lvl=50,domain="ia"}
,q126845C8096FA066={lvl=50,domain="ia"}
,q145E2D2250993C05={lvl=50,domain="ia"}
,q26996E6E54B63DCE={lvl=50,domain="ia"}
,q284C39D727D92051={lvl=50,domain="ia"}
,q2951B46512F2F105={lvl=50,domain="ia"}
,q2A2DA29C78E61C32={lvl=50,domain="ia"}
,q3AFAE34F4347BCAB={lvl=50,domain="ia"}
,q4EF3C6B533252346={lvl=50,domain="ia"}
,q5406C8585D615623={lvl=50,domain="ia"}
,q5826C6D0026D213E={lvl=50,domain="ia"}
,q58977B1977D5622B={lvl=50,domain="ia"}
,q61BA4C13585C19DE={lvl=50,domain="ia"}
,q687287F5354823EA={lvl=50,domain="ia"}
,q6F326D347597C91E={lvl=50,domain="ia"}
,q72C1CFDC70216637={lvl=50,domain="ia"}
,q7BFC2D670CD875DF={lvl=50,domain="ia"}
,q238035FCCC72D6DD={lvl=50,scene="Crystal Depths",type={1},giver='U068B93E466090425'}
,q024E9F747DF0252D={lvl=50,type={13}}
,q3B81B47CD53EE77C={lvl=50,type={13}}
,q61A845BC3D959A11={lvl=50,type={5},giver='U2FC08E9446C6F348'}
,q1E790ED83EDD610C={lvl=50}
,q21210D594C6D730B={lvl=50}
,qFFDD94BC3EC5260E={lvl=50,domain="ia"}
,qFC39FDA467668A60={lvl=50,domain="ia"}
,qFC1A36476715CCFA={lvl=50,domain="ia"}
,qFB8843585099CA18={lvl=50,domain="ia"}
,qFA8D2F372A410395={lvl=50,domain="ia"}
,q64E0B26D3BACE13D={lvl=50,type={3},giver='U354F40A10D8C3EEB'}
,q257B88288D1A5913={lvl=50,domain="pvp"}
,q77D6D41C6ACE395F={lvl=50,domain="pvp"}
,q2C5480A4E79024A1={lvl=50,type={1}}
,q43768AA1625B18F4={lvl=50,scene="Kingsgate", grp=2,type={1,3}}
,q292D9AF595ABDD5F={lvl=50,giver='U403A29C278834BF1'}
,q2B82C98AFB316FB8={lvl=50,giver='U2D18504A758B9147'}
,q348F7C8106730E92={lvl=50,giver='U069D056332FE7E35'}
,q0F0A5BDA18635EE2={lvl=50,giver='U1918388230C6E124'}
,q4D6B90CEDE41BEBF={lvl=50,scene="Caer Kholum",type={10},giver='U08D46D8250CAAC10'}
,q67768C3C0B018008={lvl=50,domain="ia"}
,q79F8F03C2BA89457={lvl=50,domain="ia",type={2}}
,q7BD50F197302FFD6={lvl=50,domain="ia",type={2}}
,q40EDBDD19A8742FB={lvl=50,type={5,18},giver='U03A3E8511875EF5A'}
,q77CCA1EC3AEBE0AD={lvl=50,type={18,5},giver='U5722059B6B0136C5'}
,qFC72E9FE3BAD46C7={lvl=50,scene="Ruins of Tammark",domain="ia"}
,qFF9BCB7263FA3288={lvl=50,domain="ia"}
,qFD34B299342E59C7={lvl=50,domain="ia"}
,qFC2063DE030F447D={lvl=50,domain="ia"}
,qFAD7E74C5AAC991E={lvl=50,domain="ia"}
,qFAA189DF363DD58F={lvl=50,domain="ia"}
,q02ECB21DEC0B1D99={lvl=50,giver='U13550A2B658C008E'}
,q3623426652FC9063={lvl=50}
,q5B52927A236E9768={lvl=50}
,qFF9B33C9D0DC2726={lvl=50,giver='UFB58C28D67B12B15'}
,q6181C1BDEE820E3B={lvl=50,use={{key='I34DFA925AC34C164,F7A067F657413873,,,,,,', count=1}},giver='U75526206316307F2'}
,qFB653B96684C45B9={lvl=50,scene="Edgestone Ridge",type={4}}
,q380B3DF7BE73D378={lvl=50, grp=3,giver='U7B97B3B848CCFD63'}
,q2D7E167FFAE2A9EF={lvl=50,giver='U2256073C6D19EC5D'}
,q234A0735DF0741F1={lvl=50,giver='U448A3E3B5AC6BE58'}
,q3EBD1CAF95D9A300={lvl=50,type={11},giver='U645A71C97E70A784'}
,q6D8EFF6476F45B11={lvl=50,domain="ia"}
,q11EED54D56CB8339={lvl=50,giver='U448A3E3B5AC6BE58'}
,q20368BDF605BE245={lvl=50,domain="pvp"}
,q07A45124F590B627={lvl=50}
,q10F15C212070D5F4={lvl=50}
,q1B3CDE68ED1E1E89={lvl=50,giver='U13550A2B658C008E'}
,q0466B48FE6148A93={lvl=50,domain="guild"}
,q1B9A816CAB69738B={lvl=50,domain="guild"}
,q32D40F589F60F163={lvl=50,type={3}}
,q637AD8FCCB283732={lvl=50,type={3}}
,q217EA70740E8B459={lvl=50,domain="ia"}
,q2D6C4A366F9C587C={lvl=50,domain="ia"}
,q36BE27D92925E449={lvl=50,domain="ia"}
,q46FE0C91128DD3CE={lvl=50,domain="ia"}
,q793717E00E129B03={lvl=50,domain="ia"}
,q0052DE4B019337AF={lvl=50,scene="Hillsborough",domain="ia"}
,q165F2D7D1513F120={lvl=50,scene="Hillsborough",domain="ia"}
,q24207CCF694B0945={lvl=50,scene="Crown Hill",domain="ia"}
,q2961389552723EDB={lvl=50,scene="Hillsborough",domain="ia"}
,q507D685A07C5958F={lvl=50,scene="Crown Hill",domain="ia"}
,q508DED752F1307DD={lvl=50,scene="Hillsborough",domain="ia"}
,q5177E05860104055={lvl=50,scene="Crown Hill",domain="ia"}
,q5AB087B52AD8A13D={lvl=50,scene="Crown Hill",domain="ia"}
,q6A8B4F6530C75D76={lvl=50,scene="Crown Hill",domain="ia"}
,qFB64C42157F8583A={lvl=50,giver='UFC7C475B62903DE5'}
,q4A80F7C286C30C02={lvl=50,giver='U7095D6251D056FA9'}
,q3CFE6258BFE6CF89={lvl=50,domain="pvp"}
,q0C442C04198E6A01={lvl=50,scene="Hillsborough",domain="ia"}
,q518F514216771B0F={lvl=50,scene="Hillsborough",domain="ia"}
,q55A099C009281272={lvl=50,scene="Hillsborough",domain="ia"}
,q5C4CAB4D0A8EB2AF={lvl=50,scene="Hillsborough",domain="ia"}
,q6419308339FAB91F={lvl=50,scene="Hillsborough",domain="ia"}
,q1E087A64F7A5CCC0={lvl=50}
,q59968ECDC751F372={lvl=50}
,q4D720B8DED71DD06={lvl=50}
,q5E0BADBA07E307D9={lvl=50,scene="Ravenna",domain="ia"}
,q696584A9AC47934E={lvl=50,type={13}}
,q6A46AA3399141F35={lvl=50,type={13}}
,qFFE4DD6261E7DF30={lvl=50,domain="ia"}
,qFE4CF89F13731564={lvl=50,domain="ia"}
,qFD140D695209A716={lvl=50,domain="ia"}
,qFC4515D128632E92={lvl=50,domain="ia"}
,qFA3C9F44449DDDD8={lvl=50,domain="ia"}
,qFF9548233EC56CD8={lvl=50,domain="ia"}
,qFF6E143069EE4D98={lvl=50,domain="ia"}
,qFE7423A7056F5E54={lvl=50,domain="ia"}
,qFD14DB9C3A229258={lvl=50,domain="ia"}
,qFCED2F761FE177F0={lvl=50,domain="ia"}
,q05CF32FD1B1065F9={lvl=50,scene="Kingsgate",domain="ia"}
,q0B4B3C42161DF5B1={lvl=50,scene="Kingsgate",domain="ia"}
,q0C5BE5305FF60713={lvl=50,scene="Kingsgate",domain="ia"}
,q29422D7B5519E430={lvl=50,scene="Kingsgate",domain="ia"}
,q56BA5D5C6579EB02={lvl=50,scene="Kingsgate",domain="ia"}
,qFF4826F87220D456={lvl=50,domain="ia"}
,qFF3832E16B30FC38={lvl=50,domain="ia"}
,qFF1E03A954F82881={lvl=50,domain="ia"}
,qFD42D36234852EDE={lvl=50,domain="ia"}
,qFC8C2E154EEC363C={lvl=50,domain="ia"}
,qFFE24C3B1459851E={lvl=50,domain="ia"}
,qFF37FB980542833C={lvl=50,domain="ia"}
,qFDCAD5A2309F4F9D={lvl=50,domain="ia"}
,qFBA3F0F60F574D64={lvl=50,domain="ia"}
,qFA79053A60623423={lvl=50,domain="ia"}
,q0951E18400000000={lvl=50,type={7},giver='U56857BCB249C4ACC'}
,qFB5E5C2ED1E6AA49={lvl=50,giver='UFA0B127B44F0E185'}
,qFFE1805C75EA370E={lvl=50,domain="ia"}
,qFF20295D1EC62309={lvl=50,domain="ia"}
,qFD23B3A166D30430={lvl=50,domain="ia"}
,qFB4233124D5F64B8={lvl=50,domain="ia"}
,qFA633E3418BE8457={lvl=50,domain="ia"}
,qFD77E035C68DEC34={lvl=50,giver='UFE8018211B24FDD6'}
,q12A19F08769DC251={lvl=50,domain="ia"}
,q6607DEE454924BFD={lvl=50, grp=5}
,q03B32BE13CB44912={lvl=50,type={7},giver='U6559C1F94EB9923E'}
,q284A12A33A5C207B={lvl=50,domain="ia"}
,q2FA2DA2D108CE918={lvl=50,domain="ia"}
,q5059A8682D84934F={lvl=50,domain="ia"}
,q585477815CB1B672={lvl=50,domain="ia"}
,q69739F9162DFDF87={lvl=50,domain="ia"}
,q0DFB173ED981B6C8={lvl=50}
,q7A0E93C1A3109C3C={lvl=50}
,qFF9C558B7627016A={lvl=50,domain="ia",type={2}}
,q016C65D54623D941={lvl=50,domain="ia",type={2}}
,q05A5DC3D24505CC6={lvl=50,domain="ia",type={2}}
,qFC1C5807597C3A7F={lvl=50,domain="ia",type={2}}
,q07D121D87203A760={lvl=50,domain="ia",type={2}}
,q0F8A8E9B1F0F305E={lvl=50,domain="ia",type={2}}
,q1849DFB12B3893A7={lvl=50,domain="ia",type={2}}
,q19743E8223AE69B8={lvl=50,domain="ia",type={2}}
,q1B9B7B7E42AE806C={lvl=50,domain="ia",type={2}}
,q1F669FAB04ADFC83={lvl=50,domain="ia",type={2}}
,q21622FF75629926C={lvl=50,domain="ia",type={2}}
,q240999DE732A0267={lvl=50,domain="ia",type={2}}
,q2500C686198270BC={lvl=50,domain="ia",type={2}}
,q280175C4031D0028={lvl=50,domain="ia",type={2}}
,q28F94B2E50EE2827={lvl=50,domain="ia",type={2}}
,q2B11FCE42441E46B={lvl=50,domain="ia",type={2}}
,q34CC03806E7F6692={lvl=50,domain="ia",type={2}}
,q35FC5BDD5691366E={lvl=50,domain="ia",type={2}}
,q3A407D4B27A73B4C={lvl=50,domain="ia",type={2}}
,q3A8324FE308A1B22={lvl=50,domain="ia",type={2}}
,q41EBD87C14F5BA58={lvl=50,domain="ia",type={2}}
,q448DAD9E3254BE37={lvl=50,domain="ia",type={2}}
,q4D80603F35C7F601={lvl=50,domain="ia",type={2}}
,q5D5CC448489F55FE={lvl=50,domain="ia",type={2}}
,q61A64C0C2BF8CEAE={lvl=50,domain="ia",type={2}}
,q67B173F167EF4A76={lvl=50,domain="ia",type={2}}
,q6993EBB26E97398F={lvl=50,domain="ia",type={2}}
,q6F2B75DA10BC76F8={lvl=50,domain="ia",type={2}}
,q71ADC4F9757716C9={lvl=50,domain="ia",type={2}}
,q71EF45E26694DF27={lvl=50,domain="ia",type={2}}
,q75C1BC215742A7E1={lvl=50,domain="ia",type={2}}
,q77B1B45031504D47={lvl=50,domain="ia",type={2}}
,q7D2DEC8D23D783B2={lvl=50,domain="ia",type={2}}
,q71CD30FDDAD77EFA={lvl=50,giver='U13550A2B658C008E'}
,q40992F225E6E320D={lvl=50,type={11},giver='U3436867F2A80DBC8'}
,q011EF92B2E84349F={lvl=50,domain="ia",type={1}}
,q0298398E4943CDAD={lvl=50,domain="ia",type={1}}
,qFE6AD9C968296070={lvl=50,domain="ia",type={1}}
,q069EAA120B51D9B6={lvl=50,domain="ia",type={1}}
,q06F73C096A9853DB={lvl=50,domain="ia",type={1}}
,q077FB817248DCDBD={lvl=50,domain="ia",type={1}}
,q0B08F9D62D1C60C7={lvl=50,domain="ia",type={1}}
,q1583A38C6C2C4069={lvl=50,domain="ia",type={1}}
,q16C087C479B4AD20={lvl=50,domain="ia",type={1}}
,q17BD82017277C5A6={lvl=50,domain="ia",type={1}}
,q1F2322E46FBE2F4E={lvl=50,domain="ia",type={1}}
,q1F67234872D37D37={lvl=50,domain="ia",type={1}}
,q216094AE566178D4={lvl=50,domain="ia",type={1}}
,q227E7DE5233144D3={lvl=50,domain="ia",type={1}}
,q23385E77625BF35A={lvl=50,domain="ia",type={1}}
,q2410B63660EF475C={lvl=50,domain="ia",type={1}}
,q29A420DF3D4CB904={lvl=50,domain="ia",type={1}}
,q2AA3C61827CDF2F4={lvl=50,domain="ia",type={1}}
,q2C91471C6106C366={lvl=50,domain="ia",type={1}}
,q2FE29FE20300C0EC={lvl=50,domain="ia",type={1}}
,q3BE77D435A4D0D52={lvl=50,domain="ia",type={1}}
,q3E598E00318AA1C8={lvl=50,domain="ia",type={1}}
,q3FA08AE50019AF70={lvl=50,domain="ia",type={1}}
,q44CE656F68D976F8={lvl=50,domain="ia",type={1}}
,q4AA2984B19EEC168={lvl=50,domain="ia",type={1}}
,q54B0FF3061F0D929={lvl=50,domain="ia",type={1}}
,q5B02307C38948AED={lvl=50,domain="ia",type={1}}
,q5D93A9892F5F20FC={lvl=50,domain="ia",type={1}}
,q5E84D3EF40595FD8={lvl=50,domain="ia",type={1}}
,q61B4D96A4EFD4612={lvl=50,domain="ia",type={1}}
,q642EC45E62D2BB55={lvl=50,domain="ia",type={1}}
,q64909CD9536C6529={lvl=50,domain="ia",type={1}}
,q6CE8E3100E1068F1={lvl=50,domain="ia",type={1}}
,q6DCB49D33F426C42={lvl=50,domain="ia",type={1}}
,q6E251ACC2F2CAF61={lvl=50,domain="ia",type={1}}
,q712911541E052FDC={lvl=50,domain="ia",type={1}}
,q7853F0232DE28A04={lvl=50,domain="ia",type={1}}
,q7A81BDE84E729CB0={lvl=50,domain="ia",type={1}}
,q7F6236C057D0C126={lvl=50,domain="ia",type={1}}
,q01A63E61041C35B8={lvl=50,type={1}}
,q653736FDC4BC337C={lvl=50,giver='U3A8B9996451A4D99'}
,q74D9F727D6C8E51C={lvl=50}
,q31841078248F7752={lvl=50}
,q4A9A7CD4B7A4D7A8={lvl=50,giver='U66B385FB54E51F23'}
,q604C357A13A50C61={lvl=50}
,q31E46ED990D5A45C={lvl=50,type={8,18}}
,q6E84431DD3357E55={lvl=50,type={18,8}}
,q695E08FDC95E2146={lvl=50,type={18,8}}
,q01EFF9A61DBCA7FF={lvl=50,domain="ia",type={2}}
,q03E6129F00078276={lvl=50,domain="ia",type={2}}
,q0D1E729B106053FC={lvl=50,domain="ia",type={2}}
,q1BA5B9315EFD3487={lvl=50,domain="ia",type={2}}
,q2051235972E35C74={lvl=50,domain="ia",type={2}}
,q231E7DCF6EEF377B={lvl=50,domain="ia",type={2}}
,q25A8884C6315FD21={lvl=50,domain="ia",type={2}}
,q2B1AE7DB21A0B869={lvl=50,domain="ia",type={2}}
,q2B7611365938809C={lvl=50,domain="ia",type={2}}
,q39A26B1D453166EA={lvl=50,domain="ia",type={2}}
,q3E09D5E55A1E4919={lvl=50,domain="ia",type={2}}
,q3E4B51AA4981F49C={lvl=50,domain="ia",type={2}}
,q437890C733BD4195={lvl=50,domain="ia",type={2}}
,q443801C27C76D614={lvl=50,domain="ia",type={2}}
,q5646099E3BD8E1A3={lvl=50,domain="ia",type={2}}
,q58140045194643CB={lvl=50,domain="ia",type={2}}
,q5B383FAA1C8E2904={lvl=50,domain="ia",type={2}}
,q5BD4989260F098B2={lvl=50,domain="ia",type={2}}
,q71B7C8C471516128={lvl=50,domain="ia",type={2}}
,q7944528F4BB4E3EE={lvl=50,domain="ia",type={2}}
,q154F2CA74D616D4D={lvl=50,type={6},giver='U3B3A058C1DE61D9E'}
,q0F72C61376480F95={lvl=50,domain="ia"}
,q27B3AAE45D1DFB91={lvl=50,domain="ia"}
,q5188771B18BD3709={lvl=50,domain="ia"}
,q57DDFD4D50DD7BA7={lvl=50,domain="ia"}
,q7EA8F8BA041626D4={lvl=50,domain="ia"}
,q0D41FE3410FACEC6={lvl=50,scene="Blood Grove",domain="ia"}
,q2CF49D9D25A1ACDF={lvl=50,scene="Blood Grove",domain="ia"}
,q4720275D792B5050={lvl=50,scene="Blood Grove",domain="ia"}
,q4ABA191200EC880B={lvl=50,scene="Blood Grove",domain="ia"}
,q75519B2E3F8EDFA6={lvl=50,scene="Blood Grove",domain="ia"}
,q5FA14C02AC155FB7={lvl=50,giver='U610B81787268A249'}
,q69F59C6405619DB1={lvl=50,scene="Hillsborough", grp=2,type={3,1}}
,q0AB874A236F4099B={lvl=50,scene="Hillcrest",domain="ia"}
,q1F41CCBB5AB2FF28={lvl=50,scene="Hillcrest",domain="ia"}
,q4647FDCF759C738B={lvl=50,scene="Hillcrest",domain="ia"}
,q7CD05FFE2138C481={lvl=50,scene="Hillcrest",domain="ia"}
,q7D7DE0D22CEA0906={lvl=50,scene="Hillcrest",domain="ia"}
,q70FE0FC2D3E13125={lvl=50,domain="pvp"}
,q0327B5E903BC9799={lvl=50,scene="Caer Kholum",domain="ia"}
,q0B2EC93D27E59282={lvl=50,scene="Caer Kholum",domain="ia"}
,q1713D9A01A0A872B={lvl=50,scene="Caer Kholum",domain="ia"}
,q2DD67DA475574DA9={lvl=50,scene="Caer Kholum",domain="ia"}
,q7DE1EFA579FB0B2B={lvl=50,scene="Caer Kholum",domain="ia"}
,q14F5DC2B06E07D5A={lvl=50,type={1}}
,q0F65435E6214119A={lvl=50,domain="ia"}
,q198A9D290E58E665={lvl=50,domain="ia"}
,q1CB5866B5E2C121F={lvl=50,domain="ia"}
,q346ABBD5215D2F81={lvl=50,domain="ia"}
,q36D25C67450FF772={lvl=50,domain="ia"}
,q36EF0C8A0EEA62C5={lvl=50,domain="ia"}
,q44A467343E865DAC={lvl=50,domain="ia"}
,q6AF8649D38427B07={lvl=50,domain="ia"}
,q782C097F633C2853={lvl=50,domain="ia"}
,q7C2FD2BF5EFC6B74={lvl=50,domain="ia"}
,q0BC8165800000000={lvl=50,type={3}}
,q72606F4B00000000={lvl=50,type={3}}
,q1D322AA5D8B15C85={lvl=50,giver='U7095D6251D056FA9'}
,q58311DE8D085385C={lvl=50,type={7},giver='U0704928302B8A0D9'}
,q01E26C6758E3631E={lvl=50,domain="ia"}
,q445E1BAA45560CB3={lvl=50,domain="ia"}
,q50639C13241BB228={lvl=50,domain="ia"}
,q6DC8DC6B0BC69647={lvl=50,domain="ia"}
,q7C6D6BAB498771DC={lvl=50,domain="ia"}
,q18DB154333336B11={lvl=50,domain="ia"}
,q29D42F6B363F9647={lvl=50,domain="ia"}
,q2B946DF45CD15717={lvl=50,domain="ia"}
,q56F5FD1A54078582={lvl=50,domain="ia"}
,q5F1075CE3ECD017E={lvl=50,domain="ia"}
,q0565CDC66F7661F2={lvl=50,domain="ia"}
,q1270848C0530F338={lvl=50,domain="ia"}
,q36EB00370FD2FADD={lvl=50,domain="ia"}
,q4C4D60CC17AAD256={lvl=50,domain="ia"}
,q563684E60C15459A={lvl=50,domain="ia"}
,q11B0D1B238FCEFE0={lvl=50,domain="ia"}
,q2D4011BD761F36E5={lvl=50,domain="ia"}
,q2EE077F4264172E5={lvl=50,domain="ia"}
,q46B0D0C658DEF60C={lvl=50,domain="ia"}
,q7DEA50FC0EEECA62={lvl=50,domain="ia"}
,q5B00BCE4747F86A4={lvl=50,scene="Death's Approach",type={3,10}}
,q31470E266B4D4A1C={lvl=50,type={1,16}}
,q108218DD4DB27362={lvl=50,scene="Belmont",domain="ia"}
,q24E3BFA3573F4AA9={lvl=50,scene="Belmont",domain="ia"}
,q5C267AE45F3B88AD={lvl=50,scene="Belmont",domain="ia"}
,q6E88DE094748F2DF={lvl=50,scene="Belmont",domain="ia"}
,q77EA14D67484068C={lvl=50,scene="Belmont",domain="ia"}
,q4C725E1B98DA4E60={lvl=50,type={1}}
,q67B0BC52A7C24126={lvl=50}
,q1F6A9C8E7C5A0570={lvl=50}
,q2ACD0588B7E07649={lvl=50}
,q1CAD79185C0B3130={lvl=50,domain="ia"}
,q2933CE5D36F6913F={lvl=50,domain="ia"}
,q36D91D232DD1CAB6={lvl=50,domain="ia"}
,q4A4C8DB248AEF4F6={lvl=50,domain="ia"}
,q5247494D033CB280={lvl=50,domain="ia"}
,q2099C2DACBE6A977={lvl=50,type={7},giver='U1908445042381169'}
,q39F06CA38295D4B1={lvl=50,type={7},giver='U6D7CBAB479C22DE7'}
,qFB897B043FC0896F={lvl=50,scene="Felfathom Cays",type={10}}
,q4C4A6B863DE74846={lvl=50,domain="ia"}
,q63B31F10364FCDD0={lvl=50,domain="ia"}
,q6DAA77372C58BF8C={lvl=50,domain="ia"}
,q6ECFD5B74132F2C7={lvl=50,domain="ia"}
,q7A9F90206CA5743A={lvl=50,domain="ia"}
,q00CCA8BF645D5B96={lvl=50,scene="Kingsgate",domain="ia"}
,q1D8FA9A558890111={lvl=50,scene="Kingsgate",domain="ia"}
,q4CDBAD3933637B84={lvl=50,scene="Kingsgate",domain="ia"}
,q50E3BAE314B5E6F9={lvl=50,scene="Kingsgate",domain="ia"}
,q76F43E08431E7BBA={lvl=50,scene="Kingsgate",domain="ia"}
,q17B896B2126F953A={lvl=50,domain="ia"}
,q22DC49517C8600C3={lvl=50,domain="ia"}
,q46D5370277B7ACAA={lvl=50,domain="ia"}
,q555CC75D4BB63A17={lvl=50,domain="ia"}
,q7B8486EB61BCCB48={lvl=50,domain="ia"}
,q0095C2807853097E={lvl=50,domain="ia",type={2}}
,q0147B4911AF77CFD={lvl=50,domain="ia",type={2}}
,q044AAB79570D3784={lvl=50,domain="ia",type={2}}
,q05B256D4687BD9D0={lvl=50,domain="ia",type={2}}
,q0D8063FC69A7163F={lvl=50,domain="ia",type={2}}
,q0E4E48A519F1DB63={lvl=50,domain="ia",type={2}}
,q11C3D4DA3BB10802={lvl=50,domain="ia",type={2}}
,q1D2163BB5B97DD14={lvl=50,domain="ia",type={2}}
,q24421A1D2FA93883={lvl=50,domain="ia",type={2}}
,q257DB8054CEC0128={lvl=50,domain="ia",type={2}}
,q38FA43974D619D76={lvl=50,domain="ia",type={2}}
,q41B477583A836FDA={lvl=50,domain="ia",type={2}}
,q4B8188C8072EFEDD={lvl=50,domain="ia",type={2}}
,q4C0FB733434B31B8={lvl=50,domain="ia",type={2}}
,q5051EC93032C11B9={lvl=50,domain="ia",type={2}}
,q5A28154D1160F9A0={lvl=50,domain="ia",type={2}}
,q644DD5722F3B37EC={lvl=50,domain="ia",type={2}}
,q6864872031C1DCAD={lvl=50,domain="ia",type={2}}
,q6FE395D17A55179F={lvl=50,domain="ia",type={2}}
,q7053A585608F9D3F={lvl=50,domain="ia",type={2}}
,q710F609236E878D9={lvl=50,domain="ia",type={2}}
,q72B2EAEA148FB193={lvl=50,domain="ia",type={2}}
,q72B361E3207CDBCA={lvl=50,domain="ia",type={2}}
,q784F732945137AA5={lvl=50,domain="ia",type={2}}
,q7D1A924520041F24={lvl=50,domain="ia",type={2}}
,q111D14FB4F4B01F1={lvl=50,giver='U448A3E3B5AC6BE58'}
,q00B9DC3660712F21={lvl=50,scene="Twisted Hollow",domain="ia"}
,q1DC1C3A77B7756A9={lvl=50,scene="Twisted Hollow",domain="ia"}
,q423AF6530E6556EB={lvl=50,scene="Twisted Hollow",domain="ia"}
,q4F5032422C19D354={lvl=50,scene="Twisted Hollow",domain="ia"}
,q7DEEDA1068C0BFB5={lvl=50,scene="Twisted Hollow",domain="ia"}
,q6EB7AFB89B2B14EC={lvl=50,giver='U66C7C2A339BB6B4E'}
,q734063A005BE1CC5={lvl=50,domain="ia"}
,q3832A08AF4F04638={lvl=50,giver='U1918388230C6E124'}
,q22A4F55B00000000={lvl=50,scene="Shadefallen Towers",type={6,1}}
,q1690FCF700000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q03217537F6DA91F0={lvl=50,giver='U3DBFA6113B3531C1'}
,q0D0734C6436F17F9={lvl=50,domain="ia"}
,q25FA4BB9698338F7={lvl=50,domain="ia"}
,q4BD7B7F2157F31CC={lvl=50,domain="ia"}
,q6CFDD6177B18E16C={lvl=50,domain="ia"}
,q75B1581163A9560A={lvl=50,domain="ia"}
,q2C8AB7344E81B9F6={lvl=50,domain="ia"}
,q1BBE2211454F9A50={lvl=50,domain="ia"}
,q245339884BD0E9A0={lvl=50,domain="ia"}
,q27CD39BC31E4BC72={lvl=50,domain="ia"}
,q3486DA8C05DD3226={lvl=50,domain="ia"}
,q560D3E5C1D307F27={lvl=50,domain="ia"}
,q2305EB772494AD33={lvl=50,domain="ia"}
,q27ABFB253076574D={lvl=50,domain="ia"}
,q38DB61AF5588D672={lvl=50,domain="ia"}
,q5DF78CBD4C81BD83={lvl=50,domain="ia"}
,q72B907111ECF69EA={lvl=50,domain="ia"}
,q5FA567432BD5313B={lvl=50,domain="ia"}
,q1D4658241E3191C9={lvl=50,domain="ia"}
,q4D4CD6601028A402={lvl=50,domain="ia"}
,q71F6489717201F5A={lvl=50,domain="ia"}
,q75A7D70769AA4318={lvl=50,domain="ia"}
,q06063661737A0C28={lvl=50,domain="ia"}
,q1C3FD9DC28E44584={lvl=50,domain="ia"}
,q75D69F047169A724={lvl=50,domain="ia"}
,q763C2F672E7CD1A2={lvl=50,domain="ia"}
,q6ABBDA1AFC6D30FD={lvl=50,scene="Zareph's Return",type={1},giver='U5B31447119029D11'}
,qFD70B46FC9CCF6C0={lvl=50,scene="Hiberna Rainforest",type={14}}
,qFF98C8291B2DC6C7={lvl=50,domain="ia"}
,qFF7483E14E56A635={lvl=50,domain="ia"}
,qFE799876330815D7={lvl=50,domain="ia"}
,qFD90BB012B424CBF={lvl=50,domain="ia"}
,qFAA75393150620E0={lvl=50,domain="ia"}
,qFF5FEA4B436AAD4A={lvl=50,domain="ia"}
,qFE716E5F620F24DD={lvl=50,domain="ia"}
,qFDD938011824CF7D={lvl=50,domain="ia"}
,qFBD874E4281D9F63={lvl=50,domain="ia"}
,qFA4989CC47821D2B={lvl=50,domain="ia"}
,qFF669CA1367F13F5={lvl=50,domain="ia"}
,qFCB73A854B90CE56={lvl=50,domain="ia"}
,qFC4BCA2C0459E3E6={lvl=50,domain="ia"}
,qFA71CE5E1839212F={lvl=50,domain="ia"}
,qFA0ED6A1734A1845={lvl=50,domain="ia"}
,q347712E0CAC964FA={lvl=50,domain="guild"}
,q37FAEA53042FDCB2={lvl=50,domain="guild"}
,q16F490BBA59A52EF={lvl=50,type={1}}
,q0964D32A67E57463={lvl=50,scene="Caer Mathos", grp=2,type={3,1}}
,q215817A76B6E57C7={lvl=50,domain="ia"}
,q24619571698DE96B={lvl=50,domain="ia"}
,q703BAEC30864495C={lvl=50,domain="ia"}
,q7789BEB7141CBB22={lvl=50,domain="ia"}
,q79FF0FF234FD5AA6={lvl=50,domain="ia"}
,q0DC7A3224D71FC05={lvl=50,type={1}}
,q68BE78D4B84A02E1={lvl=50,giver='U2256073C6D19EC5D'}
,q4D6E5AD2F3E41408={lvl=50,giver='U5D1457275EE87920'}
,q09D80FFDD872D060={lvl=50,giver='U5D1457275EE87920'}
,q07E776A145F6624D={lvl=50,domain="ia"}
,q1962F3A643566C5F={lvl=50,domain="ia"}
,q3CF86AA177543E8A={lvl=50,domain="ia"}
,q460E32341454F887={lvl=50,domain="ia"}
,q55717A5E4D5C817F={lvl=50,domain="ia"}
,qFFAA6A7568B882F5={lvl=50,domain="ia"}
,qFED27EBC6425F8E9={lvl=50,domain="ia"}
,qFEBEB92D21A48775={lvl=50,domain="ia"}
,qFE783CA9231DDDD8={lvl=50,domain="ia"}
,qFADCE08721911FCC={lvl=50,domain="ia"}
,qFE0A4EB8154431E6={lvl=50,domain="ia"}
,q001BD46627CE6035={lvl=50,domain="ia"}
,q09FC1F3139DC04CC={lvl=50,domain="ia"}
,q12105CB64169C696={lvl=50,domain="ia"}
,q125ABB761EC1C6D7={lvl=50,domain="ia"}
,q1CB925260271105E={lvl=50,domain="ia"}
,q2058490A7C0A8F05={lvl=50,domain="ia"}
,q38C3261A11D54D72={lvl=50,domain="ia"}
,q403BE6F15EB16CC1={lvl=50,domain="ia"}
,q50ED1E3349AC25E7={lvl=50,domain="ia"}
,q50FC076F063B928B={lvl=50,domain="ia"}
,q5CC156902596EAA7={lvl=50,domain="ia"}
,q604F035C50E67430={lvl=50,domain="ia"}
,q7796569C07E04670={lvl=50,domain="ia"}
,q7999919F15CA55CD={lvl=50,domain="ia"}
,q7A5F720B54C8EDC7={lvl=50,domain="ia"}
,q2BADE8DF873FBB8B={lvl=50,giver='U610B81787268A249'}
,q04E627A70343164C={lvl=50}
,q31F967F717674BA1={lvl=50}
,qFE0BACFE104F3FC7={lvl=50,domain="ia"}
,qFD71AE554B2D6365={lvl=50,domain="ia"}
,qFBA04F1416043D7B={lvl=50,domain="ia"}
,qFA53D6ED6472147F={lvl=50,scene="Cliffside Vale",domain="ia"}
,q3E977C31CCA5DEFF={lvl=50,type={8},giver='U5291EA3A0D925F80'}
,q7F84051A8477CA65={lvl=50,type={8},giver='U6DADA90D0441116C'}
,q4BA81954405DD4FE={lvl=50,use={{key='I0CE0A886CBA96A5E,D1A0BAA3A43D9E6A,,,,,,', count=1}},giver='U7B97B3B848CCFD63'}
,q4170FBEAF59A6FB6={lvl=50,scene="Harlan's Lament",type={1,6,4},giver='U6E095D89495421A4'}
,qFF9F0BBF7528C501={lvl=50,domain="ia"}
,qFED2D7BA123956D0={lvl=50,domain="ia"}
,qFC248A4536AB1234={lvl=50,domain="ia"}
,qFB9B354D2FEE95EA={lvl=50,domain="ia"}
,qFAB47FC410E1F9E6={lvl=50,domain="ia"}
,q01653E932D5FD4DF={lvl=50,domain="ia"}
,q08E9B5BA17422F38={lvl=50,domain="ia"}
,q5E92C9F41FF0B292={lvl=50,domain="ia"}
,q608D68DC67C779F7={lvl=50,domain="ia"}
,q70C6B7B320F71BF3={lvl=50,domain="ia"}
,q62916565D5499721={lvl=50,domain="guild"}
,q7BCD584699E8BD6C={lvl=50,domain="guild"}
,q3018BEBC238BD138={lvl=50,scene="Thalin Tor",domain="ia"}
,q36492BC55DC37B9C={lvl=50,scene="Thalin Tor",domain="ia"}
,q37C2D87C557E4DBB={lvl=50,scene="Thalin Tor",domain="ia"}
,q6EF241F2760B17CB={lvl=50,scene="Thalin Tor",domain="ia"}
,q7AC4499709418F4D={lvl=50,scene="Thalin Tor",domain="ia"}
,qFE81A0200A7906CA={lvl=50,domain="ia"}
,qFE3764EC429DA2CA={lvl=50,domain="ia"}
,qFDCEF1C843544497={lvl=50,domain="ia"}
,qFD2D3D5D4F010724={lvl=50,domain="ia"}
,qFCD4F91B605CBC19={lvl=50,domain="ia"}
,q3F7F8DCEBD6E2644={lvl=50,type={1,3,11},giver='U47E0EEA1788EC6D7'}
,q56849D72A16050AB={lvl=50,giver='U570CB8EE1B1200DC'}
,qFEB78EDECBA1FE75={lvl=50,scene="Tuldio Retreat",type={2},giver='UFC7C475B62903DE5'}
,q65A34630DEC44C50={lvl=50,giver='U5CEA0A5D48F6DAB1'}
,q2F309CB9A1ECB534={lvl=50,type={7}}
,q7A1C473B9DA90434={lvl=50,type={7}}
,q391D58C7E6BD1134={lvl=50,type={7}}
,q32412D2ED3A9813E={lvl=50,giver='U3A8B9996451A4D99'}
,q426686EB76CE2383={lvl=50,type={18,5},giver='U1E3BBF1E6ACC84AB'}
,q200C14320E8BFC1A={lvl=50,domain="ia"}
,q2163201C39522976={lvl=50,domain="ia"}
,q5A7374D55242703C={lvl=50,domain="ia"}
,q601721607697DF4E={lvl=50,domain="ia"}
,q61A9107D29D009C8={lvl=50,domain="ia"}
,q098D842B4FF92A8B={lvl=50,scene="Blood Grove",type={3,1}}
,qFB022627EB080212={lvl=50,scene="Ferric Harbor",type={1}}
,qFE9D819A0627EF44={lvl=50,domain="ia"}
,qFDC902944C04F73E={lvl=50,domain="ia"}
,qFCE4F0CC516F7931={lvl=50,domain="ia"}
,qFB10A9244E489C1C={lvl=50,domain="ia"}
,qFA71BCDA657E3D2C={lvl=50,domain="ia"}
,q1CD22DFD36DFEAB1={lvl=50,domain="ia"}
,q2097EAF6D2DF6E89={lvl=50,type={1}}
,q522928BD7CD447DA={lvl=50,type={1}}
,q65D83804A0B09F85={lvl=50,type={1}}
,q65D838056294C04C={lvl=50,type={1}}
,q44C9127DB4275850={lvl=50,domain="guild"}
,q4B6A28EF0C503244={lvl=50,domain="guild"}
,qFB6AAD5A5B217A62={lvl=50,domain="ia"}
,q067BC24600912321={lvl=50,domain="ia"}
,q2D4326BF4BAD99E7={lvl=50,domain="ia"}
,q38E8B8EB2270351B={lvl=50,domain="ia"}
,q4E4C500C023573A4={lvl=50,domain="ia"}
,q65ECB7690AD0AEF4={lvl=50,domain="ia"}
,q7371EAB9F9EB0DFD={lvl=50,domain="pvp",giver='U4A6802CD01E1D124'}
,q07871EE01876B051={lvl=50,domain="ia"}
,q0D5BFA03262594BA={lvl=50,domain="ia"}
,q21385ABB0E141862={lvl=50,domain="ia"}
,q22347BBD00A8BC07={lvl=50,domain="ia"}
,q487DFE930A69240F={lvl=50,domain="ia"}
,q10B2ECEA27C2923A={lvl=50,domain="ia"}
,q225345286A006D75={lvl=50,domain="ia"}
,q4F9EB6F93B92F483={lvl=50,domain="ia"}
,q6933D794394C134C={lvl=50,domain="ia"}
,q6B2D12D02250C866={lvl=50,domain="ia"}
,q209A84BA33DDF36A={lvl=50,domain="ia"}
,q36BE710B57906391={lvl=50,domain="ia"}
,q39499C26268C1B57={lvl=50,domain="ia"}
,q45362A613CA9F75A={lvl=50,domain="ia"}
,q4A8957AF07083E46={lvl=50,domain="ia"}
,q53D01A17B7008D20={lvl=50,type={7},giver='U168481C90574B403'}
,q1948D07246F4FD9D={lvl=50,domain="ia"}
,q216DC9B64A2DED8A={lvl=50,domain="ia"}
,q2914716819D35558={lvl=50,domain="ia"}
,q2D552F497FC6265C={lvl=50,domain="ia"}
,q3805E8AA4639EC04={lvl=50,domain="ia"}
,q416D94AF10C5408E={lvl=50,domain="ia"}
,q02D4A2035FBF0762={lvl=50,domain="ia"}
,q351ED74B03480860={lvl=50,domain="ia"}
,q30DD98586EC41328={lvl=50,domain="ia"}
,q419B9B905DBC9213={lvl=50,domain="ia"}
,q53E039775603397B={lvl=50,domain="ia"}
,q54B0C8EB09D9E71C={lvl=50,domain="ia"}
,q781F924D7C87703C={lvl=50,domain="ia"}
,q134BF7B1432DDE75={lvl=50,domain="ia"}
,q230A4ABC4ADE8B90={lvl=50,domain="ia"}
,q2EB5231010F9C99A={lvl=50,domain="ia"}
,q61C37173698C968E={lvl=50,domain="ia"}
,q6A62FCDF5AFBD436={lvl=50,domain="ia"}
,q0029CDD6150D38D0={lvl=50,domain="ia"}
,q405CE3430A17829A={lvl=50,domain="ia"}
,q6CDF03711FFFC306={lvl=50,domain="ia"}
,q72B72005304D5B5A={lvl=50,domain="ia"}
,q73F28E2048E45B82={lvl=50,domain="ia"}
,q6C2BEA4F1DA5D9CE={lvl=50,giver='U7E08BA5F203A4D01'}
,q2865C30E5C92EB28={lvl=50,domain="ia"}
,q4AB726255BC1019D={lvl=50,domain="ia"}
,q67AF3D2353671D3B={lvl=50,domain="ia"}
,q6C32890B04C125FC={lvl=50,domain="ia"}
,q72E0961F2C69918C={lvl=50,domain="ia"}
,qFFA1E45B0DF99BEE={lvl=50,domain="ia"}
,qFF6ED6976B1B008B={lvl=50,domain="ia"}
,qFC9F91DB3D5311A4={lvl=50,domain="ia"}
,qFBB3B4E66DB8C1FD={lvl=50,domain="ia"}
,qFA6B51C4389D3BD3={lvl=50,domain="ia"}
,q5259494186DD9F1A={lvl=50,type={7},giver='U33BE255844803A67'}
,q444631C15469F8CD={lvl=50,domain="ia"}
,q4C62E682585FA79B={lvl=50,domain="ia"}
,q4ECE529E2807ED2A={lvl=50,domain="ia"}
,q6EC81B2851BD9041={lvl=50,domain="ia"}
,q7966F9883C64BEA1={lvl=50,domain="ia"}
,q036013E400000000={lvl=50, grp=5,type={1,6,3}}
,q5A3A9C6700000000={lvl=50, grp=5,type={1,3,6}}
,q4AAFB64200000000={lvl=50,scene="Endless Watch",type={8}}
,q3E613E88C081CA15={lvl=50,type={8},giver='U5291EA386C4FD1A2'}
,q654AABF41C31388D={lvl=50,type={8},giver='U5BFB2B3E5D785557'}
,q080CCCC59122CFBB={lvl=50,domain="guild"}
,q088FB0A66D3B932A={lvl=50,domain="guild"}
,q12AB347FA0CA6250={lvl=50,domain="guild"}
,q1996998F57405BD8={lvl=50,domain="guild"}
,q246B0E1FC6F88E69={lvl=50,domain="guild"}
,q25F4B589B8F0651B={lvl=50,domain="guild"}
,q28C192E1A715BF63={lvl=50,domain="guild"}
,q2CD60F7ABF8AAD9B={lvl=50,domain="guild"}
,q32A7197A8C1CBC1A={lvl=50,domain="guild"}
,q32FBF61002107C5D={lvl=50,domain="guild"}
,q353150AC789E90B8={lvl=50,domain="guild"}
,q56C2D173514A97B6={lvl=50,domain="guild"}
,q5996FD85FCCE54FE={lvl=50,domain="guild"}
,q5A69BF25249A2E82={lvl=50,domain="guild"}
,q5D7B738FBE62A22A={lvl=50,domain="guild"}
,q5F056947C3BB8B16={lvl=50,domain="guild"}
,q6C477B0F209D86F9={lvl=50,domain="guild"}
,q7ADF40159B882085={lvl=50,domain="guild"}
,q7B7EE3C4EDE51C3C={lvl=50,domain="guild"}
,q7CC765E08A8EDC6C={lvl=50,domain="guild"}
,q4988A03A05C426DA={lvl=50,domain="ia"}
,q52F73F06387AB502={lvl=50,domain="ia"}
,q624E30387EE694E9={lvl=50,domain="ia"}
,q6286552E6884CFF5={lvl=50,domain="ia"}
,q7ADD01AF207BC0F6={lvl=50,domain="ia"}
,q20FE28C3681A4BA8={lvl=50,domain="ia"}
,q2CC4940107A0CD49={lvl=50,domain="ia"}
,q36073D916FA1A282={lvl=50,domain="ia"}
,q55919B2A61F2A415={lvl=50,domain="ia"}
,q6D3028201C552951={lvl=50,domain="ia"}
,q0934978B7A8C2698={lvl=50,scene="Ravenna",domain="ia"}
,q1E35F3FB66398D80={lvl=50,scene="Ravenna",domain="ia"}
,q24B73ADD3F3FADC0={lvl=50,scene="Briarcliff",domain="ia"}
,q385C0D081B880F16={lvl=50,scene="Ravenna",domain="ia"}
,q466A92174A5DC720={lvl=50,scene="Briarcliff",domain="ia"}
,q4ABDBC2627D9BCC4={lvl=50,scene="Briarcliff",domain="ia"}
,q5E9F58582A74B296={lvl=50,scene="Briarcliff",domain="ia"}
,q6A039A796EB4300A={lvl=50,scene="Ravenna",domain="ia"}
,q70F312155BC70947={lvl=50,scene="Briarcliff",domain="ia"}
,q7C9627381D1FE762={lvl=50,scene="Ravenna",domain="ia"}
,q59F5E3762A5749F5={lvl=50,giver='U610B81787268A249'}
,q6F23F6362B2590A5={lvl=50,type={5},giver='U5A7DD26411C9AA2D'}
,q39AE893F6D2A12B7={lvl=50}
,q3D2DC338E1E17842={lvl=50}
,q229221E871C0E377={lvl=50,scene="Twisted Hollow",domain="ia"}
,q079C89CD6699AE1D={lvl=50,domain="ia"}
,q121D70A5102E799D={lvl=50,domain="ia"}
,q19428D663A4FE048={lvl=50,domain="ia"}
,q3992BF9910505074={lvl=50,domain="ia"}
,q4AF92BEB53F4AD7F={lvl=50,domain="ia"}
,q1B17D0502CA5E51B={lvl=50,domain="ia"}
,q4322EDA2225CBE54={lvl=50,domain="ia"}
,q64E35C5244CBF6C5={lvl=50,domain="ia"}
,q78A851863ABA2014={lvl=50,domain="ia"}
,q7B02A5932F67E39D={lvl=50,domain="ia"}
,q7683B1A12B329622={lvl=50,type={7},giver='U6FB82D0F43869E44'}
,q1A917DD774658EF6={lvl=50,domain="ia"}
,q1DFA5F670140CC38={lvl=50,domain="ia"}
,q5943EB130B781C17={lvl=50,domain="ia"}
,q6861F7D672F934EF={lvl=50,domain="ia"}
,q6B35F75334D4634A={lvl=50,domain="ia"}
,q2183D114789F421C={lvl=50,type={3},giver='U2A96453B7447D650'}
,q2BE406356D76917C={lvl=50,type={3},giver='U5C68B015087D0901'}
,q5CF5C67892E23FDD={lvl=50,type={7},giver='U0F5BD019052A8C44'}
,q149A02ADB8F2F322={lvl=50,giver='U09D040D4126AC805'}
,q312B9F9A76DCFF1A={lvl=50,domain="ia"}
,q053D9A6571C46847={lvl=50,domain="ia"}
,q10306CE6685170B8={lvl=50,domain="ia"}
,q344FD94745BE3DBF={lvl=50,domain="ia"}
,q570740CD2E349D08={lvl=50,domain="ia"}
,q65435C666A3ACA6E={lvl=50,domain="ia"}
,qFE3C84BB5FF67C2B={lvl=50,type={16,22}}
,q724C3F390CEA1D44={lvl=50,giver='U09D040D4126AC805'}
,q20F8F73AC4C2C5AB={lvl=50,giver='U2CCDF7D4057C5ED0'}
,q5F7750E689653FD0={lvl=50,giver='U74EA572B09FB8A5A'}
,q27D03883DDEBE783={lvl=50,type={4,3},giver='U05B6FEA65A2E8AF4'}
,q0676B1999A93FA86={lvl=50,scene="The Endless Citadel",type={1},giver='U38591BC14AB9014C'}
,q6ADCDAD9735AA13F={lvl=50,scene="The Endless Citadel",type={1,3},giver='U38591BC14AB9014C'}
,q0F6769D10FC538A5={lvl=50,scene="Caer Thalos",domain="ia"}
,q140C5E403694FC32={lvl=50,scene="Caer Thalos",domain="ia"}
,q445689D468264070={lvl=50,scene="Caer Thalos",domain="ia"}
,q530C6B8510F3F7E0={lvl=50,scene="Caer Thalos",domain="ia"}
,q1C26EC10CBD65FA9={lvl=50, grp=5,type={11}}
,q4BF76BB587AF2BC7={lvl=50, grp=5,type={11}}
,qFEDE49A26E320171={lvl=50,domain="ia"}
,qFD5409A075E04907={lvl=50,domain="ia"}
,qFCA2999771E8E6E3={lvl=50,domain="ia"}
,qFC3015B87CF0F8DD={lvl=50,domain="ia"}
,qFB910DEB43F8DF79={lvl=50,domain="ia"}
,q2CB01CDA58E236D1={lvl=50,scene="Briarcliff",domain="ia"}
,q3050541D54357EBA={lvl=50,scene="Briarcliff",domain="ia"}
,q5C9D95C12187E644={lvl=50,scene="Briarcliff",domain="ia"}
,q61ABBCB818AC969F={lvl=50,scene="Briarcliff",domain="ia"}
,q7CA614ED234A2E0E={lvl=50,scene="Briarcliff",domain="ia"}
,qFAC69696EC718703={lvl=50,scene="Tuldio Retreat",type={2},giver='UFEED948148AAA2ED'}
,q7124BEB298FD01CD={lvl=50}
,qFBB1C9BBBA51169F={lvl=50,giver='UFA66786A75CB83CE'}
,q50E4A67343415B50={lvl=50}
,q05DC68BD9B9C4B44={lvl=50,domain="guild"}
,q072FBEC0FED40F6C={lvl=50,domain="guild"}
,q0FF6AAB3B8874243={lvl=50,domain="guild"}
,q23084898E4828A4B={lvl=50,domain="guild"}
,q23CAE7A4C1B3C69E={lvl=50,domain="guild"}
,q25AE7F4F185FD921={lvl=50,domain="guild"}
,q25E1C3042D4207ED={lvl=50,domain="guild"}
,q447769AA699A6653={lvl=50,domain="guild"}
,q50E01166472FCC2B={lvl=50,domain="guild"}
,q5309B6DE81C7026D={lvl=50,domain="guild"}
,q535080A7E7E89807={lvl=50,domain="guild"}
,q563385A48247A51A={lvl=50,domain="guild"}
,q574A7500A20DC72F={lvl=50,domain="guild"}
,q59CAD8FDD4D1B166={lvl=50,domain="guild"}
,q5EF38FC150FD3FC7={lvl=50,domain="guild"}
,q6322A47371EE517E={lvl=50,domain="guild"}
,q6574BD2F017821DF={lvl=50,domain="guild"}
,q66CDF3A6F895797A={lvl=50,domain="guild"}
,q680B286E9A0DC067={lvl=50,domain="guild"}
,q6D1007B9E07AF13E={lvl=50,domain="guild"}
,q1810194B11E55539={lvl=50,domain="ia"}
,q265E4935408B9B65={lvl=50,domain="ia"}
,q4D8A07360A155E11={lvl=50,domain="ia"}
,q502213612C9E3B53={lvl=50,domain="ia"}
,q7809AFC27A132C20={lvl=50,domain="ia"}
,q0B6E8D7A74F82CBE={lvl=50,type={18,8}}
,q5DC01EFEB76F6927={lvl=50,type={8,18}}
,q5F5560D58010BD2B={lvl=50,type={18,8}}
,q611321EB9CC57D15={lvl=50,type={18,8}}
,qFCB4CB1E3AEE952E={lvl=50,domain="ia"}
,q4E43DBED5EE16F1E={lvl=50,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFFB258A209056EA8={lvl=50,scene="Dolcega Valley",type={6}}
,q085EA17161E875A5={lvl=50,scene="Edgewood",domain="ia"}
,q50B66E16760CE27A={lvl=50,scene="Edgewood",domain="ia"}
,q5E59A8B52E75F41F={lvl=50,scene="Edgewood",domain="ia"}
,q7827550C08E7C88C={lvl=50,scene="Edgewood",domain="ia"}
,q6120E3A3A1985C83={lvl=50,type={7},giver='U5F744E2E31631D20'}
,q708B152B662438D3={lvl=50,domain="ia"}
,qFF6FB5B83BC48C76={lvl=50,domain="ia"}
,qFEF9658D61C33128={lvl=50,domain="ia"}
,qFEE38D64543AC937={lvl=50,domain="ia"}
,qFE3830A00F92E0CB={lvl=50,domain="ia"}
,qFCA12C3A6CB8BCAA={lvl=50,domain="ia"}
,q413EAFF0A8AA070E={lvl=50, grp=5}
,q6E18DB36B56E02D6={lvl=50, grp=5}
,q3F7CB46EF676B047={lvl=50,giver='U2647CF7210BA65B5'}
,q6B0380E4E727A9C1={lvl=50,giver='U598F245D33D15AFC'}
,q1A62571C98B6B7DC={lvl=50,type={5},giver='U1CB0E0C95D68041A'}
,q484EA91C891D7ED0={lvl=50,domain="guild"}
,q55D9F7C649B400A0={lvl=50,domain="guild"}
,q401C146598BB9A23={lvl=50}
,q168C236300000000={lvl=50,giver='U56857BCB249C4ACC'}
,q24B7D94400000000={lvl=50,giver='U56857BCB249C4ACC'}
,q3F4AA69A00000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q40D2562FDD0D551A={lvl=50,giver='U0D1C732510D30B89'}
,qFF1A3B1A2ACE8AFE={lvl=50,domain="ia",type={2}}
,q15B3A6FC326D4BD6={lvl=50,domain="ia",type={2}}
,q17E72251233CAC10={lvl=50,domain="ia",type={2}}
,q18023A0A3F8C4D92={lvl=50,domain="ia",type={2}}
,q214C8B590DFCFE5C={lvl=50,domain="ia",type={2}}
,q2176EEC6358E6ED2={lvl=50,domain="ia",type={2}}
,q35C6675A09806A7F={lvl=50,domain="ia",type={2}}
,q44397A1F724E1E90={lvl=50,domain="ia",type={2}}
,q4A0116EF66534369={lvl=50,domain="ia",type={2}}
,q5BC0D8CB270AA701={lvl=50,domain="ia",type={2}}
,q5D58B79F2458227A={lvl=50,domain="ia",type={2}}
,q5DE8D8525A9F868E={lvl=50,domain="ia",type={2}}
,q65AABBAC37062615={lvl=50,domain="ia",type={2}}
,q697EFA07048D166F={lvl=50,domain="ia",type={2}}
,q6D4475E75FD81B21={lvl=50,domain="ia",type={2}}
,q737E3E780018221F={lvl=50,domain="ia",type={2}}
,q7976EF1C20DA77D0={lvl=50,domain="ia",type={2}}
,q7B9D4B5C2EE58897={lvl=50,domain="ia",type={2}}
,q7DF3B9BE011268D4={lvl=50,domain="ia",type={2}}
,q7E672BD1027FC1A7={lvl=50,domain="ia",type={2}}
,q7F576FCA050F64C7={lvl=50,domain="ia",type={2}}
,q75A82EBB1E4A1EA9={lvl=50,type={17}}
,q3C328A20E517C05A={lvl=50,domain="pvp"}
,q73C44079B2288208={lvl=50,giver='U1918388230C6E124'}
,q7756FD57503A5C95={lvl=50,domain="ia"}
,q42FE945827728395={lvl=50,domain="ia"}
,q255BA1DD481C00FC={lvl=50,domain="ia"}
,q2B5D7DD96398F005={lvl=50,domain="ia"}
,q37D702461E66D1F9={lvl=50,domain="ia"}
,q2762ED64FD4D7C9A={lvl=50,giver='U3FE765E7713A6925'}
,q78B6ACC7EF03807F={lvl=50,giver='U7A1E9E5B4A80A4B9'}
,q5598372C36BDE059={lvl=50,type={6}}
,q28C29FC23C7438F9={lvl=50,scene="Burlingham",domain="ia"}
,q7A066E4D17328E6E={lvl=50,scene="Burlingham",domain="ia"}
,q3B6A24FE1E1D52CD={lvl=50,scene="Hillsborough",domain="ia"}
,q7C0BA2A5E2CF4D7F={lvl=50,scene="Death's Approach",type={3,4}}
,q76ED3B6DFC16DADB={lvl=50,type={1}}
,q3453342800000000={lvl=50,scene="Hammerknell Fortress"}
,q16647B845FA7AD45={lvl=50,domain="ia"}
,q20FEE36C68DC9B8D={lvl=50,domain="ia"}
,q23A37A0F7DADCEE5={lvl=50,domain="ia"}
,q75ED50356ABB24A0={lvl=50,domain="ia"}
,q7D7C8E370DD1082D={lvl=50,domain="ia"}
,q33D35A5E7F448E4B={lvl=50,domain="ia"}
,q3974C4F202233998={lvl=50,domain="ia"}
,q56C1DCB947B32A21={lvl=50,domain="ia"}
,q218C703358F522A9={lvl=50,type={3,7},giver='U5665112E4E8F9F6F'}
,q5B6F2825C09581D1={lvl=50,type={7,3},giver='U5665112E4E8F9F6F'}
,q669335B74C1035A6={lvl=50,scene="Thalin Tor",domain="ia"}
,q47AD4D6B2002F067={lvl=50,domain="pvp",giver='U0FCD909B4ABB28A9'}
,q6D037064B38CF11F={lvl=50,domain="pvp",giver='U6C2F9BF5136514D7'}
,q7E771DB34C642F34={lvl=50,scene="Kingsgate",domain="ia"}
,q223A600A6B83EDC1={lvl=50,domain="ia"}
,q6F8DABD07E32D10E={lvl=50,domain="ia"}
,q5F12127EEF67AD30={lvl=50, grp=5,type={11}}
,q6FA8B13EAF6BC3E9={lvl=50, grp=5,type={11}}
,qFF12C8B5099FEBD1={lvl=50,domain="ia"}
,qFED1B58F0CE18FEC={lvl=50,domain="ia"}
,qFC55E18D3A62456C={lvl=50,domain="ia"}
,qFB3DF6B113BA36A7={lvl=50,domain="ia"}
,qFA6F33683E9F42E1={lvl=50,domain="ia"}
,q09B47121A151BCDF={lvl=50,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,q325CCB1AA5CF433F={lvl=50,domain="pvp",giver='U22C7792F7D4F93BD'}
,q298D6865E0A9128C={lvl=50, grp=5}
,q5D244CCFF7229F7A={lvl=50, grp=5}
,q04D70F98659EA207={lvl=50,domain="ia"}
,q06B3F5EC693B4AE0={lvl=50,domain="ia"}
,q095E3EB05346D713={lvl=50,domain="ia"}
,q4577AC135148952C={lvl=50,domain="ia"}
,q76D0A337312FD7F5={lvl=50,domain="ia"}
,q3A296526271E1DCD={lvl=50}
,q09BC74621E459B05={lvl=50,domain="ia"}
,q1EC5B3806289D0DE={lvl=50,domain="ia"}
,q3393ED4C37666658={lvl=50,domain="ia"}
,q484BEDEA30F1A730={lvl=50,domain="ia"}
,q561421A508363055={lvl=50,domain="ia"}
,qFE49288F6F359978={lvl=50,domain="ia",type={2,12,1}}
,q1471BBF62D70806B={lvl=50,domain="ia",type={2,12,1}}
,q21062971121B9461={lvl=50,domain="ia",type={12,1,2}}
,q2586269516CB368E={lvl=50,domain="ia",type={1,12,2}}
,q2613CF271A1C35B9={lvl=50,domain="ia",type={12,2,1}}
,q68C198E34BA814CB={lvl=50,domain="ia",type={2,12,1}}
,q00B3722832C8BB05={lvl=50,domain="ia"}
,q04DA04345BD315D3={lvl=50,domain="ia"}
,q314097C540740FD2={lvl=50,domain="ia"}
,q38DEDBF5337BC913={lvl=50,domain="ia"}
,q6E25234660F8C131={lvl=50,domain="ia"}
,q34DA05146A3A40E6={lvl=50,scene="Caer Kholum",domain="ia"}
,q1DAEB3E432B65009={lvl=50,scene="Caer Kholum",domain="ia"}
,q1FD7E41306AE6AFF={lvl=50,scene="Caer Kholum",domain="ia"}
,q26D11A613B9F4344={lvl=50,scene="Caer Kholum",domain="ia"}
,q3D9E91BE41260EE3={lvl=50,scene="Caer Kholum",domain="ia"}
,q6028563A03B666C6={lvl=50,scene="Caer Kholum",domain="ia"}
,q1248C4C42DCA7088={lvl=50,type={1}}
,qFEC1FC4B5ACF1159={lvl=50,domain="ia"}
,qFE9B5CF94C037F2A={lvl=50,domain="ia"}
,qFD22F0D44039C0D8={lvl=50,domain="ia"}
,qFC96DA9A643D1424={lvl=50,domain="ia"}
,qFC68FF5F18954D51={lvl=50,domain="ia"}
,q6B2C161172D10FD9={lvl=50,domain="ia"}
,q28A1885920C586FD={lvl=50,domain="ia"}
,q3B1A00AA01C37F2E={lvl=50,domain="ia"}
,q449AFB0965D85D90={lvl=50,domain="ia"}
,q4643C4D52C5C7D56={lvl=50,domain="ia"}
,q5A405B2E258AE9E3={lvl=50,domain="ia"}
,q5CECFD7E32279ABB={lvl=50,type={7,3,4},giver='U015DFB1E13F57038'}
,q5D32893EE90B708D={lvl=50,type={3,7,4},giver='U2602235E75CF34A7'}
,q17A992481E078FB0={lvl=50,giver='U3FE765E7713A6925'}
,q077B920F7B3AF262={lvl=50,scene="Burlingham",domain="ia"}
,q1EC985676BC98AD2={lvl=50,scene="Burlingham",domain="ia"}
,q3432CBC14A8FD688={lvl=50,scene="Burlingham",domain="ia"}
,q6A7D0FD239C26D7B={lvl=50,scene="Burlingham",domain="ia"}
,q7C733DCE08942A21={lvl=50,scene="Burlingham",domain="ia"}
,q0C2D2046DF3D701C={lvl=50,domain="pvp"}
,q014A2AFDC374A0A9={lvl=50,type={7},giver='U340481956AAA12AE'}
,qFDA14A5C7C13F058={lvl=50,domain="ia"}
,qFD13A747420C2FE3={lvl=50,domain="ia"}
,qFC46829920643899={lvl=50,domain="ia"}
,qFABBD7B84E2C8A26={lvl=50,domain="ia"}
,qFA836786583735AB={lvl=50,domain="ia"}
,q082871905CE2BCF3={lvl=50,domain="ia"}
,q2D89AAB650FE94F2={lvl=50,domain="ia"}
,q4D13C9453B788179={lvl=50,domain="ia"}
,q63438CEE3A314C8A={lvl=50,domain="ia"}
,q7C69264A1BE2E632={lvl=50,domain="ia"}
,qFB3C8F6CBD93672E={lvl=50,scene="Tulan",use={{key='IFA8252C7D0F0E9F3,357C0AB19B82456E,,,,,,', count=6}},giver='UFE38E92276C01C20'}
,qFFEDA9E911A3AD3D={lvl=50,domain="ia"}
,qFE9C3EBD2B75487D={lvl=50,domain="ia"}
,qFD9268E904ADA41B={lvl=50,domain="ia"}
,qFCD4FABB67562D56={lvl=50,domain="ia"}
,qFBD06E2557DF1D91={lvl=50,domain="ia"}
,q160D8F4B28490633={lvl=50,scene="Death's Approach",domain="ia"}
,q42DB5AC6678D4A8E={lvl=50,scene="Death's Approach",domain="ia"}
,q53D7A59A71C68329={lvl=50,scene="Death's Approach",domain="ia"}
,q2624D51005836061={lvl=50}
,q4BC4C6728F8622C2={lvl=50,scene="Kingsgate",type={3,10}}
,q33CE27DD8CDE07D6={lvl=50,giver='U448A3E3B5AC6BE58'}
,q1C5105D074A5F405={lvl=50,domain="ia"}
,q254825834FABB0F7={lvl=50,domain="ia"}
,q42A8870A586272CE={lvl=50,domain="ia"}
,q5ED9666A288C53BE={lvl=50,domain="ia"}
,q6BDAC750793DD79D={lvl=50,domain="ia"}
,q2C1F9F3B691AE2EA={lvl=50,domain="ia"}
,q3E47923879CFD8F5={lvl=50,domain="ia"}
,q5A5069EC29623424={lvl=50,domain="ia"}
,q78AEAE65139ED572={lvl=50,domain="ia"}
,q7EEEFB550BF6BD1D={lvl=50,domain="ia"}
,qFC6D8C20EB551F9B={lvl=50,scene="Malluma Basin",use={{key='IFC7E4485DE5BC084,BE11E890D03BC5CE,,,,,,', count=1}},type={10}}
,q0B5ED19A23D31CD5={lvl=50,scene="Caer Thalos",domain="ia"}
,q0F76AC5069435443={lvl=50,scene="Caer Thalos",domain="ia"}
,q2FDA32AA798F084E={lvl=50,scene="Caer Thalos",domain="ia"}
,q3B74BE905C28CCF4={lvl=50,scene="Caer Thalos",domain="ia"}
,q5431539546775272={lvl=50,scene="Caer Thalos",domain="ia"}
,q1867C00564BD3B26={lvl=50,scene="Ravenna",domain="ia"}
,q34F2E61A098CB7A5={lvl=50,scene="Ravenna",domain="ia"}
,q571470D452923979={lvl=50,scene="Ravenna",domain="ia"}
,q74FFD4DC578DF469={lvl=50,scene="Ravenna",domain="ia"}
,q7DEA83C74607FF27={lvl=50,scene="Ravenna",domain="ia"}
,qFC58E304058F7A34={lvl=50,domain="ia",type={2}}
,q064C5FA673866E62={lvl=50,domain="ia",type={2}}
,q0ECAF6F60705400A={lvl=50,domain="ia",type={2}}
,q11E7E65819059FB2={lvl=50,domain="ia",type={2}}
,q15A24C5A2B1A4F75={lvl=50,domain="ia",type={2}}
,q18641D5A319CE210={lvl=50,domain="ia",type={2}}
,q1B250FE46224490A={lvl=50,domain="ia",type={2}}
,q1B8BBA2F2F41F684={lvl=50,domain="ia",type={2}}
,q1CFC6C532A0B3E87={lvl=50,domain="ia",type={2}}
,q2AFBF4B03AB91659={lvl=50,domain="ia",type={2}}
,q2B72C9E677289E7B={lvl=50,domain="ia",type={2}}
,q2C23C4DB75471E25={lvl=50,domain="ia",type={2}}
,q2CD14B57227131F7={lvl=50,domain="ia",type={2}}
,q2DAA295A585E331C={lvl=50,domain="ia",type={2}}
,q2FBBFFE8206FB391={lvl=50,domain="ia",type={2}}
,q31DD2EB05C25C28B={lvl=50,domain="ia",type={2}}
,q3A370C927951E1ED={lvl=50,domain="ia",type={2}}
,q3CA81CB309C75FAB={lvl=50,domain="ia",type={2}}
,q3E579AB778BCF7AD={lvl=50,domain="ia",type={2}}
,q3FB219CF7A3AF714={lvl=50,domain="ia",type={2}}
,q464292A238D585E2={lvl=50,domain="ia",type={2}}
,q4B8692B338295842={lvl=50,domain="ia",type={2}}
,q4F40D93111449819={lvl=50,domain="ia",type={2}}
,q5128511B50DC9B97={lvl=50,domain="ia",type={2}}
,q53649BD5224783AD={lvl=50,domain="ia",type={2}}
,q537AE44730F03F7C={lvl=50,domain="ia",type={2}}
,q544248A23D7407AB={lvl=50,domain="ia",type={2}}
,q552022CF10512842={lvl=50,domain="ia",type={2}}
,q557BB9AE6DC20D1A={lvl=50,domain="ia",type={2}}
,q55D4D9630FA02EDC={lvl=50,domain="ia",type={2}}
,q59EDB7F5719665F7={lvl=50,domain="ia",type={2}}
,q5F1A703D56098D7D={lvl=50,domain="ia",type={2}}
,q643C6E9F60796E27={lvl=50,domain="ia",type={2}}
,q6473D5236C778282={lvl=50,domain="ia",type={2}}
,q67DEB9CE5B5DA816={lvl=50,domain="ia",type={2}}
,q68DF09F63358E816={lvl=50,domain="ia",type={2}}
,q6DFE921C5D2E469F={lvl=50,domain="ia",type={2}}
,q74DB986F29284933={lvl=50,domain="ia",type={2}}
,qFFB6AA6A6D02302A={lvl=50,domain="ia"}
,qFF474D3B60817376={lvl=50,domain="ia"}
,qFE916A8430E0C8E5={lvl=50,domain="ia"}
,qFCBCC1801252EF90={lvl=50,domain="ia"}
,qFCA05F08619F251A={lvl=50,domain="ia"}
,q10BEDEA09584FAF3={lvl=50,type={1}}
,q31CC029F6E824198={lvl=50,type={7},giver='U6AC663562361CD63'}
,q29B86BA5CEB8A24C={lvl=50,giver='U7691CD9F460E089A'}
,q020FCD106FAF38F2={lvl=50,domain="ia"}
,q03EF912F43A87BA5={lvl=50,domain="ia"}
,q37EA8B9A43693007={lvl=50,domain="ia"}
,q46350B7405712312={lvl=50,domain="ia"}
,q6CB3F4160839E7BD={lvl=50,domain="ia"}
,q01B9CC6E5F8F33CA={lvl=50,domain="ia",type={1}}
,q07727AFC60DCDD40={lvl=50,domain="ia",type={1}}
,q07997E8655BBCC14={lvl=50,domain="ia",type={1}}
,q0CD75F7E4374CFB2={lvl=50,domain="ia",type={1}}
,q0D452C2F322817E2={lvl=50,domain="ia",type={1}}
,q105EBDE24E952EA3={lvl=50,domain="ia",type={1}}
,q13D629CF6DA63375={lvl=50,domain="ia",type={1}}
,q1A85F19A09034F2A={lvl=50,domain="ia",type={1}}
,q1DE4BA0056C474DB={lvl=50,domain="ia",type={1}}
,q20ADC5240B4DDC0E={lvl=50,domain="ia",type={1}}
,q2545CE722651A99F={lvl=50,domain="ia",type={1}}
,q25B6D12926B4D5BE={lvl=50,domain="ia",type={1}}
,q25F8DA137E520E22={lvl=50,domain="ia",type={1}}
,q286E8ED308DE4677={lvl=50,domain="ia",type={1}}
,q2AFDB19122A9E33C={lvl=50,domain="ia",type={1}}
,q3036BDDF16EAAD59={lvl=50,domain="ia",type={1}}
,q30A3842B3E657AAE={lvl=50,domain="ia",type={1}}
,q312B0FFC3BF1F88C={lvl=50,domain="ia",type={1}}
,q3523A8113A8FE6E4={lvl=50,domain="ia",type={1}}
,q3E6390BA7A9B8E65={lvl=50,domain="ia",type={1}}
,q46AA09A41588B3F6={lvl=50,domain="ia",type={1}}
,q4EBF32DA03E5C214={lvl=50,domain="ia",type={1}}
,q4FEB797974090F5A={lvl=50,domain="ia",type={1}}
,q5165948B2B669EDB={lvl=50,domain="ia",type={1}}
,q51F6B3C00157E6D9={lvl=50,domain="ia",type={1}}
,q56D57FAA5D4AAF84={lvl=50,domain="ia",type={1}}
,q5B06701725A8DAE2={lvl=50,domain="ia",type={1}}
,q5D0ABC803DECB9D5={lvl=50,domain="ia",type={1}}
,q5FBDB73336A1D2C6={lvl=50,domain="ia",type={1}}
,q6112400224397BA5={lvl=50,domain="ia",type={1}}
,q61491A465BBA7413={lvl=50,domain="ia",type={1}}
,q62AF8B053C2F98DC={lvl=50,domain="ia",type={1}}
,q6735706571774655={lvl=50,domain="ia",type={1}}
,q685CE06916462809={lvl=50,domain="ia",type={1}}
,q6EDB1D152D82D4CB={lvl=50,domain="ia",type={1}}
,q7347C12D107B730D={lvl=50,domain="ia",type={1}}
,q7A3C7B856CB91AEF={lvl=50,domain="ia",type={1}}
,q7A9651B0423F8C26={lvl=50,domain="ia",type={1}}
,q7B2A9DCC30A3C7CC={lvl=50,domain="ia",type={1}}
,q7ED9A91C24C46067={lvl=50,domain="ia",type={1}}
,q6EE6A2C93E73402A={lvl=50,scene="Death's Approach",domain="ia"}
,qFA93B35E041A1A14={lvl=50,domain="ia",type={2}}
,q0DFA1F427F9223B8={lvl=50,domain="ia",type={2}}
,q18C297B46EB2D62A={lvl=50,domain="ia",type={2}}
,q5AB661C3129BC304={lvl=50,domain="ia",type={2}}
,q5FD65A253FA94AEE={lvl=50,domain="ia",type={2}}
,q63B2CF450F959897={lvl=50,domain="ia",type={2}}
,q687B366858955035={lvl=50,domain="ia",type={2}}
,q6AFA731954C31211={lvl=50,domain="ia",type={2}}
,q79F59B490F02AB68={lvl=50,domain="ia",type={2}}
,q51571F657DFC361A={lvl=50,giver='U448A3E3B5AC6BE58'}
,q00B4DFB17B15C463={lvl=50,domain="ia",type={1}}
,q024C1E8F4D612EB7={lvl=50,domain="ia",type={1}}
,q06352F54714CC6EA={lvl=50,domain="ia",type={1}}
,q08483C401C75FE4F={lvl=50,domain="ia",type={1}}
,q09B3DDAF21E0D176={lvl=50,domain="ia",type={1}}
,q0B6CC2B564CC7C23={lvl=50,domain="ia",type={1}}
,q0E22A3D17FEC8DAB={lvl=50,domain="ia",type={1}}
,q11B65B8A70692FE7={lvl=50,domain="ia",type={1}}
,q146C51832EF74A59={lvl=50,domain="ia",type={1}}
,q1488C34600F55531={lvl=50,domain="ia",type={1}}
,q148B40BD0246D79A={lvl=50,domain="ia",type={1}}
,q1C98DF6013FF7642={lvl=50,domain="ia",type={1}}
,q1C9F99471730C5AB={lvl=50,domain="ia",type={1}}
,q1CD67F3B03F6EDFC={lvl=50,domain="ia",type={1}}
,q1D52F1CB6D2136DE={lvl=50,domain="ia",type={1}}
,q1E53D801094FB489={lvl=50,domain="ia",type={1}}
,q2269E01F4D353B1C={lvl=50,domain="ia",type={1}}
,q230E579200292FA9={lvl=50,domain="ia",type={1}}
,q23C897E16A4C2954={lvl=50,domain="ia",type={1}}
,q252E59E1396DCC6E={lvl=50,domain="ia",type={1}}
,q269F93480E6788AE={lvl=50,domain="ia",type={1}}
,q2FB82BBA7E5E36B8={lvl=50,domain="ia",type={1}}
,q2FE603816914D2C1={lvl=50,domain="ia",type={1}}
,q303AE3AC2C4DBAF4={lvl=50,domain="ia",type={1}}
,q32D7736378DDA176={lvl=50,domain="ia",type={1}}
,q343C5CAB3B7A301D={lvl=50,domain="ia",type={1}}
,q354BA7F5150D5DEB={lvl=50,domain="ia",type={1}}
,q3896A61C101AFF10={lvl=50,domain="ia",type={1}}
,q38E240C139986705={lvl=50,domain="ia",type={1}}
,q3B419B097D90B96B={lvl=50,domain="ia",type={1}}
,q3CA0DAE03573D9F0={lvl=50,domain="ia",type={1}}
,q3CA7ED8C33A69C63={lvl=50,domain="ia",type={1}}
,q3DD4661B7E5B2162={lvl=50,domain="ia",type={1}}
,q4101B60C37A5AF77={lvl=50,domain="ia",type={1}}
,q4377639809AEE23E={lvl=50,domain="ia",type={1}}
,q4437F59824AD7C2A={lvl=50,domain="ia",type={1}}
,q4D594F72132BDD9B={lvl=50,domain="ia",type={1}}
,q4E14A8A17AF2AC47={lvl=50,domain="ia",type={1}}
,q4FAB7B560F6959D7={lvl=50,domain="ia",type={1}}
,q4FB451582FCDBEEB={lvl=50,domain="ia",type={1}}
,q5A11CFA50C8468C7={lvl=50,domain="ia",type={1}}
,q5ADFF6F861C5E419={lvl=50,domain="ia",type={1}}
,q5EB7EB3E0A74B76A={lvl=50,domain="ia",type={1}}
,q5F98FB7463EB4D02={lvl=50,domain="ia",type={1}}
,q6738455870B57B70={lvl=50,domain="ia",type={1}}
,q6ADCB5822C211522={lvl=50,domain="ia",type={1}}
,q6BEEAADC423855B2={lvl=50,domain="ia",type={1}}
,q6D2E226A1E0D2CBC={lvl=50,domain="ia",type={1}}
,q6EEC51B04DE3D4FA={lvl=50,domain="ia",type={1}}
,q701332754489292A={lvl=50,domain="ia",type={1}}
,q71EC7CB0363F10D5={lvl=50,domain="ia",type={1}}
,q76CAC03D5B023B68={lvl=50,domain="ia",type={1}}
,q78522A1F209FEB94={lvl=50,domain="ia",type={1}}
,q7BF28589676E08A1={lvl=50,domain="ia",type={1}}
,q7C9CEAD052FCD1E8={lvl=50,domain="ia",type={1}}
,q0F2FAE80D083E0B8={lvl=50,giver='U7095D6251D056FA9'}
,q4FAB100B051EE311={lvl=50,giver='U551AFF263D7BD2A7'}
,q082A632CFFD0EBE8={lvl=50,type={7},giver='U5A6C5DBA7EF40EFB'}
,qFB7D280E5C018BDE={lvl=50,domain="ia"}
,q2352116E37C5C4A9={lvl=50,domain="ia"}
,q32A9DF7D4AFF9467={lvl=50,domain="ia"}
,q4097DC73076B50C8={lvl=50,domain="ia"}
,q5F6629672C593652={lvl=50,domain="ia"}
,q6C2B5119073BCBB4={lvl=50,domain="ia"}
,q28C732515FB2A3CB={lvl=50,domain="ia",type={1,12,2}}
,q63169CA83F9FD03C={lvl=50,domain="ia",type={1,2,12}}
,qFE4B5EA83AC8574B={lvl=50,domain="ia"}
,q0DD82BDE07A8F9DA={lvl=50,domain="ia"}
,q4F69B26167BFB965={lvl=50,domain="ia"}
,q63491CC91A158EB6={lvl=50,domain="ia"}
,q7390D9B505BC681E={lvl=50,domain="ia"}
,q7C9D4A432CE0A949={lvl=50,domain="ia"}
,q4E4C7DE586942DE6={lvl=50,domain="pvp"}
,q3903778C28692055={lvl=50,domain="ia"}
,q498381C277AF453F={lvl=50,domain="ia"}
,q501B551B69E1BA03={lvl=50,domain="ia"}
,q5C8724047096590E={lvl=50,domain="ia"}
,q64EC2F485641282B={lvl=50,domain="ia"}
,q3A3C52C80D6F934C={lvl=50,domain="ia"}
,q43ECEB014DC99CA9={lvl=50,domain="ia"}
,q502EFAAC47DBBA30={lvl=50,domain="ia"}
,q75998EC10AEBA39D={lvl=50,domain="ia"}
,q77619FBE18EA345C={lvl=50,domain="ia"}
,qFE8A3C1BCC3EE9C1={lvl=50,scene="Cirkbo Plains",type={9}}
,qFB68BFC5F6118700={lvl=50,scene="Malluma Basin",type={9}}
,qFD65831BE65D3D57={lvl=50,scene="Daemon Loci",type={9}}
,qFD9E6B511F57EEEE={lvl=50,scene="Ruins of Tammark",type={9}}
,qFDD0CB68CA4DA86F={lvl=50,scene="Felfathom Cays",type={9}}
,qFA4F7826DAF87C9B={lvl=50,scene="Kelrath Peninsula",type={9}}
,qFCFF49A1BBAA6A1C={lvl=50,scene="Ferric Harbor",type={9}}
,qFED337B06ED107D9={lvl=50,scene="Cirkbo Plains",type={9}}
,qFFDCF722B04A70E7={lvl=50,scene="Kelrath Peninsula",type={9}}
,qFE2C33C2C1C9B39C={lvl=50,scene="Dolcega Valley",type={9}}
,qFFAC3C8E65314713={lvl=50,scene="Felfathom Cays",type={9}}
,qFD310FABD1B0C6E2={lvl=50,scene="Kelrath Peninsula",type={9}}
,qFF83526ABC108837={lvl=50,scene="Sundred Trenches",type={9}}
,qFAAEC8D4818A7DC4={lvl=50,scene="Edgestone Ridge",type={9}}
,qFCDFB980C109176C={lvl=50,scene="Mephitis Bog",type={9}}
,qFA11BF69B7F8C965={lvl=50,scene="Sundred Trenches",type={9}}
,qFF51F880B5ED47FC={lvl=50,scene="Mephitis Bog",type={9}}
,qFE71D4D26CF4368B={lvl=50,scene="Ruins of Tammark",type={9}}
,q373DA9C9DAD24533={lvl=50,domain="pvp"}
,q2FB5EAED34720924={lvl=50,scene="Death's Approach",domain="ia"}
,q378B513B3512ADC4={lvl=50,scene="Death's Approach",domain="ia"}
,q5474052836D53DFC={lvl=50,scene="Death's Approach",domain="ia"}
,q69EA5E457F0B3FF5={lvl=50,scene="Death's Approach",domain="ia"}
,q72EA727826C00F43={lvl=50,scene="Death's Approach",domain="ia"}
,q76BF81BC49A2F939={lvl=50,domain="ia",type={2,1,12}}
,q796ADFFD6BD819ED={lvl=50,domain="ia",type={12,1,2}}
,q258A819E8DB89A5E={lvl=50,giver='U75526206316307F2'}
,q2970150B0F512F37={lvl=50,domain="ia"}
,q2A6673C55CD41D27={lvl=50,domain="ia"}
,q3B368A1303DE8610={lvl=50,domain="ia"}
,q62E35CCFF2729482={lvl=50,type={7},giver='U6036530C56F1FB94'}
,q1602CFB928B8226C={lvl=50,scene="Hillcrest",domain="ia"}
,q29EA5EC73C9EAE7B={lvl=50,scene="Hillcrest",domain="ia"}
,q5366BE6D132F16D4={lvl=50,scene="Hillcrest",domain="ia"}
,q1303C2A76673C542={lvl=50,scene="Burlingham",domain="ia"}
,q13DE920E169CCD54={lvl=50,domain="ia"}
,q4CC01B60624E05A8={lvl=50,type={7},giver='U4AE685C27B0D4065'}
,q6A64F749CA579836={lvl=50,scene="Mage's Mark",type={4,1,8},giver='U068B93E466090425'}
,q0A87992E4EF22BDC={lvl=50}
,q35DA769F5CECA491={lvl=50,domain="ia"}
,q5DD4CC813A420912={lvl=50,domain="ia"}
,q5FE658EC6B7F00EC={lvl=50,domain="ia"}
,q618115AA2FBD2922={lvl=50,domain="ia"}
,q6B527CAC327EF928={lvl=50,domain="ia"}
,q0DC21AF042D673C0={lvl=50,domain="ia"}
,q215086F6751A4FC5={lvl=50,domain="ia"}
,q271D7D2C0C6937D1={lvl=50,domain="ia"}
,q2D89BC40173F7EB0={lvl=50,domain="ia"}
,q305942CE37795A0B={lvl=50,domain="ia"}
,q4B1CF0021178806C={lvl=50,domain="ia"}
,q543F09EC0EAC8D29={lvl=50,domain="ia"}
,q5BF8CF334D37FFCD={lvl=50,domain="ia"}
,q70AB0DC649C120A6={lvl=50,domain="ia"}
,q3EEE613DFA72FC80={lvl=50,domain="pvp"}
,q00610D7D613ECAF8={lvl=50,domain="ia"}
,q1D96A4437F5B52F0={lvl=50,domain="ia"}
,q2104F6E65D3E7F79={lvl=50,domain="ia"}
,q315FA6B80AC445EF={lvl=50,domain="ia"}
,q4340745C26144550={lvl=50,domain="ia"}
,q7E288BDF2C9309FB={lvl=50,giver='U3A8B9996451A4D99'}
,q5ED7B99F450FF1A8={lvl=50}
,qFF8F1990606FC626={lvl=50,domain="ia",type={1}}
,q01188AB162FA6163={lvl=50,domain="ia",type={1}}
,q02A7F29A1EAF10D1={lvl=50,domain="ia",type={1}}
,qFCF6CDEF1048D674={lvl=50,domain="ia",type={1}}
,qFB7625D8622345A4={lvl=50,domain="ia",type={1}}
,q068DCD0301F78BE6={lvl=50,domain="ia",type={1}}
,q06AEC24324F51C29={lvl=50,domain="ia",type={1}}
,q0A2599E750C68399={lvl=50,domain="ia",type={1}}
,q0A3C176E5D41428C={lvl=50,domain="ia",type={1}}
,q0E275752191D82BC={lvl=50,domain="ia",type={1}}
,q0FCC5B3C561C4F76={lvl=50,domain="ia",type={1}}
,q1116A32D3F4D4E07={lvl=50,domain="ia",type={1}}
,q11C29FC55064058C={lvl=50,domain="ia",type={1}}
,q11F30AA51BC7FD47={lvl=50,domain="ia",type={1}}
,q14CFD89D6B49E541={lvl=50,domain="ia",type={1}}
,q18C94964764EDE52={lvl=50,domain="ia",type={1}}
,q1A1011ED12CCD32A={lvl=50,domain="ia",type={1}}
,q1FBC097D12F564C3={lvl=50,domain="ia",type={1}}
,q2417817A4BD2F435={lvl=50,domain="ia",type={1}}
,q26FB94554CDC9D38={lvl=50,domain="ia",type={1}}
,q278CB17D4720DF26={lvl=50,domain="ia",type={1}}
,q2A96D2110C083D8B={lvl=50,domain="ia",type={1}}
,q2C06C35C77BF812F={lvl=50,domain="ia",type={1}}
,q2F8C557F51BC3AF2={lvl=50,domain="ia",type={1}}
,q337AB14F7D56F259={lvl=50,domain="ia",type={1}}
,q352968DC65F94EED={lvl=50,domain="ia",type={1}}
,q35322A11757EDAF8={lvl=50,domain="ia",type={1}}
,q361D1D3475B29012={lvl=50,domain="ia",type={1}}
,q3937D50006979B12={lvl=50,domain="ia",type={1}}
,q3A1EAE8A55F82240={lvl=50,domain="ia",type={1}}
,q3A655ACA6CCECBDF={lvl=50,domain="ia",type={1}}
,q44ED190240D28FEE={lvl=50,domain="ia",type={1}}
,q454954813CA2126D={lvl=50,domain="ia",type={1}}
,q4CA65F496B06C43A={lvl=50,domain="ia",type={1}}
,q4FE867895430B36D={lvl=50,domain="ia",type={1}}
,q4FF5AE212F7E0FAC={lvl=50,domain="ia",type={1}}
,q55A716763333DFF1={lvl=50,domain="ia",type={1}}
,q5625831176393CE6={lvl=50,domain="ia",type={1}}
,q59325E3A09FCDF38={lvl=50,domain="ia",type={1}}
,q5C7BEDB64590D059={lvl=50,domain="ia",type={1}}
,q6308F7E27B1BD502={lvl=50,domain="ia",type={1}}
,q64B7486234ED1D6F={lvl=50,domain="ia",type={1}}
,q65B075AF00A180F1={lvl=50,domain="ia",type={1}}
,q665F1AC7624F806B={lvl=50,domain="ia",type={1}}
,q6CC98F754D0B77D6={lvl=50,domain="ia",type={1}}
,q6ED448663A0F44E3={lvl=50,domain="ia",type={1}}
,q72CAC81D75F6DDF1={lvl=50,domain="ia",type={1}}
,q74E846FF23DD793B={lvl=50,domain="ia",type={1}}
,q778C4F245D2E4F24={lvl=50,domain="ia",type={1}}
,q77A671D21CD14BC9={lvl=50,domain="ia",type={1}}
,q7A05506F484A3CE9={lvl=50,domain="ia",type={1}}
,q7A90434F39CD23AD={lvl=50,domain="ia",type={1}}
,q7B0A5F19651753AD={lvl=50,domain="ia",type={1}}
,q7B36BBA37E57A28B={lvl=50,domain="ia",type={1}}
,q7BE21EB60BF62FB3={lvl=50,domain="ia",type={1}}
,q179B4275F1F924FD={lvl=50,domain="pvp",giver='U679C15062B0D5DB5'}
,q2CD026D3781BA805={lvl=50}
,q5A504228BCA715DA={lvl=50}
,q5DFEC5D2AF1EE50F={lvl=50,type={8,1}}
,q49B856123A4419E3={lvl=50, grp=3,type={11,3},giver='U47E0EEA1788EC6D7'}
,q6893F00AAE1A5861={lvl=50,scene="Scoria Expanse",type={6}}
,q01A060AD239DC2D9={lvl=50,domain="ia"}
,q0E5D5939123DEA2C={lvl=50,domain="ia"}
,q0EDCEAF1025903F6={lvl=50,domain="ia"}
,q26635E7C52189A59={lvl=50,domain="ia"}
,q727CC45C721021D4={lvl=50,domain="ia"}
,q0446359E35280640={lvl=50,domain="ia"}
,q1568DF8D526C0938={lvl=50,domain="ia"}
,q1BB2F39E01A0FE74={lvl=50,domain="ia"}
,q42371270556E2427={lvl=50,domain="ia"}
,q54AB678375BF99BB={lvl=50,domain="ia"}
,q55A0E482402FDE77={lvl=50,domain="ia"}
,q0E954AA90421C4FF={lvl=50,domain="ia"}
,q12557CF467230930={lvl=50,domain="ia"}
,q2F69AD3355C20201={lvl=50,domain="ia"}
,q58FE903A767D9294={lvl=50,domain="ia"}
,q702E6B0C3478A6E8={lvl=50,domain="ia"}
,q189EE9474A33C447={lvl=50,domain="ia"}
,q1EA4405C0B1099C9={lvl=50,domain="ia"}
,q3432A49574D73575={lvl=50,domain="ia"}
,q6272AA4F32333FCF={lvl=50,domain="ia"}
,q6386EEB54C51AB45={lvl=50,domain="ia"}
,q06D6C9A797964545={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={3,4}}
,q07BE23D69D8AF31B={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={4,3}}
,q09BE8F88FF6C19FD={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={4,3}}
,q55E2A72776AE9E9D={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={3,4}}
,q592B7F210CD0537C={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={4,3}}
,q7114963E47DC65E0={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={3,4}}
,q1218AF978187FC00={lvl=50,craft={{key='I29E41F5EAF38D9AF,8211E6DBFB60E2DC,,,,,,', count=20}},type={4,3}}
,q297D21E4C48B5ABC={lvl=50,craft={{key='I29E41F5EAF38D9AF,8211E6DBFB60E2DC,,,,,,', count=20}},type={3,4}}
,q47655006A503B5F8={lvl=50,craft={{key='I29E41F5EAF38D9AF,8211E6DBFB60E2DC,,,,,,', count=20}},type={4,3}}
,q7FF3DF55D2057C53={lvl=50,craft={{key='I29E41F5EAF38D9AF,8211E6DBFB60E2DC,,,,,,', count=20}},type={4,3}}
,q0316EB2CDD4C00DE={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={3,4}}
,q123F12222F176F44={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={3,4}}
,q384DE9B811A5A6BE={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={4,3}}
,q4B6724271A26C09F={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={4,3}}
,q520E9118E31B66FF={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={4,3}}
,q5CCC422BF16AB401={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={3,4}}
,q60F59025E8D01BCE={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={3,4}}
,q1DC4E5957A1B4B5C={lvl=50,craft={{key='I29E41F604AABB425,50DBB2657526463B,,,,,,', count=20}},type={4,3}}
,q4DE1F84AC5E3F060={lvl=50,craft={{key='I29E41F5B4D9BD098,76CFFEFB3C56626E,,,,,,', count=20}},type={4,3}}
,q51699A6487F2EBA7={lvl=50,craft={{key='I29E41F5B4D9BD098,76CFFEFB3C56626E,,,,,,', count=20}},type={4,3}}
,q73153F6477DC080C={lvl=50,craft={{key='I29E41F5B4D9BD098,76CFFEFB3C56626E,,,,,,', count=20}},type={3,4}}
,q79345E7A0114FF32={lvl=50,craft={{key='I29E41F5B4D9BD098,76CFFEFB3C56626E,,,,,,', count=20}},type={4,3}}
,q44F16CBDEAA799E9={lvl=50,craft={{key='I29E41F5CD7440121,60FC277D4120815F,,,,,,', count=20}},type={4,3}}
,q5F89E815F9664352={lvl=50,craft={{key='I29E41F5CD7440121,60FC277D4120815F,,,,,,', count=20}},type={3,4}}
,q75DA3F356ACA1C98={lvl=50,craft={{key='I29E41F5CD7440121,60FC277D4120815F,,,,,,', count=20}},type={3,4}}
,q7F8B4B387A7C9ACC={lvl=50,craft={{key='I29E41F5CD7440121,60FC277D4120815F,,,,,,', count=20}},type={4,3}}
,q13EC4057B1F3C7F1={lvl=50,craft={{key='I29E41F593089459A,6A3950E419840103,,,,,,', count=20}},type={3,4}}
,q269CDD02588469A5={lvl=50,craft={{key='I29E41F593089459A,6A3950E419840103,,,,,,', count=20}},type={4,3}}
,q304E8D53E8FA7584={lvl=50,craft={{key='I29E41F593089459A,6A3950E419840103,,,,,,', count=20}},type={3,4}}
,q3934D39E303F1D6B={lvl=50,craft={{key='I29E41F593089459A,6A3950E419840103,,,,,,', count=20}},type={4,3}}
,q7D1D7D21C723ECB0={lvl=50,craft={{key='I29E41F593089459A,6A3950E419840103,,,,,,', count=20}},type={4,3}}
,q7E88C1BECC476BF1={lvl=50,craft={{key='I29E41F593089459A,6A3950E419840103,,,,,,', count=20}},type={4,3}}
,q183D57D6A5EC3B29={lvl=50,craft={{key='I29E41F5D3F73AD7D,8CF3C030EB3B52ED,,,,,,', count=20}},type={4,3}}
,q77BAA2225CBBB939={lvl=50,craft={{key='I29E41F5D3F73AD7D,8CF3C030EB3B52ED,,,,,,', count=20}},type={4,3}}
,q117892222C69AC18={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={3,4}}
,q1BF325327D4AAF6B={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={3,4}}
,q27979CDF2A1CF606={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={4,3}}
,q290F8A51F00C02A6={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={3,4}}
,q3870F3BBDC9FB5B8={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={4,3}}
,q4E70AA81B56AC05C={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={3,4}}
,q51312CACAC9BA513={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={3,4}}
,q526F90559A77CE07={lvl=50,craft={{key='I29E41F5662F29D71,74ED99B07CF3531A,,,,,,', count=20}},type={3,4}}
,qFDCC6FBCFF8E97EA={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={3,4}}
,q1B510EC5E1082C2B={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={3,4}}
,q38255E98BDFC73C7={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={3,4}}
,q39DE5D9AE3A9DEE4={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={3,4}}
,q590FC92D149F97B9={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={4,3}}
,q63AA1319DC738CE5={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={3,4}}
,q0C1BA953D5445782={lvl=50,craft={{key='I29E41F5F53CB3161,1702A96FE336538B,,,,,,', count=20}},type={4,3}}
,q2CEAB338F2BE3E05={lvl=50,craft={{key='I29E41F5F53CB3161,1702A96FE336538B,,,,,,', count=20}},type={4,3}}
,q1C8AAB1A735142F2={lvl=50,craft={{key='I29E41F5A45C6E5B3,4AD86648123B90E1,,,,,,', count=20}},type={4,3}}
,q251C2DC2BBFDA6CD={lvl=50,craft={{key='I29E41F5A45C6E5B3,4AD86648123B90E1,,,,,,', count=20}},type={4,3}}
,q32CD022B4CEA262B={lvl=50,craft={{key='I29E41F5A45C6E5B3,4AD86648123B90E1,,,,,,', count=20}},type={3,4}}
,q788C3C81F48443F8={lvl=50,craft={{key='I29E41F5A45C6E5B3,4AD86648123B90E1,,,,,,', count=20}},type={4,3}}
,q7CD4E4D70640C116={lvl=50,craft={{key='I29E41F5A45C6E5B3,4AD86648123B90E1,,,,,,', count=20}},type={4,3}}
,q7B630424CEB318EC={lvl=50,craft={{key='I29E41F58AFCCA489,5836F9CF0E2739DA,,,,,,', count=20}},type={3,4}}
,q56F6BF94EB965181={lvl=50,craft={{key='I29E41F5EAF38D9AF,8211E6DBFB60E2DC,,,,,,', count=20}},type={4,3}}
,q3333333981047DFD={lvl=50,craft={{key='I5D31A665214029E8,239732894ED3CD21,,,,,,', count=20}},type={4,3}}
,q5887A23CC2446A31={lvl=50,craft={{key='I29E41F604AABB425,50DBB2657526463B,,,,,,', count=20}},type={3,4}}
,q2523565E0BCC5A4B={lvl=50,craft={{key='I29E41F619F6343EE,62DE097A00830D65,,,,,,', count=20}},type={3,4}}
,q23D1DB82CB2CFF60={lvl=50,craft={{key='I29E41F5B4D9BD098,76CFFEFB3C56626E,,,,,,', count=20}},type={3,4}}
,q11879220C4050559={lvl=50,craft={{key='I29E41F5CD7440121,60FC277D4120815F,,,,,,', count=20}},type={3,4}}
,q33168BA4B9A97F92={lvl=50,craft={{key='I29E41F62577D14DF,393E25C1CB744DAA,,,,,,', count=20}},type={3,4}}
,q0866C6CB7B648A3A={lvl=50,craft={{key='I29E41F5D3F73AD7D,8CF3C030EB3B52ED,,,,,,', count=20}},type={4,3}}
,q42E946EFA3804550={lvl=50,craft={{key='I29E41F579F026F80,7B31AEB151E3BFDD,,,,,,', count=20}},type={4,3}}
,q2CB260626F585163={lvl=50,craft={{key='I29E41F5F53CB3161,1702A96FE336538B,,,,,,', count=20}},type={3,4}}
,q076E3C45A8F306FC={lvl=50,craft={{key='I29E41F5A45C6E5B3,4AD86648123B90E1,,,,,,', count=20}},type={4,3}}
,q2C7AA42B5A1E6AC2={lvl=50,domain="pvp",giver='U22C7792F7D4F93BD'}
,qFBD88966C55D743C={lvl=50,giver='UFC7C475B62903DE5'}
,q545C2EC79B04A4B8={lvl=50,giver='U01E712C8146F438E'}
,q5D7FE5C6AF7F9FAC={lvl=50,giver='U403A29C278834BF1'}
,q0F5FFA20957BBAFF={lvl=50}
,q6ADFCF65B863E8FF={lvl=50,giver='U2256073C6D19EC5D'}
,q164E5C8D365CC4CB={lvl=50,type={7},giver='U4237BDD312C60156'}
,q7978179527269B19={lvl=50}
,q3500A92300000000={lvl=50}
,q39B1693700000000={lvl=50}
,q738CAFAB00000000={lvl=50}
,q7511AF2A00000000={lvl=50}
,q24EF3B5E7E44059B={lvl=50}
,q031672125F0FECD6={lvl=50}
,q167E95754DC1ACFA={lvl=50}
,q63F1C1D200000000={lvl=50}
,q019A171D745618A6={lvl=50}
,q62CDB77E8094FEEF={lvl=50}
,q5898C20152E20C27={lvl=50}
,q372AD35200000000={lvl=50}
,q78B5077100000000={lvl=50}
,q2FA3397700000000={lvl=50}
,q41B86ABE00000000={lvl=50}
,q324F3D9298F91AC9={lvl=50}
,q1DD1C26377C5E63B={lvl=50}
,q0E6A126F71C0AF6D={lvl=50}
,q63603505AE20A46F={lvl=50}
,q1B5131DEEA066905={lvl=50}
,q1C51169D00000000={lvl=50}
,q5F8CE1D500000000={lvl=50}
,q518725A200000000={lvl=50}
,q5791FB6000000000={lvl=50}
,q4D2E5D4300000000={lvl=50}
,q3621AF328A65A7D2={lvl=50}
,q5C09F78B4693167E={lvl=50}
,q6822222300000000={lvl=50}
,q6B210B1300000000={lvl=50}
,q37EA803A64D45631={lvl=50}
,q22E2361A59979CEE={lvl=50}
,q77B0170100000000={lvl=50}
,q58283C8917112F47={lvl=50}
,q02E1754700000000={lvl=50}
,q4F94956500000000={lvl=50}
,q2BE73F0600000000={lvl=50}
,q614373F900000000={lvl=50}
,q7F834CB000000000={lvl=50}
,q4771E91E00000000={lvl=50}
,q60AF524200000000={lvl=50}
,q4B5C3CA60FCBA737={lvl=50,scene="Kingsgate",domain="ia"}
,q2DCE78FC104DD5E1={lvl=50,domain="pvp"}
,q26524D4B7A6DBC8C={lvl=50,domain="ia"}
,q396109BB609CBFEA={lvl=50,domain="ia"}
,q40A53E5D72247066={lvl=50,domain="ia"}
,q453956FC40ECDED4={lvl=50,domain="ia"}
,q55B675017432CD49={lvl=50,domain="ia"}
,q7CC3D4A78BF59796={lvl=50,domain="pvp"}
,q0CCBE3E79B51913C={lvl=50,type={1}}
,qFEA0501F8E64E864={lvl=50,scene="Dolcega Valley",type={6}}
,qFFB21B62768DFD36={lvl=50,domain="ia",type={2}}
,q01BB0A076DD828B4={lvl=50,domain="ia",type={2}}
,qFC3DB1C34B6649D5={lvl=50,domain="ia",type={2}}
,q07DE9F6D69928281={lvl=50,domain="ia",type={2}}
,q08AA058D76BC404E={lvl=50,domain="ia",type={2}}
,q0BC8C9DE00E71798={lvl=50,domain="ia",type={2}}
,q165FCDCE4281AF77={lvl=50,domain="ia",type={2}}
,q1852E4C63C9C0ED3={lvl=50,domain="ia",type={2}}
,q1C92FA0209C953B2={lvl=50,domain="ia",type={2}}
,q1CDA1D583C5EFFD2={lvl=50,domain="ia",type={2}}
,q1F364D9F24F88801={lvl=50,domain="ia",type={2}}
,q1F5CF7511A822B7B={lvl=50,domain="ia",type={2}}
,q2165B13A75D2FECF={lvl=50,domain="ia",type={2}}
,q21E56D1273ED08B2={lvl=50,domain="ia",type={2}}
,q293919FD5A8AF294={lvl=50,domain="ia",type={2}}
,q2C2438025372155A={lvl=50,domain="ia",type={2}}
,q2FD96C6646AF3B75={lvl=50,domain="ia",type={2}}
,q34479C2B2638A7C6={lvl=50,domain="ia",type={2}}
,q3DA48C4220BE3A46={lvl=50,domain="ia",type={2}}
,q3F4E8D483FF11D85={lvl=50,domain="ia",type={2}}
,q44A8CC4A76EA3734={lvl=50,domain="ia",type={2}}
,q47A286E11970A0FC={lvl=50,domain="ia",type={2}}
,q4F417A940A6F4ED3={lvl=50,domain="ia",type={2}}
,q4FC0925936F3FFA7={lvl=50,domain="ia",type={2}}
,q50249B946050B9FB={lvl=50,domain="ia",type={2}}
,q50A192821200CAE0={lvl=50,domain="ia",type={2}}
,q53B5AB1305FDB583={lvl=50,domain="ia",type={2}}
,q5557E51A1B447C4F={lvl=50,domain="ia",type={2}}
,q5744F8A2000288C5={lvl=50,domain="ia",type={2}}
,q5A0B99BF32416836={lvl=50,domain="ia",type={2}}
,q5A523F642952E80F={lvl=50,domain="ia",type={2}}
,q5D64B3835B15F10E={lvl=50,domain="ia",type={2}}
,q5E04E17045355748={lvl=50,domain="ia",type={2}}
,q65728CEE2510AF83={lvl=50,domain="ia",type={2}}
,q6836379849051A55={lvl=50,domain="ia",type={2}}
,q7918766A10E47D0F={lvl=50,domain="ia",type={2}}
,q7A5861F74A365F34={lvl=50,domain="ia",type={2}}
,qFED354930883293C={lvl=50,domain="ia"}
,q60C2B3E0DD5B7D34={lvl=50,giver='U1BCDA2987E71F25E'}
,q142AC70111CD1397={lvl=50,domain="ia"}
,q17B18724028ECC79={lvl=50,domain="ia"}
,q18CF1554090BEC25={lvl=50,domain="ia"}
,q42CD0E1C53779667={lvl=50,domain="ia"}
,q7A2DA6FA396CB531={lvl=50,domain="ia"}
,q070CDB66014F09BB={lvl=50,domain="ia",type={2,12,1}}
,q1E5460401535C121={lvl=50,domain="ia",type={1,12,2}}
,q21011FB2084CDBA5={lvl=50,domain="ia",type={1,2,12}}
,q320A97275F15CEAC={lvl=50,domain="ia",type={2,12,1}}
,q78D030DA6A8F613F={lvl=50,domain="ia",type={12,1,2}}
,q7BE9754109C50E82={lvl=50,domain="ia",type={1,12,2}}
,q45802C9292DC70CB={lvl=50,type={8,6},giver='U5A7DD26411C9AA2D'}
,q19C06DBC4E453327={lvl=50,domain="ia"}
,q2F4D6DE20DE29774={lvl=50,domain="ia"}
,q3A14F32615C9451D={lvl=50,domain="ia"}
,q6C9EF23D3230655A={lvl=50,domain="ia"}
,q6E51B1B95F56F817={lvl=50,domain="ia"}
,q1E82FE82680231B2={lvl=50,scene="Thalin Tor",domain="ia"}
,q68A255E4145C1D7E={lvl=50, grp=5}
,q0421FAB41C4C9FC0={lvl=50,domain="ia"}
,q1F1163093B4649C0={lvl=50,domain="ia"}
,q3B3C3876735B940F={lvl=50,domain="ia"}
,q54E227737D6465B8={lvl=50,domain="ia"}
,q6E1602793EE8C45A={lvl=50,domain="ia"}
,q70D900B07891C6AD={lvl=50,domain="ia"}
,q045690B34573031A={lvl=50,scene="Ravenna",domain="ia"}
,q077E659A39156E73={lvl=50,scene="Ravenna",domain="ia"}
,q0EA63D272EAB3D2E={lvl=50,scene="Ravenna",domain="ia"}
,q5493CC415786564F={lvl=50,scene="Ravenna",domain="ia"}
,q7D42308436E50FF2={lvl=50,scene="Ravenna",domain="ia"}
,q10844E23569D009E={lvl=50,scene="Ravenna",domain="ia"}
,q18A972C00533D7CB={lvl=50,scene="Ravenna",domain="ia"}
,q3AD4FAED35A36940={lvl=50,scene="Ravenna",domain="ia"}
,q4E6BD0650113451E={lvl=50,scene="Ravenna",domain="ia"}
,q5330558E0B204210={lvl=50,scene="Ravenna",domain="ia"}
,q1E07AA2E26E26AF0={lvl=50,scene="Edgewood",domain="ia"}
,q13BE75FD04F1E735={lvl=50,domain="ia"}
,q1B99025150A18DA2={lvl=50,domain="ia"}
,q2DCE3BBD18A04F7A={lvl=50,domain="ia"}
,q60B341D93D4863FD={lvl=50,domain="ia"}
,q7847F52619DD18E9={lvl=50,domain="ia"}
,q106F823F4B461A5D={lvl=50,domain="ia"}
,q13BE6E4946548191={lvl=50,domain="ia"}
,q1DC25D8F41D0A66A={lvl=50,domain="ia"}
,q20F06DE74EE64AC8={lvl=50,domain="ia"}
,q7444344F4B6BEAA2={lvl=50,domain="ia"}
,q01075A2C6CF073CB={lvl=50,domain="ia"}
,q0EFCB278198AE9B9={lvl=50,domain="ia"}
,q5CB3226638BB7C8E={lvl=50,domain="ia"}
,q6BE0497007256D11={lvl=50,domain="ia"}
,q78FC04207EDF8E40={lvl=50,domain="ia"}
,q095E0126653CBB65={lvl=50,domain="ia"}
,q40B0607B10701B64={lvl=50,domain="pvp",giver='U22C7792F7D4F93BD'}
,q4151D5AC71ED26FB={lvl=50,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,q371FD3D8B4EA12AD={lvl=50,domain="pvp",giver='U4A6802CD01E1D124'}
,q61C2D46185F10917={lvl=50,domain="pvp",giver='U679C15062B0D5DB5'}
,qFE9E0E5862055C47={lvl=50,domain="ia"}
,qFE830EE95FE94A65={lvl=50,domain="ia"}
,qFC07483A74FE0EAE={lvl=50,domain="ia"}
,qFBD858820D4897D6={lvl=50,domain="ia"}
,qFA93202E0D6F846C={lvl=50,domain="ia"}
,qFF97E5902C93866D={lvl=50,domain="ia"}
,qFF2E6E611BC67FF9={lvl=50,domain="ia"}
,qFC3507C56E535987={lvl=50,domain="ia"}
,qFC133CCC7BAA58BC={lvl=50,domain="ia"}
,qFA52E043002F93A2={lvl=50,domain="ia"}
,qFFF7884255C12240={lvl=50,domain="ia"}
,qFD82D7BC777241C8={lvl=50,domain="ia"}
,qFC07A4845834C8D4={lvl=50,domain="ia"}
,qFB4226232908BABC={lvl=50,domain="ia"}
,qFA8786D03DC69784={lvl=50,domain="ia"}
,q66AC802E85EBD18F={lvl=50,type={7},giver='U44ACEE966312699D'}
,qFFBF226313B8F810={lvl=50,domain="ia"}
,qFEBC7A530FC277AE={lvl=50,domain="ia"}
,qFD4A6E3B77BF9DD1={lvl=50,domain="ia"}
,qFC9A42732D48978B={lvl=50,domain="ia"}
,qFBCC9BD118B5C638={lvl=50,domain="ia"}
,q579452346DE0603B={lvl=50,domain="ia"}
,q258C2A6B13E6D30C={lvl=50,domain="ia"}
,q3CB7BFD65509DB9E={lvl=50,domain="ia",type={3},giver='U610B81787268A249'}
,q0D27A9D7B089FD76={lvl=50,domain="ia",giver='U7E08BA5F203A4D01'}
,q649754662E9EFC27={lvl=50,giver='U1918388230C6E124'}
,q2EF9AEA400000000={lvl=50,scene="Endless Watch",type={1}}
,q5BB773010DE4F860={lvl=50,domain="ia"}
,q1DD18B959F2C4B4A={lvl=50,giver='U5291EA397CA594B3'}
,q321C0073D6C55989={lvl=50,giver='U2790C7B143E12487'}
,qFFEC5E4501DD9AB5={lvl=50,domain="ia"}
,qFE710CC2559E7F1A={lvl=50,domain="ia"}
,qFD89B4F239137B9C={lvl=50,domain="ia"}
,qFBC4E3F832D48262={lvl=50,domain="ia"}
,qFB673C0038B8B470={lvl=50,domain="ia"}
,q2E775275DE6D2345={lvl=50,giver='U3DB7F3801020C9BC'}
,q3233B6E5265A576F={lvl=50, grp=3}
,qFCD76EDE61999CFC={lvl=50,scene="Ruins of Tammark",type={6}}
,qFB59EDC1BADC46ED={lvl=50,scene="Kelrath Peninsula",type={10}}
,q0630576800000000={lvl=50,scene="Timar Foothills"}
,qFF22B4C0621861A1={lvl=50,domain="ia"}
,qFE0E084A5C50BA94={lvl=50,domain="ia"}
,qFDF6A2322CAB48FF={lvl=50,domain="ia"}
,qFD42E79C3A7083A2={lvl=50,domain="ia"}
,qFAA451F73989A4E6={lvl=50,domain="ia"}
,qFFD6F9955B0ABB25={lvl=50,domain="ia"}
,qFD6F54D47C6E982A={lvl=50,domain="ia"}
,qFD4335224DEEAAB0={lvl=50,domain="ia"}
,qFCDB25CA4B4BE289={lvl=50,domain="ia"}
,qFC2E5C083D0CA0D3={lvl=50,domain="ia"}
,q17F8441F9F87CEA6={lvl=50,domain="pvp"}
,q1BC1F2774B1A066C={lvl=50,domain="ia"}
,q2F364E820ED70F38={lvl=50,domain="ia"}
,q3791769035FCC6BA={lvl=50,domain="ia"}
,q39BABC377CF60580={lvl=50,domain="ia"}
,q6BE10887287E04CB={lvl=50,domain="ia"}
,q5C975261188C5B9C={lvl=50}
,q5EB3877F6405F1A9={lvl=50}
,q5642FAD5A5672DE5={lvl=50}
,q1678F79399534C0A={lvl=50}
,q576F687E756D15A2={lvl=50}
,q265E605E26AB7172={lvl=50}
,q77C7F65500000000={lvl=50,type={4,3,7}}
,q0B18E5F35C1ADD65={lvl=50,domain="ia"}
,q44763E2D30E46D82={lvl=50,domain="ia"}
,q594646D87FD6D753={lvl=50,domain="ia"}
,q6DDDE72A222F3A19={lvl=50,domain="ia"}
,q79E554D738CED86C={lvl=50,domain="ia"}
,q1359F6D26E31A0D2={lvl=50,domain="ia"}
,q23E161942CF1D932={lvl=50,domain="ia"}
,q2FE8A4FF55528E47={lvl=50,domain="ia"}
,q484916992E078671={lvl=50,domain="ia"}
,q57C97C483C48315F={lvl=50,domain="ia"}
,q0183463DDD6F4682={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q0CCA8071A398D868={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q1727977FBA28E8D6={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q2C8DAEB4ED9EFA9B={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q39440F03BC975C85={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q58023501BDE5EB58={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q69878C63C6B136E1={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q70D89EDC0CBE10EE={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q795375EB939326E1={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q7D05CC0FF910A447={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q17CF2E62B392219A={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q228F6B3A5EC25DF4={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q3529BDCCD9D9A4D6={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q4279EC2B6688B087={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q494619910EFB6950={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q53D860DAA5AB087B={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q727077807E5F5C20={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q157E93C924B60045={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q2ED122996E1A8C5F={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q3582D3E0AAF2898F={lvl=50,domain="guild",giver='U75FBE0CA773819E9'}
,q75BF8FB65336F1C2={lvl=50,domain="ia"}
,q09F24C2F60FDA92B={lvl=50,domain="ia"}
,q01DA07A90BC13676={lvl=50,domain="ia"}
,q13298C776ED6C720={lvl=50,domain="ia"}
,q2BD8471F53129CA0={lvl=50,domain="ia"}
,q7AA56EB90ED50DEA={lvl=50,domain="ia"}
,q7BDB6DE530959300={lvl=50,domain="ia"}
,q1B42D12A71694E6B={lvl=50,domain="ia"}
,q23657C08378FCE02={lvl=50,domain="ia"}
,q5BC395624677AEC2={lvl=50,domain="ia"}
,q7B8421D80ABBC23E={lvl=50,domain="ia"}
,q7EDDBF394C994358={lvl=50,domain="ia"}
,q140798CE2C82FABE={lvl=50,domain="ia"}
,q24E5C57A6A4ABB66={lvl=50,domain="ia"}
,q365D74362B4C09A2={lvl=50,domain="ia"}
,q3A7CD4A068FC0EEB={lvl=50,domain="ia"}
,q4F0193731AFA04AD={lvl=50,domain="ia"}
,q1D771599D3218175={lvl=50,type={4,7,3},giver='U3F5F09A119C7378D'}
,q6ECCAAC17FFFE074={lvl=50,type={7,4,3},giver='U698B63A11B161AF3'}
,q203C33C01C0F296F={lvl=50}
,q35F4831A4C1BA362={lvl=50,domain="ia"}
,q10765254123D11FA={lvl=50,domain="ia"}
,q17969D241330F341={lvl=50,domain="ia"}
,q1FFA1104594424BB={lvl=50,domain="ia"}
,q3D5E52A73E17AAFE={lvl=50,domain="ia"}
,q7FE78CA5157D7370={lvl=50,domain="ia"}
,q34C9AFF260A8BCAE={lvl=50,type={3}}
,q581717B3BF979EDC={lvl=50,type={3}}
,q13EACFEC0EEF2D38={lvl=50,domain="ia"}
,q0CB6BA4F04878D64={lvl=50,scene="Hillcrest",domain="ia"}
,q59CE23EE536893ED={lvl=50,scene="Hillcrest",domain="ia"}
,q6492C6EE7805558E={lvl=50,scene="Hillcrest",domain="ia"}
,q6CC2CC6C0CBE568A={lvl=50,scene="Hillcrest",domain="ia"}
,q70849B0B1F0B61FF={lvl=50,scene="Hillcrest",domain="ia"}
,q0CCF4F595A905D2E={lvl=50,domain="ia"}
,q214BE3276A2B4976={lvl=50,domain="ia"}
,q345079085654E2B1={lvl=50,domain="ia"}
,q5A46DCC04183A3CC={lvl=50,domain="ia"}
,q7F1B34D7204D7093={lvl=50,domain="ia"}
,q0FA76EC938353B64={lvl=50,domain="ia"}
,q1074025C72E7E3D7={lvl=50,domain="ia"}
,q1658BEF44008FE50={lvl=50,domain="ia"}
,q4153DD2860E836CD={lvl=50,domain="ia"}
,q7A8AFF4723234C77={lvl=50,domain="ia"}
,q4EF34DBBA2F6BA37={lvl=50,type={11}}
,qFDF37C5C13B65145={lvl=50,domain="ia"}
,q19EE9AD0DB60025F={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q202BE81EA49F57D5={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q363F1EEC35649814={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q45E13B13CB8CC237={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q474E3684DDBF3568={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q5CCD5249D31D4765={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q5D3658465686F838={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q68F0F677CC3B8043={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q6F4642A41AEB2590={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q70FDBE5C3B76D9BF={lvl=50,domain="guild",giver='U501D431647F9ADB3'}
,q675D6EEB7C8F34DD={lvl=50,scene="Belmont",domain="ia"}
,q06E795A05E2CF104={lvl=50,domain="ia"}
,q1C86E7FD650F6CEC={lvl=50,domain="ia"}
,q26ECE9EB139B7FB4={lvl=50,domain="ia"}
,q28A62D4F3E794DE8={lvl=50,domain="ia"}
,q31BA9AF63009F864={lvl=50,domain="ia"}
,q63F1BA5F3553443B={lvl=50,domain="pvp"}
,q1F36AB04416D446D={lvl=50,domain="ia"}
,q51738E654E01F5C3={lvl=50,domain="ia"}
,q588AC7874F3BA2C6={lvl=50,domain="ia"}
,q5D66B0424D4CBD0A={lvl=50,domain="ia"}
,q744385B21DF0FA01={lvl=50,domain="ia"}
,q051E0D5D468752F1={lvl=50,domain="ia"}
,q2233A0CA2A8F95EA={lvl=50,domain="ia"}
,q2FE3F75D7E8CA296={lvl=50,domain="ia"}
,q5762E09D74FD678E={lvl=50,domain="ia"}
,q7BDA6F692FEFFED5={lvl=50,domain="ia"}
,q0826C82E5D73F607={lvl=50,domain="ia"}
,q0D91EF7A2F257E45={lvl=50,domain="ia"}
,q28DB7A800DBB675A={lvl=50,domain="ia"}
,q3DBB1A784608488F={lvl=50,domain="ia"}
,q3F4115442F18BF12={lvl=50,domain="ia"}
,q432973A678049A37={lvl=50,domain="ia"}
,q47A8C480111D24FA={lvl=50,domain="ia"}
,q50B1AA9529A9972A={lvl=50,domain="ia"}
,q6D5DBE470387C487={lvl=50,domain="ia"}
,q6D80B9C15DCB79F2={lvl=50,domain="ia"}
,q6D8E44FC05F9B056={lvl=50,domain="ia"}
,q755EED0521B16689={lvl=50,domain="ia"}
,q7DA763547977BB73={lvl=50,domain="ia"}
,q13BC1D48205623A4={lvl=50}
,q05197ACE3CC7D482={lvl=50,domain="ia"}
,q127834F6713E0296={lvl=50,domain="ia"}
,q3D04183F477177B1={lvl=50,domain="ia"}
,q4373100159C0B67F={lvl=50,domain="ia"}
,q4D5D82B86D41DD83={lvl=50,domain="ia"}
,q6851040A263A0BCE={lvl=50,domain="ia"}
,q2E2F601B7D0523FE={lvl=50,scene="Hillcrest",domain="ia"}
,q3C0ED27DCB99DE2C={lvl=50,giver='U1BCDA2987E71F25E'}
,q18B0D75C00000000={lvl=50,scene="Harlan's Lament",type={6,4,1}}
,q0767D78C18958FC3={lvl=50,domain="ia"}
,q20D6B1E16C79CBBF={lvl=50,domain="ia"}
,q406A31034D06DD21={lvl=50,domain="ia"}
,q528607141DAFD0FB={lvl=50,domain="ia"}
,q614735B977F42059={lvl=50,domain="ia"}
,q3C86B1A242A354B5={lvl=50,domain="ia"}
,q593B212A72DC66F4={lvl=50,domain="ia"}
,q6BE3E1F5730AD540={lvl=50,domain="ia"}
,q065227332CE02F27={lvl=50,domain="ia"}
,q12C7CDEC097D5CB4={lvl=50,domain="ia"}
,q228C28DB2006C654={lvl=50,domain="ia"}
,q35745D4C5A78D284={lvl=50,domain="ia"}
,q7CAA29490070D624={lvl=50,domain="ia"}
,qFF80EF566078E7B5={lvl=50,domain="ia"}
,qFF1A3CCC651E3486={lvl=50,domain="ia"}
,qFD56486134A30D33={lvl=50,domain="ia"}
,qFC278E32564C852F={lvl=50,domain="ia"}
,qFBA8075E06A119F5={lvl=50,domain="ia"}
,q537202D713CF04B0={lvl=50,domain="ia"}
,q5D96BD8345CF932A={lvl=50,domain="ia"}
,q74DAFB157C4D06B8={lvl=50,domain="ia"}
,q75D893740E5C8B11={lvl=50,domain="ia"}
,q7BCAF6E419E00B9E={lvl=50,domain="ia"}
,q61E5DEAB235C0501={lvl=50,domain="ia"}
,qFF24B12419CA8C5F={lvl=50,domain="ia"}
,qFE4B9829101C4943={lvl=50,domain="ia"}
,qFBD6DBF11AD77B66={lvl=50,domain="ia"}
,qFB8F855D6ACD77D8={lvl=50,domain="ia"}
,qFB39605E61071575={lvl=50,domain="ia"}
,q0B10840600000000={lvl=50, grp=5,type={5,6}}
,q191AAAB200000000={lvl=50,type={4,3}}
,q2BC6776E00000000={lvl=50,type={3,4}}
,q7B2E2BCDC502EE0B={lvl=50,giver='U551AFF263D7BD2A7'}
,q1C032CCB2D1EFED7={lvl=50,domain="ia"}
,q2A23A25D272094AC={lvl=50,domain="ia"}
,q2C98D98E78D25FEC={lvl=50,domain="ia"}
,q3AF81A2F76129832={lvl=50,domain="ia"}
,q762C13C34657C931={lvl=50,domain="ia"}
,q040BCE039879B079={lvl=50,domain="pvp",giver='U22C7792F7D4F93BD'}
,q1B19F9615692CA06={lvl=50,scene="Death's Approach",type={3,1}}
,q1FCE3DB7D44B4E63={lvl=50,scene="Death's Approach",type={1},giver='U186AA7A66208ED93'}
,q38A05700BBA49687={lvl=50}
,q46E63AE0B9DC4D95={lvl=50,giver='U1E3BBF1E6ACC84AB'}
,q2F9C2C5400000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q39D2664100000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q1FDF477D47968697={lvl=50,scene="Kingsgate",type={3,1}}
,q20313DE1621AA4C3={lvl=50,domain="ia"}
,q2E72367901E1D58B={lvl=50,domain="pvp"}
,q54754EF35C5A95B9={lvl=50,domain="pvp"}
,q5C41E3E82F3EB596={lvl=50,domain="pvp"}
,q21206BE574F5A904={lvl=50,scene="Briarcliff",domain="ia"}
,q3B9425A42CBB6656={lvl=50,scene="Briarcliff",domain="ia"}
,q6AA2030A2C77D9D8={lvl=50,scene="Briarcliff",domain="ia"}
,q72E308F33FCFA224={lvl=50,scene="Briarcliff",domain="ia"}
,q74F5BA192118A740={lvl=50,scene="Briarcliff",domain="ia"}
,q0E0DA54B08953F07={lvl=50,scene="Edgewood",domain="ia"}
,q21F7977D5CFADA7E={lvl=50,scene="Edgewood",domain="ia"}
,q365854822E68E803={lvl=50,scene="Edgewood",domain="ia"}
,q6AB7BF7D4E2ED522={lvl=50,scene="Edgewood",domain="ia"}
,q6BA7E28B7CE2EDDA={lvl=50,scene="Briarcliff",domain="ia"}
,q10CFB7EF00000000={lvl=50,type={5,7}}
,q5465F74B00000000={lvl=50,type={5,7}}
,qFEB6150E23C12CF9={lvl=50,domain="ia"}
,qFE4C19952238C8CE={lvl=50,domain="ia"}
,qFD4309427AD46B03={lvl=50,domain="ia"}
,qFC23B38F6F8E0BD3={lvl=50,domain="ia"}
,qFA9E51E73E3EF354={lvl=50,domain="ia"}
,q2D2C63B999EA6FD3={lvl=50,domain="ia",giver='U72A1D06238DE39C5'}
,q7987FBCFBCA20EDA={lvl=50,domain="ia",type={3},giver='U411A5A54415B1E32'}
,q1DDBFE2CDBCBF26F={lvl=50,type={1}}
,qFA939EF2482E4DCC={lvl=50,giver='UFA66786A75CB83CE'}
,qFEA9631E66F3D7ED={lvl=50,domain="ia"}
,qFD67AFD67B092670={lvl=50,domain="ia"}
,qFCE2FD03385CA663={lvl=50,domain="ia"}
,qFC74C01963799AF3={lvl=50,domain="ia"}
,qFA3A9806558F0F06={lvl=50,domain="ia"}
,q1BFDBB4FF9817725={lvl=50,type={3,7,4},giver='U0E671789649863BD'}
,q2060962927CF332F={lvl=50,type={7,3,4},giver='U3927E85B00984D9A'}
,q6744B8F445E91091={lvl=50,type={18,1},giver='U22C3C240360A4988'}
,q07092F557E09CDF6={lvl=50,domain="ia"}
,q0DB1446072EFB817={lvl=50,domain="ia"}
,q106419F34D02F407={lvl=50,domain="ia"}
,q1FD25C4D74925F58={lvl=50,domain="ia"}
,q6095F08C106A5674={lvl=50,domain="ia"}
,q038BFB61AE86F00A={lvl=50,giver='U211BD9DB0055D66F'}
,q10063B085E97500B={lvl=50,giver='U49B2E7444A0F98AD'}
,qFE2A8959CA414118={lvl=50,scene="Ferric Harbor",type={1},giver='UFAD588640A835595'}
,q44F228520454EE57={lvl=50}
,q1CAB7D8FE9EB7AD7={lvl=50, grp=2}
,q68177E78DC0E0D7A={lvl=50,scene="Caer Kholum", grp=2,type={1,3}}
,q7067CA8CC77EF13C={lvl=50,type={1}}
,q0B57527E1EDD59DF={lvl=50,scene="Death's Approach",domain="ia"}
,q0D5EAF0A403ED3BA={lvl=50,scene="Death's Approach",domain="ia"}
,q1556D5E9436A281F={lvl=50,scene="Death's Approach",domain="ia"}
,q20BF145802AED8A9={lvl=50,scene="Caer Kholum",domain="ia"}
,q215CFDB05A27EE6B={lvl=50,scene="Twisted Hollow",domain="ia"}
,q301098E52BE43E32={lvl=50,scene="Caer Kholum",domain="ia"}
,q31579EDB4BF9BC4C={lvl=50,scene="Caer Kholum",domain="ia"}
,q358F84ED7F83D0C6={lvl=50,scene="Twisted Hollow",domain="ia"}
,q3AA0BB5149915143={lvl=50,scene="Twisted Hollow",domain="ia"}
,q561738DD21DF38B3={lvl=50,scene="Caer Kholum",domain="ia"}
,q57B9A916689478A3={lvl=50,scene="Death's Approach",domain="ia"}
,q621468975427D489={lvl=50,scene="Caer Kholum",domain="ia"}
,q6F638C41683FB05A={lvl=50,scene="Twisted Hollow",domain="ia"}
,q70683D7C77DA6847={lvl=50,scene="Death's Approach",domain="ia"}
,q72C3234419A1C0AB={lvl=50,scene="Twisted Hollow",domain="ia"}
,q078EF19951181F30={lvl=50,scene="Crown Hill",domain="ia"}
,q1484EDA913FC3035={lvl=50,scene="Crown Hill",domain="ia"}
,q57389FA12A986C2A={lvl=50,scene="Crown Hill",domain="ia"}
,q71EB5A766B37C41B={lvl=50,scene="Crown Hill",domain="ia"}
,qFE42B11014735E5D={lvl=50,domain="ia"}
,qFCC0489131B0BB63={lvl=50,domain="ia"}
,qFC306BFE218F6452={lvl=50,domain="ia"}
,qFB6F28966628E4E5={lvl=50,domain="ia"}
,qFA434BD539965BFF={lvl=50,domain="ia"}
,q2EB169B04FEA9EFA={lvl=50,domain="ia"}
,q4C8257C63BBFBFC0={lvl=50,domain="ia"}
,q4F5CC5AF6357DADE={lvl=50,domain="ia"}
,q55CD9AA736BF86E2={lvl=50,domain="ia"}
,q5760DE2B00F76589={lvl=50,domain="ia"}
,q0981BF910A644A81={lvl=50,domain="ia"}
,q1B2934E201C4A66E={lvl=50,domain="ia"}
,q2697E8F00878D814={lvl=50,domain="ia"}
,q5DFA4EFB1F64216F={lvl=50,domain="ia"}
,q7E8A7DF135E0648A={lvl=50,domain="ia"}
,qFC2672405D220EFE={lvl=50,domain="ia"}
,q1016193B4D52DE9B={lvl=50,domain="ia"}
,q1363E96624BFB7C7={lvl=50,domain="ia"}
,q45D33F4C6AFD831E={lvl=50,domain="ia"}
,q5520635609DDCC22={lvl=50,domain="ia"}
,q5C02780C201BD00B={lvl=50,domain="ia"}
,q32446089A01D57C8={lvl=50,domain="pvp"}
,q195D26025B46AB38={lvl=50,domain="ia"}
,q48E12F28752C26FD={lvl=50,domain="ia"}
,q4E79A757698159EC={lvl=50,domain="ia"}
,q609FE27C37C40BE5={lvl=50,domain="ia"}
,q7370F5193658625F={lvl=50,domain="ia"}
,q01DF55386D9EEFEC={lvl=50,domain="ia",type={1}}
,q040732F15E7A58F9={lvl=50,domain="ia",type={1}}
,q09B04E4E1D7384FC={lvl=50,domain="ia",type={1}}
,q0A3F60783211B604={lvl=50,domain="ia",type={1}}
,q0B7FCB60035BF447={lvl=50,domain="ia",type={1}}
,q1504C2D91A5BCBB2={lvl=50,domain="ia",type={1}}
,q18F0BBA95527804F={lvl=50,domain="ia",type={1}}
,q199F464E79FACF5D={lvl=50,domain="ia",type={1}}
,q1E9FD64B0CC5805D={lvl=50,domain="ia",type={1}}
,q1F3274E81078A0ED={lvl=50,domain="ia",type={1}}
,q22956C510A352D92={lvl=50,domain="ia",type={1}}
,q255595D102BAB5BE={lvl=50,domain="ia",type={1}}
,q261CBB7F2BAA52F5={lvl=50,domain="ia",type={1}}
,q278DD99174C39C52={lvl=50,domain="ia",type={1}}
,q2A9B18CE69C3F54A={lvl=50,domain="ia",type={1}}
,q2F28A7C20DCF2BFA={lvl=50,domain="ia",type={1}}
,q2FD4352B2A14559D={lvl=50,domain="ia",type={1}}
,q30E4ED8D7AFCC25B={lvl=50,domain="ia",type={1}}
,q31802F022E047A8D={lvl=50,domain="ia",type={1}}
,q387BF9842B3A2C82={lvl=50,domain="ia",type={1}}
,q3BB4C68B357A8349={lvl=50,domain="ia",type={1}}
,q3BC60590157B0961={lvl=50,domain="ia",type={1}}
,q3C23984B518E16FC={lvl=50,domain="ia",type={1}}
,q3F067D740D3D4CE0={lvl=50,domain="ia",type={1}}
,q4090DC6F26F8F711={lvl=50,domain="ia",type={1}}
,q42F5A584561321FD={lvl=50,domain="ia",type={1}}
,q45593731428E95C0={lvl=50,domain="ia",type={1}}
,q465DF5DC5368B223={lvl=50,domain="ia",type={1}}
,q46C4ABB049DD57EC={lvl=50,domain="ia",type={1}}
,q46DB30F337D24A55={lvl=50,domain="ia",type={1}}
,q4A305C701350EBD7={lvl=50,domain="ia",type={1}}
,q4C5CE20B54FA32B4={lvl=50,domain="ia",type={1}}
,q4C90BD0768082F7C={lvl=50,domain="ia",type={1}}
,q5035F13517EA36C7={lvl=50,domain="ia",type={1}}
,q52DF52EF1DB86D6B={lvl=50,domain="ia",type={1}}
,q53E258F957FE65A1={lvl=50,domain="ia",type={1}}
,q57EDC98A287EB315={lvl=50,domain="ia",type={1}}
,q5C533F005EC3CACC={lvl=50,domain="ia",type={1}}
,q5C6B6F98208D2D98={lvl=50,domain="ia",type={1}}
,q5DB80E1C0178F166={lvl=50,domain="ia",type={1}}
,q659316D4479E5CDA={lvl=50,domain="ia",type={1}}
,q65BDD28E7816E18F={lvl=50,domain="ia",type={1}}
,q66B7095006473237={lvl=50,domain="ia",type={1}}
,q6A8BDA303A6727ED={lvl=50,domain="ia",type={1}}
,q6CA11EC323E3694F={lvl=50,domain="ia",type={1}}
,q6D140FB03719541C={lvl=50,domain="ia",type={1}}
,q702E4ADF71153547={lvl=50,domain="ia",type={1}}
,q7443D7226A6FACB7={lvl=50,domain="ia",type={1}}
,q7870763B754ED191={lvl=50,domain="ia",type={1}}
,q7906A2557E862660={lvl=50,domain="ia",type={1}}
,q3D25D137A5594EBF={lvl=50,type={7},giver='U0C449CFB4FC28E1D'}
,q092499FC1EE6C8E0={lvl=50,domain="ia"}
,q1413F4232797C5E5={lvl=50,domain="ia"}
,q268B89630320D69E={lvl=50,domain="ia"}
,q4ED74B45263D92BB={lvl=50,domain="ia"}
,q6AC9A20D08AD074D={lvl=50,domain="ia"}
,q3D6BA68A0B2B04AA={lvl=50, grp=3}
,q226E872100000000={lvl=50,type={6}}
,q666F7A4200000000={lvl=50,type={6}}
,qFFF61E8E00000000={lvl=50,type={2}}
,q20E688D97530C193={lvl=50,scene="Hillsborough",type={1,3}}
,q26B5984B2688618A={lvl=50,domain="ia"}
,q55ACC8085F1EA104={lvl=50,domain="ia"}
,q01513BE03B9E7958={lvl=50,domain="ia"}
,q028B5380229485AA={lvl=50,domain="ia"}
,q0EDE01B3432D24AB={lvl=50,domain="ia"}
,q1FC759264AD0B9A1={lvl=50,domain="ia"}
,q390D174F208599FE={lvl=50,domain="ia"}
,q42D4013C5386C086={lvl=50,domain="ia"}
,q6CBD69F124B781D0={lvl=50,domain="ia"}
,q77F2CF746A6E054C={lvl=50,domain="ia"}
,q7949361B65AE2E4F={lvl=50,domain="ia"}
,q7C61B0D2678B882F={lvl=50,domain="ia"}
,q561AD33A379D579B={lvl=50,type={7},giver='U6D5C3EA55A0DA7E4'}
,q6537E10AEFAFA54C={lvl=50,domain="pvp"}
,q0B56DFEF3367334F={lvl=50,scene="Burlingham",domain="ia"}
,q3C8A4C077798088E={lvl=50,scene="Burlingham",domain="ia"}
,q5B681B79485C46AE={lvl=50,scene="Burlingham",domain="ia"}
,q6849A80E11C067FB={lvl=50,scene="Burlingham",domain="ia"}
,q78A2AE8F276A8445={lvl=50,scene="Burlingham",domain="ia"}
,q1CA678D4A79519B7={lvl=50,type={1}}
,q0DECC0A13C9E1F50={lvl=50,domain="ia",type={1,2,12}}
,q1903BC147623090C={lvl=50,domain="ia",type={12,1,2}}
,q250E20E119D5FFE7={lvl=50,type={7},giver='U61A0B4967F3A3531'}
,q040476CD22926152={lvl=50, grp=5,type={11}}
,q138C620E066E15FA={lvl=50,domain="ia",type={12,2,1}}
,q3E64A19E4BD23BA4={lvl=50,domain="ia",type={2,1,12}}
,q4EAFF55FCFE29E4B={lvl=50,type={5,8}}
,q6E92FC81BC006D1E={lvl=50,type={8,5}}
,qFC77D6D59BBBC952={lvl=50,use={{key='IFF7EE26D5C258B96,143FBB7A9AACCD98,,,,,,', count=1}},giver='UFE38E92276C01C20'}
,q0F108222B13E8612={lvl=50,domain="pvp"}
,qFEFE41011F4B77F6={lvl=50,domain="ia"}
,qFE32EE39377C040F={lvl=50,domain="ia"}
,qFC6D187A1D03889D={lvl=50,domain="ia"}
,qFB4CDD595D6A4441={lvl=50,domain="ia"}
,qFB14265D0154EAF3={lvl=50,domain="ia"}
,q331583C4B7A8E72F={lvl=50,giver='U3DBFA6113B3531C1'}
,qFD5FB4217E4655D9={lvl=50,domain="ia"}
,qFE7EC6E832046BA1={lvl=50,domain="ia"}
,qFE6BF1A60BA26A53={lvl=50,domain="ia"}
,qFC826739329056C1={lvl=50,domain="ia"}
,qFC7A96356BA8F6C7={lvl=50,domain="ia"}
,qFAC6DC4A4F9614AE={lvl=50,domain="ia"}
,qFA72D2706F84A0E3={lvl=50,domain="ia"}
,q58B30A1FA339CB6F={lvl=50,type={1}}
,q5A981F598246C019={lvl=50}
,q01829AC42F9599BE={lvl=50,domain="ia"}
,q18FDA39C4EFDD730={lvl=50,domain="ia"}
,q1F6152141E8B77AD={lvl=50,domain="ia"}
,q379275650C5EAC30={lvl=50,domain="ia"}
,q3E10A575144FC1A7={lvl=50,domain="ia"}
,q4FD293B918642619={lvl=50,domain="ia"}
,q5C03EADC4704E551={lvl=50,domain="ia"}
,q69386EAE131F642C={lvl=50,domain="ia"}
,q69A4EB780810949B={lvl=50,domain="ia"}
,q76A47501395A27F4={lvl=50,domain="ia"}
,q3CB4D41014D3015F={lvl=50,type={1}}
,q02AFD7250CBAD7D6={lvl=50,scene="Thalin Tor",domain="ia"}
,q0C8E3742676EDF34={lvl=50,scene="Thalin Tor",domain="ia"}
,q17AB04C930E63D1E={lvl=50,scene="Thalin Tor",domain="ia"}
,q548786F8298F43B0={lvl=50,scene="Thalin Tor",domain="ia"}
,q71BF4BF964D74A80={lvl=50,scene="Thalin Tor",domain="ia"}
,q05208B36757F77FE={lvl=50,domain="ia"}
,q6547329000000000={lvl=50,type={7}}
,q11C220EA00000000={lvl=50,type={7}}
,q140F54AE00000000={lvl=50,type={15},giver='U6E6900167792B746'}
,q29A95D3A00000000={lvl=50,type={15},giver='U6E6900167792B746'}
,q4BD53CD900000000={lvl=50,type={7}}
,q228B487500000000={lvl=50,type={7}}
,q605B6CB900000000={lvl=50,scene="Shadefallen Towers",type={1,6}}
,qFE10EBED00000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,qFACB91B96111C871={lvl=50,type={1,16}}
,q31E011A300000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q4D8E728F00000000={lvl=50,type={7},giver='U66C7C2A339BB6B4E'}
,q224C191B50BB7B2F={lvl=50,domain="ia"}
,qFE2E9FD127CB2D62={lvl=50,domain="ia"}
,qFCA6138A7EC520CF={lvl=50,domain="ia"}
,qFBD90E0905DD6FC5={lvl=50,domain="ia"}
,qFBB8543A3373E3DA={lvl=50,domain="ia"}
,qFA61CB0E0B124671={lvl=50,domain="ia"}
,q07FEEF289D1CD259={lvl=50,domain="guild"}
,q28A5144CC3ED3231={lvl=50,domain="guild"}
,q3762A3A5D469E59D={lvl=50,domain="guild"}
,q74496D1E01C9D244={lvl=50,type={1}}
,q708B405DD0AF23F2={lvl=50,type={8},giver='U0FCD909B4ABB28A9'}
,q3F69314E420C0850={lvl=50,domain="guild"}
,q5D1EAA270BD78F25={lvl=50,domain="guild"}
,q0EF76E4463D9417C={lvl=50,domain="ia"}
,q11DD23927B4A23BC={lvl=50,domain="ia"}
,q39973B8E14F2CD9A={lvl=50,domain="ia"}
,q5D885AF15966469E={lvl=50,domain="ia"}
,q672DE22A080A796C={lvl=50,domain="ia"}
,q00A2E34C07A5CCBF={lvl=50,domain="ia",type={1}}
,q09487BC472E0A002={lvl=50,domain="ia",type={1}}
,q09ACF9B03DE98FA8={lvl=50,domain="ia",type={1}}
,q15A63F145C7A0163={lvl=50,domain="ia",type={1}}
,q1AA2CF3049860BEF={lvl=50,domain="ia",type={1}}
,q1E0E0EF516D414D2={lvl=50,domain="ia",type={1}}
,q201A015C5ADA375F={lvl=50,domain="ia",type={1}}
,q265B956B59D36E6D={lvl=50,domain="ia",type={1}}
,q27839B464C6CAE86={lvl=50,domain="ia",type={1}}
,q27E17C146166EE38={lvl=50,domain="ia",type={1}}
,q2A4BF5AC4B7516A5={lvl=50,domain="ia",type={1}}
,q3A7A8B5B28E8470E={lvl=50,domain="ia",type={1}}
,q3F34452B35D2803B={lvl=50,domain="ia",type={1}}
,q404350EA448B484A={lvl=50,domain="ia",type={1}}
,q418084C109766D10={lvl=50,domain="ia",type={1}}
,q42F685634C0DF649={lvl=50,domain="ia",type={1}}
,q4BAC486537936A68={lvl=50,domain="ia",type={1}}
,q4C6D67BF06021B8B={lvl=50,domain="ia",type={1}}
,q55573DD45C36C74D={lvl=50,domain="ia",type={1}}
,q56CFCF1233FA049C={lvl=50,domain="ia",type={1}}
,q5BAFBCF34A3CCD46={lvl=50,domain="ia",type={1}}
,q5BC0FAFE67B0CA9B={lvl=50,domain="ia",type={1}}
,q5DB708E8727FE3CA={lvl=50,domain="ia",type={1}}
,q60237316613309D8={lvl=50,domain="ia",type={1}}
,q61D6240460560A1F={lvl=50,domain="ia",type={1}}
,q647D5FA67360CA35={lvl=50,domain="ia",type={1}}
,q68C052C3021CFD64={lvl=50,domain="ia",type={1}}
,q6AC5B0247E0D9AAF={lvl=50,domain="ia",type={1}}
,q6B352AA6050CCD43={lvl=50,domain="ia",type={1}}
,q6C12ACD37930AD53={lvl=50,domain="ia",type={1}}
,q6F830EF3191342A2={lvl=50,domain="ia",type={1}}
,q726C57747B2EF1A3={lvl=50,domain="ia",type={1}}
,q796B00425E6869DF={lvl=50,domain="ia",type={1}}
,q7A9D12B8670AFBDE={lvl=50,domain="ia",type={1}}
,q7E00718941CBF169={lvl=50,domain="ia",type={1}}
,q48431D08E787E0DF={lvl=50,type={1}}
,q5E027DD3DF63F1FE={lvl=50}
,qFB56EF060DD60834={lvl=50,domain="ia"}
,qFF8399BC08AD7D06={lvl=50,domain="ia"}
,qFF51548B7FF65547={lvl=50,domain="ia"}
,qFD24FA6D6CC4FB2C={lvl=50,domain="ia"}
,qFCC00B4B260B0E9C={lvl=50,domain="ia"}
,qFAE7E8D771C54A6B={lvl=50,domain="ia"}
,q5826112E9360B6C2={lvl=50}
,q03D3E64200000000={lvl=50,type={3}}
,q1B4503AF00000000={lvl=50,type={3}}
,q090A0B5333957BAB={lvl=50,type={1,8}}
,q021BA6776184D6A7={lvl=50,domain="ia"}
,q235B4E0B0B7E3ADA={lvl=50,domain="ia"}
,q3E2745A10DDC2A08={lvl=50,domain="ia"}
,q5CD23A132D7E430B={lvl=50,domain="ia"}
,q6E27B1B30F9E2563={lvl=50,domain="ia"}
,q2DADB5DB03F0F218={lvl=50,domain="ia"}
,q2EA74E5C7844B13F={lvl=50,domain="ia"}
,q33B5AD98035CCD0A={lvl=50,domain="ia"}
,q423FD1673C21675B={lvl=50,domain="ia"}
,q2681C02EB84F8B5C={lvl=50,type={7},giver='U6B9DF4A867EC723A'}
,qFAA87346EFDBB38E={lvl=50,giver='UFFEABD063185CEEA'}
,q61CF21FB444EBF5B={lvl=50}
,q40E12DC37A73CAD5={lvl=50}
,q76E7E7EB549FE601={lvl=50}
,q3FA027547BA6DB8B={lvl=50}
,q07768B62C9509C17={lvl=50}
,q57000AA0B6287547={lvl=50,giver='U13550A2B658C008E'}
,q52062BBCD744C290={lvl=50,type={7},giver='U33D92BA26FC7FFB1'}
,q38EB354070FFF657={lvl=50,domain="ia"}
,q4547D8EF73660FA9={lvl=50,domain="ia"}
,q46100081285D6A4C={lvl=50,domain="ia"}
,q634D84272769B8B6={lvl=50,domain="ia"}
,q78EB7435235012F1={lvl=50,domain="ia"}
,qFF5C5E213AA86E12={lvl=50,scene="Sundred Trenches",type={4}}
,q1C60F69BDBC21DA9={lvl=50,giver='U610B81787268A249'}
,q4F314C600DD9B00E={lvl=50,giver='U7B97B3B848CCFD63'}
,qFEF0AF7437EA500E={lvl=50,domain="ia"}
,qFE1774AA6E4AAD78={lvl=50,domain="ia"}
,qFCA930EA32232DF1={lvl=50,domain="ia"}
,qFB04F347312075B1={lvl=50,domain="ia"}
,qFAD9752D6E488F92={lvl=50,domain="ia"}
,q099131420388B82C={lvl=50,domain="ia",type={1}}
,q1D59AAE52E52C6A2={lvl=50,domain="ia",type={1}}
,q1DE23F735E726B0E={lvl=50,domain="ia",type={1}}
,q24AADA715E23D817={lvl=50,domain="ia",type={1}}
,q28A0EFF336602B60={lvl=50,domain="ia",type={1}}
,q29B702ED4920E22A={lvl=50,domain="ia",type={1}}
,q2C7691E92CD45D02={lvl=50,domain="ia",type={1}}
,q2EA694EA7F5CFEFC={lvl=50,domain="ia",type={1}}
,q314A9DAA464F4166={lvl=50,domain="ia",type={1}}
,q347504882062B808={lvl=50,domain="ia",type={1}}
,q377DECC14847EE16={lvl=50,domain="ia",type={1}}
,q40BFE264337D1B24={lvl=50,domain="ia",type={1}}
,q40F3DD1C153922EE={lvl=50,domain="ia",type={1}}
,q455EDA0338F6E9B0={lvl=50,domain="ia",type={1}}
,q49D312FC6670FBE6={lvl=50,domain="ia",type={1}}
,q4AEEDF736E7C1126={lvl=50,domain="ia",type={1}}
,q4D0797671CA283EE={lvl=50,domain="ia",type={1}}
,q4F7DBE474DF5415C={lvl=50,domain="ia",type={1}}
,q5000CAD74A46F85D={lvl=50,domain="ia",type={1}}
,q514F4DC427E5ECB2={lvl=50,domain="ia",type={1}}
,q56C453440DD0CE3C={lvl=50,domain="ia",type={1}}
,q5E48E67C14F4B44B={lvl=50,domain="ia",type={1}}
,q5FA8382E07D630BD={lvl=50,domain="ia",type={1}}
,q605447DE5D4851CF={lvl=50,domain="ia",type={1}}
,q61A5C4344A81FF27={lvl=50,domain="ia",type={1}}
,q6375B55034B6FDF7={lvl=50,domain="ia",type={1}}
,q6621F5381D7726E9={lvl=50,domain="ia",type={1}}
,q6791E3F934F933F0={lvl=50,domain="ia",type={1}}
,q67DC73FA6375B712={lvl=50,domain="ia",type={1}}
,q6AA4399D6600AE6D={lvl=50,domain="ia",type={1}}
,q6B520F6C7814F473={lvl=50,domain="ia",type={1}}
,q6BD9DBE02CF7784F={lvl=50,domain="ia",type={1}}
,q712DFC745EA4DFD4={lvl=50,domain="ia",type={1}}
,q7D90B69C073596EB={lvl=50,domain="ia",type={1}}
,q7FE10397391EED6A={lvl=50,domain="ia",type={1}}
,q00C88A893FE94AEB={lvl=50,scene="Blood Grove",domain="ia"}
,q24719344354DD682={lvl=50,scene="Blood Grove",domain="ia"}
,q274E537D5F6AEBFB={lvl=50,scene="Blood Grove",domain="ia"}
,q5F1108907088A6AE={lvl=50,scene="Blood Grove",domain="ia"}
,q697272CE690433E8={lvl=50,scene="Blood Grove",domain="ia"}
,q638A2466657ACE13={lvl=50,domain="ia"}
,q45E580FB7176D4CE={lvl=50,type={1}}
,q62F80AF09E492A8C={lvl=50, grp=3,type={11},giver='U3436867F2A80DBC8'}
,q2D8C17C7DDD126A9={lvl=50,giver='U6C213E54778E9A67'}
,q4B4AA288A09E428F={lvl=50,giver='U23174C743183A984'}
,qFAC5415AAC1BBE5B={lvl=50,giver='UFB1CE1A85F4EA13C'}
,q65153DB2D85A8182={lvl=50,giver='U2256073C6D19EC5D'}
,q3361572B89A3A9AA={lvl=50, grp=5}
,q6B83BEEF601BEA39={lvl=50,type={1,16,18}}
,q0705311A515E6DB9={lvl=50,domain="ia",type={2}}
,q2D23428B057042BF={lvl=50,domain="ia",type={2}}
,q3529935739C6AFFD={lvl=50,domain="ia",type={2}}
,q3F4916E927A61715={lvl=50,domain="ia",type={2}}
,q4DB402A74CFA15E3={lvl=50,domain="ia",type={2}}
,q4F504B06409FAFEE={lvl=50,domain="ia",type={2}}
,q53967FA930248A2C={lvl=50,domain="ia",type={2}}
,q667693B03D75F6B5={lvl=50,domain="ia",type={2}}
,q7F483B5555142ABC={lvl=50,domain="ia",type={2}}
,q12DD96C0C914DAA0={lvl=50,giver='U13550A2B658C008E'}
,q0E45FDCF12B7F531={lvl=50,scene="Crown Hill",domain="ia"}
,q1338F42A55FC48FC={lvl=50,scene="Burlingham",domain="ia"}
,q23B0AA0B58B5423B={lvl=50,scene="Burlingham",domain="ia"}
,q24917A5377022C18={lvl=50,scene="Crown Hill",domain="ia"}
,q28416966381EAFFA={lvl=50,scene="Burlingham",domain="ia"}
,q2D1836BD1E2E36F9={lvl=50,scene="Burlingham",domain="ia"}
,q30EF0A8222CDCDF7={lvl=50,scene="Hillsborough",domain="ia"}
,q373A627A38730D48={lvl=50,scene="Hillsborough",domain="ia"}
,q3FFCE8717EE06344={lvl=50,scene="Hillsborough",domain="ia"}
,q511FF63E1B16FE9A={lvl=50,scene="Crown Hill",domain="ia"}
,q60ABA89416F1A82A={lvl=50,scene="Burlingham",domain="ia"}
,q68E8381263CF495E={lvl=50,scene="Crown Hill",domain="ia"}
,q6BC308E3555DCCA7={lvl=50,scene="Hillsborough",domain="ia"}
,q6BFD5A4B34129276={lvl=50,scene="Crown Hill",domain="ia"}
,q6C40E12E437D3AED={lvl=50,scene="Hillsborough",domain="ia"}
,q175840022C1CB0E7={lvl=50,giver='U2967EAF729A93EE9'}
,q52B85DE34F5219EE={lvl=50,giver='U2D18504A758B9147'}
,q6107591AC4EEF75E={lvl=50,domain="guild"}
,q780F694D9FCFA525={lvl=50,domain="guild"}
,q092B01DC1C9D8BF7={lvl=50,domain="ia"}
,q0FE9AE77378412FD={lvl=50,domain="ia"}
,q172F3A1E2204C4AE={lvl=50,domain="ia"}
,q1F0EBB8012703894={lvl=50,domain="ia"}
,q29E73FC574CD5F03={lvl=50,domain="ia"}
,q2C0C7EB08656B60E={lvl=50,domain="guild"}
,q5A64F9CDF63F9D62={lvl=50,domain="guild"}
,q0111C9AC7BE12E60={lvl=50,domain="ia",type={2}}
,q0185A5D25155461E={lvl=50,domain="ia",type={2}}
,q02A4A8154A38C09E={lvl=50,domain="ia",type={2}}
,q02E4ECA2699D52BE={lvl=50,domain="ia",type={2}}
,q04DF23102D632613={lvl=50,domain="ia",type={2}}
,q092A10FD4A6E064E={lvl=50,domain="ia",type={2}}
,q0F2EE6F84DA848C7={lvl=50,domain="ia",type={2}}
,q1014FDAD589D79A6={lvl=50,domain="ia",type={2}}
,q222DD37D5D8678ED={lvl=50,domain="ia",type={2}}
,q2416C20D005FDA3F={lvl=50,domain="ia",type={2}}
,q2440DB8B711FC7E5={lvl=50,domain="ia",type={2}}
,q25F8175000F6E5F5={lvl=50,domain="ia",type={2}}
,q269CD03F7A7F8978={lvl=50,domain="ia",type={2}}
,q2823DFD7062611FB={lvl=50,domain="ia",type={2}}
,q2BE69F484BF5D6D4={lvl=50,domain="ia",type={2}}
,q2C95EB483500BA10={lvl=50,domain="ia",type={2}}
,q343A57075D463258={lvl=50,domain="ia",type={2}}
,q351F584A1B3A5864={lvl=50,domain="ia",type={2}}
,q4034CDA712C3C487={lvl=50,domain="ia",type={2}}
,q44909CA2591FA7DB={lvl=50,domain="ia",type={2}}
,q451FDE0435F06C40={lvl=50,domain="ia",type={2}}
,q466367EA1FD8EA45={lvl=50,domain="ia",type={2}}
,q4B93DA994602A80E={lvl=50,domain="ia",type={2}}
,q5AA60F5C02F1041C={lvl=50,domain="ia",type={2}}
,q5F24114874056886={lvl=50,domain="ia",type={2}}
,q602EBA5A052EC2E5={lvl=50,domain="ia",type={2}}
,q611BE9D143F4A3A0={lvl=50,domain="ia",type={2}}
,q638DF56205138557={lvl=50,domain="ia",type={2}}
,q6757DC3E7FA5D188={lvl=50,domain="ia",type={2}}
,q68BD80B33FC0D0C7={lvl=50,domain="ia",type={2}}
,q6C345C67174FA037={lvl=50,domain="ia",type={2}}
,q6FE7852B6881425C={lvl=50,domain="ia",type={2}}
,q7297A26508382EE4={lvl=50,domain="ia",type={2}}
,q7590F7E66834C2B3={lvl=50,domain="ia",type={2}}
,q794508541AFDD55F={lvl=50,domain="ia",type={2}}
,q7CDA6018612CF596={lvl=50,domain="ia",type={2}}
,q7FE1EC774A326869={lvl=50,domain="ia",type={2}}
,q3E420709F6F3EC95={lvl=50,type={1,18,16}}
,q449431D820A65996={lvl=50,domain="ia"}
,q51267AF00FD59000={lvl=50,domain="ia"}
,q3EABDE4F5431A5C8={lvl=50,domain="ia"}
,q424787FD6048DB52={lvl=50,domain="ia"}
,q4C12B3EA0D331DB8={lvl=50,domain="ia"}
,q66A90F6151040462={lvl=50,domain="ia"}
,q7FB73B95166B5169={lvl=50,domain="ia"}
,q17A9190757DB54EA={lvl=50,domain="ia"}
,q3DF38E69610B5BA3={lvl=50,domain="ia"}
,q506108C404117C3C={lvl=50,domain="ia"}
,q593DAD0E5E5CD88D={lvl=50,domain="ia"}
,q76C58F0229D2B364={lvl=50,domain="ia"}
,qFEF0D5306D2E475C={lvl=50,scene="Cirkbo Plains",type={1,3},giver='UFBCBACF11C81994E'}
,q1A8A2854302872E4={lvl=50,domain="ia"}
,q2C4C1DE94F2654F4={lvl=50,domain="ia"}
,q3B56B99723E4CE05={lvl=50,domain="ia"}
,q527CEBC463692585={lvl=50,domain="ia"}
,q6638446105E984F2={lvl=50,domain="ia"}
,qFACB4803395AA7F0={lvl=50,domain="ia"}
,q2509BDBFE73A6672={lvl=50,giver='U3A8B9996451A4D99'}
,q739F111C4F8514DD={lvl=50,domain="ia",type={2}}
,qFABBC4007F59C34D={lvl=50,domain="ia",type={2}}
,q2A5603FF3E36271E={lvl=50,domain="ia"}
,q2C2A8BC10AB39D9B={lvl=50,domain="ia"}
,q317DA78118C5B6FA={lvl=50,domain="ia"}
,q48FE94F2559627BC={lvl=50,domain="ia"}
,q7C2FDDD768C52CEC={lvl=50,domain="ia"}
,q3EB3207FCF0F903F={lvl=50, grp=3,giver='U7B97B3B848CCFD63'}
,q0ACB10BE5EC11346={lvl=50,domain="ia"}
,q1B52F38D5EC11346={lvl=50,domain="ia"}
,q1E9FBFCF5EC11346={lvl=50,domain="ia"}
,q35713E155EC11346={lvl=50,domain="ia"}
,q61E02A655EC11346={lvl=50,domain="ia"}
,q01B4E1941B22BD66={lvl=50,domain="ia",type={2}}
,q0229079161189750={lvl=50,domain="ia",type={2}}
,q0240DF003139A7CE={lvl=50,domain="ia",type={2}}
,q0330177B6CE8DF87={lvl=50,domain="ia",type={2}}
,q03D820760F9293A5={lvl=50,domain="ia",type={2}}
,q05A42C212EDFA55F={lvl=50,domain="ia",type={2}}
,qFDED34D13377CA69={lvl=50,domain="ia",type={2}}
,qFB8CE0C260FF5387={lvl=50,domain="ia",type={2}}
,q0693555B471F7CCF={lvl=50,domain="ia",type={2}}
,q096E596D019A94D1={lvl=50,domain="ia",type={2}}
,q0C1ED7F11AADCEE1={lvl=50,domain="ia",type={2}}
,q0D8353CF3F18908D={lvl=50,domain="ia",type={2}}
,q0DBC7A812F0FC061={lvl=50,domain="ia",type={2}}
,q0E6F9E756DD61284={lvl=50,domain="ia",type={2}}
,q169015FE4F968F29={lvl=50,domain="ia",type={2}}
,q16DEDC202D1EFB7F={lvl=50,domain="ia",type={2}}
,q185D5D8E5678EB89={lvl=50,domain="ia",type={2}}
,q1AC11E9E4B7661A2={lvl=50,domain="ia",type={2}}
,q1B12A5C12958238F={lvl=50,domain="ia",type={2}}
,q2226402D58BD5930={lvl=50,domain="ia",type={2}}
,q2460FEC516C0EC94={lvl=50,domain="ia",type={2}}
,q25A982BE44989C0F={lvl=50,domain="ia",type={2}}
,q2A7C14CC36A3AB92={lvl=50,domain="ia",type={2}}
,q2CF884D30E8E34BA={lvl=50,domain="ia",type={2}}
,q348AE2B619EEBA81={lvl=50,domain="ia",type={2}}
,q3547E4D22A250176={lvl=50,domain="ia",type={2}}
,q36321C416F08CE45={lvl=50,domain="ia",type={2}}
,q37B4CD4415765983={lvl=50,domain="ia",type={2}}
,q39A205DD6CEB32F3={lvl=50,domain="ia",type={2}}
,q3B109E3B3603F73D={lvl=50,domain="ia",type={2}}
,q3C785BAB45F0D113={lvl=50,domain="ia",type={2}}
,q3DF035EA4434DD1A={lvl=50,domain="ia",type={2}}
,q4211F1C32A9C7CEA={lvl=50,domain="ia",type={2}}
,q4561715A5C48E92F={lvl=50,domain="ia",type={2}}
,q49BD65140A6F4808={lvl=50,domain="ia",type={2}}
,q49BEF83605F94D76={lvl=50,domain="ia",type={2}}
,q4C133E20305E5439={lvl=50,domain="ia",type={2}}
,q4DAE185C6914B5C2={lvl=50,domain="ia",type={2}}
,q4EC07C7B30CFC657={lvl=50,domain="ia",type={2}}
,q4EC400F741FF3F2D={lvl=50,domain="ia",type={2}}
,q4EF099EA11E07D13={lvl=50,domain="ia",type={2}}
,q5055F9232779E227={lvl=50,domain="ia",type={2}}
,q594186D273C93566={lvl=50,domain="ia",type={2}}
,q5C4B8B6D3216C563={lvl=50,domain="ia",type={2}}
,q5C7B792230C74B6B={lvl=50,domain="ia",type={2}}
,q5D15C33B530E7FB2={lvl=50,domain="ia",type={2}}
,q64DCA0343AFDC1D3={lvl=50,domain="ia",type={2}}
,q65EBDBE96FE040CB={lvl=50,domain="ia",type={2}}
,q69B7590734A4E51F={lvl=50,domain="ia",type={2}}
,q6B8F68C56DBE8C2D={lvl=50,domain="ia",type={2}}
,q6C4B2EBC2B00E1E1={lvl=50,domain="ia",type={2}}
,q6DE55EAF66846C3B={lvl=50,domain="ia",type={2}}
,q6FACE0FA10B06D6E={lvl=50,domain="ia",type={2}}
,q7011AAE752425F1C={lvl=50,domain="ia",type={2}}
,q77526D254323ABF0={lvl=50,domain="ia",type={2}}
,q7E9F642A019A55B2={lvl=50,domain="ia",type={2}}
,q7F68A9AE14D3F06C={lvl=50,domain="ia",type={2}}
,q10C3DC8431F9F37F={lvl=50,domain="ia"}
,q16FA1CE10E525C12={lvl=50,domain="ia"}
,q45D245E4293C7EBC={lvl=50,domain="ia"}
,q4895EAA43742649D={lvl=50,domain="ia"}
,q74E89590456CB61B={lvl=50,domain="ia"}
,qFD1FE54325EBD5CE={lvl=50,domain="ia"}
,qFCB11D2F36A516D9={lvl=50,domain="ia"}
,q5E5F6B269FB2A564={lvl=50,type={1,16,18}}
,q0EDA9BBBE3F783E0={lvl=50,type={1,18}}
,q3702201FD6274BD3={lvl=50,type={18,1}}
,q4FB19ACA73BF79C4={lvl=50}
,q1E5893B72D34BCC7={lvl=50,domain="ia"}
,q606751D3202ED1B7={lvl=50,domain="ia"}
,q7162BF2779DDCDFD={lvl=50,domain="ia"}
,q2C7001362033BC95={lvl=50,domain="ia"}
,q0E369B147E5085C8={lvl=50,domain="ia"}
,q2F3B59D02A6A094A={lvl=50,domain="ia"}
,q1FD68FB169567046={lvl=50,domain="ia"}
,q587F7A61440FD970={lvl=50,domain="ia"}
,q6E96AD6927260BB9={lvl=50,domain="ia"}
,q69FA9745424DC36F={lvl=50,domain="ia"}
,q6F1F4AB87A967EA8={lvl=50,domain="ia"}
,q1F01EE301F5EDF19={lvl=50,domain="ia"}
,q1AF72DB26DEB317C={lvl=50,domain="ia"}
,q1C10DCA44F8150C9={lvl=50,domain="ia"}
,q666C09FD0C6EDFB4={lvl=50,domain="ia"}
,q379E6B734D4D5826={lvl=50,scene="Caer Thalos",domain="ia"}
,q3F1C0224427D3D64={lvl=50,scene="Caer Thalos",domain="ia"}
,q6DAF9D570C555BA6={lvl=50,scene="Caer Thalos",domain="ia"}
,q6E790B4E0E395409={lvl=50,scene="Caer Thalos",domain="ia"}
,q70F0F3D143B345C6={lvl=50,scene="Caer Thalos",domain="ia"}
,q7CAB54C8A99E11FB={lvl=50}
,q69FCCF7626AE37B3={lvl=50,domain="ia"}
,q1796C88D9FCF65E5={lvl=50,domain="pvp",type={8}}
,q2AED68CCB808174B={lvl=50,domain="pvp",type={8}}
,qFF06606FC76DA340={lvl=50,scene="Ruins of Tammark"}
,q104646AD582F6C00={lvl=50}
,q50C442E8CD12817F={lvl=50}
,qFF1FD19541EE883B={lvl=50,domain="ia"}
,qFC35D790708252AE={lvl=50,domain="ia"}
,qFBC0554959EFA85F={lvl=50,domain="ia"}
,qFA9E66D43DBE6710={lvl=50,domain="ia"}
,qFA6BDD7F4019D18D={lvl=50,domain="ia"}
,q1B190A1D3B7C35AB={lvl=50,domain="ia",type={12,2,1}}
,q69AB895C0D6E7F43={lvl=50,domain="ia",type={12,1,2}}
,q04639E090462AB72={lvl=50,scene="Caer Thalos",domain="ia"}
,q4B4F0051466D628C={lvl=50,scene="Caer Thalos",domain="ia"}
,q4DAE2A9D0AF93EDE={lvl=50,scene="Caer Thalos",domain="ia"}
,q56CC6B985EA916FF={lvl=50,scene="Caer Thalos",domain="ia"}
,q727BFB4D587433D6={lvl=50,scene="Caer Thalos",domain="ia"}
,q604D9BF0D6E7E847={lvl=50}
,q081E0AAEB0817732={lvl=50,type={1}}
,q79BC8DEA97D69CC6={lvl=50,type={1,16,18}}
,qFC04D6DDD11CA560={lvl=50,giver='UFD6526674CFB89F7'}
,q1B33E3C94D4015E4={lvl=50,domain="pvp"}
,q7C1ED727BCE8E394={lvl=50,domain="pvp"}
,q00A03600EA2DADB4={lvl=50,domain="pvp"}
,q0EE02DF10D1C14E9={lvl=50,scene="Death's Approach",domain="ia"}
,q3F6E3F4A410D3B1A={lvl=50,scene="Death's Approach",domain="ia"}
,q4607D291497D4763={lvl=50,scene="Death's Approach",domain="ia"}
,q4DDBFCAD5B703522={lvl=50,scene="Death's Approach",domain="ia"}
,q6035D4047C8D6871={lvl=50,scene="Death's Approach",domain="ia"}
,q1EF77E2300000000={lvl=50,giver='U26BA854F50B8CBEF'}
,q6831979C00000000={lvl=50,giver='U693EFBF844DC25E1'}
,q0530F545EA30F3F3={lvl=50,giver='U525E7E3B7FE09361'}
,q7E54FCD900000000={lvl=50,type={3,7}}
,q15B9A79400000000={lvl=50}
,q2499FC5200000000={lvl=50}
,q32ADFC15F3B722D1={lvl=50,giver='U27D677941EA6DA74'}
,q3D20026D72A95359={lvl=50,giver='U5291EA3521C2A17E'}
,q63A8181907511753={lvl=50,giver='U752B759E24584354'}
,q2E1432C09EDB64A1={lvl=50,type={1}}
,q1138E79A79929FCF={lvl=50,giver='U2256073C6D19EC5D'}
,q2DF70646D86D241C={lvl=50}
,q5BF9B9000AC7639B={lvl=50}
,q01B8995A656B4249={lvl=50,domain="ia"}
,q2614C04615632AE0={lvl=50,domain="ia"}
,q4B088C220F4332AA={lvl=50,domain="ia"}
,q4FA8AECF4D663B4B={lvl=50,domain="ia"}
,q6976254068D99CEB={lvl=50,domain="ia"}
,q2E94BCDB52351DE3={lvl=50,domain="ia"}
,q35F77AD80AD0782D={lvl=50,domain="ia"}
,q3D862E7E3898D588={lvl=50,domain="ia"}
,q4893B0713439F1E6={lvl=50,domain="ia"}
,q6F4ECE99543904C6={lvl=50,domain="ia"}
,q0497F5D700000000={lvl=50,type={7}}
,q0A377DCD2C6B060E={lvl=50,domain="ia",type={2}}
,q0A5CAC527B1D33AD={lvl=50,domain="ia",type={2}}
,q1AFE694550A28E1D={lvl=50,domain="ia",type={2}}
,q2711065C613D72F7={lvl=50,domain="ia",type={2}}
,q29538D4F557D29D6={lvl=50,domain="ia",type={2}}
,q3CA9D0BA113E7451={lvl=50,domain="ia",type={2}}
,q4358ED8C5BD52D21={lvl=50,domain="ia",type={2}}
,q51E738527ABD14A8={lvl=50,domain="ia",type={2}}
,q614AA0122A4E43BA={lvl=50,domain="ia",type={2}}
,q66AB0D1D12CA0AE2={lvl=50,domain="ia",type={2}}
,q6F6F853C63CE6C2B={lvl=50,domain="ia"}
,q179C834B0EAA9F82={lvl=50,domain="ia"}
,q6F53CF9977AF380F={lvl=50,domain="ia"}
,q708B495B28F731A1={lvl=50,domain="ia"}
,q6CEDD00A29443489={lvl=50,domain="ia"}
,q6525129B413DBA7D={lvl=50,domain="ia"}
,q5F8C655A0EFA1B73={lvl=50,domain="ia"}
,q08DE1AD27200FA7A={lvl=50,domain="ia"}
,q574A20CF25E9BE63={lvl=50,domain="ia"}
,q5110C9582A72FB8B={lvl=50,domain="ia"}
,q2D7CD8703408575E={lvl=50,domain="ia"}
,q7E275A4423C2B2F8={lvl=50,domain="ia"}
,q39CE02045B1D6957={lvl=50,domain="ia"}
,q2F19CEDBC3E70AFA={lvl=50,domain="pvp"}
,q0E3DB24565B4A309={lvl=50,domain="ia"}
,q1F89F4936F0B74E7={lvl=50,domain="ia"}
,q38BE6A3859C8697F={lvl=50,domain="ia"}
,q45EA7DA04BF221C5={lvl=50,domain="ia"}
,q6F5AF74A4F4CEA06={lvl=50,domain="ia"}
,q1D4E6DBE0A384E22={lvl=50,domain="ia"}
,q2AD4B3DA5C83D087={lvl=50,domain="ia"}
,q44C670C62EA32FF6={lvl=50,domain="ia"}
,q454876C66E05AF9E={lvl=50,domain="ia"}
,q5A76124E442BEE78={lvl=50,domain="ia"}
,q355FA5F9277A282F={lvl=50, grp=5,type={11}}
,q1EC707846C2E2AD7={lvl=50,domain="pvp"}
,q012229C36E109977={lvl=50,scene="Twisted Hollow",domain="ia"}
,q1BCCA1507E674A7E={lvl=50,scene="Twisted Hollow",domain="ia"}
,q473B47093A25D7F0={lvl=50,scene="Twisted Hollow",domain="ia"}
,q75B540F4337DB257={lvl=50,scene="Twisted Hollow",domain="ia"}
,q785788D27E306A64={lvl=50,scene="Twisted Hollow",domain="ia"}
,q39ECFB1B7AA2B5CD={lvl=50}
,q498D73A8237F6EB3={lvl=50}
,q4EC3E9543F913167={lvl=50,giver='U33FA16E91969D019'}
,qFE0C0BDD023F534A={lvl=50,domain="ia"}
,qFDD09A336C66F7D1={lvl=50,domain="ia"}
,qFD7FB4E1165BF474={lvl=50,domain="ia"}
,qFC11E8E22444F11A={lvl=50,domain="ia"}
,qFB2974BD7D60D241={lvl=50,domain="ia"}
,qFDF59487283381E1={lvl=50,domain="ia"}
,q1F03AE6BA0B274DA={lvl=50,type={1}}
,q6D5E76AC12AAD11A={lvl=50,type={1}}
,q56D0BCF70E279E76={lvl=50,type={1,8}}
,q1B650A014A62C478={lvl=50,domain="ia"}
,q2132FC6A55787488={lvl=50,domain="ia"}
,q4DEA4CF576121B0E={lvl=50,domain="ia"}
,q76EF70EF2E3C4FC8={lvl=50,domain="ia"}
,q7EE903D2789D4EC7={lvl=50,domain="ia"}
,q1C28A4BADC3E6100={lvl=50,use={{key='I014E2813B8656D15,352055B6217B2181,,,,,,', count=1}},giver='U598133FF370CE092'}
,q69D2311B34F18A53={lvl=50}
,q092782C773C0DFF0={lvl=50,domain="ia"}
,q117271794F634D7C={lvl=50,domain="ia"}
,q399B6933093E6C16={lvl=50,domain="ia"}
,q4C1D5E7032131A53={lvl=50,domain="ia"}
,q651E6AC52238C001={lvl=50,domain="ia"}
,q00DED8EB1CC53397={lvl=50,domain="ia"}
,q02D373CB6D239F71={lvl=50,domain="ia"}
,q048B0C8B2438521E={lvl=50,domain="ia"}
,q049B7FE91459B78D={lvl=50,domain="ia"}
,q14325F59154B768A={lvl=50,domain="ia"}
,q1457673F1DB75DD9={lvl=50,domain="ia"}
,q1549A5281B40B29E={lvl=50,domain="ia"}
,q15AB41FF5EA81397={lvl=50,domain="ia"}
,q232C701A54EAD69B={lvl=50,domain="ia"}
,q26BE0DF814B1DB2A={lvl=50,domain="ia"}
,q2D06752138448EB5={lvl=50,domain="ia"}
,q3356E1681CA3D7D3={lvl=50,domain="ia"}
,q34F5E998440826C4={lvl=50,domain="ia"}
,q3CB370103D9561E8={lvl=50,domain="ia"}
,q4B53DACC0A52E68B={lvl=50,domain="ia"}
,q4DC7310E22BF7DA9={lvl=50,domain="ia"}
,q4EC67C6B55ED564E={lvl=50,domain="ia"}
,q6482582B06BA9E37={lvl=50,domain="ia"}
,q677EE6B346C153EA={lvl=50,domain="ia"}
,q6EE3338D18D45526={lvl=50,domain="ia"}
,q02151A33554F60B7={lvl=50,domain="ia"}
,q0A01F36D613E6E23={lvl=50,domain="ia"}
,q0E29DCEB3075FE4E={lvl=50,domain="ia"}
,q1BFBDCBD6A2DE5E4={lvl=50,domain="ia"}
,q3275E9B3511F9152={lvl=50,domain="ia"}
,q38DCA1DC7ED74AB8={lvl=50,domain="ia"}
,q399CDB8B4340C825={lvl=50,domain="ia"}
,q4566EA8014FBE008={lvl=50,domain="ia"}
,q4856C1A01FA1CFA0={lvl=50,domain="ia"}
,q50F688A60BEE04CD={lvl=50,domain="ia"}
,q548CAA7D75E73D9D={lvl=50,domain="ia"}
,q5B96D3A7670B18E6={lvl=50,domain="ia"}
,q6C77C61B0DDD2573={lvl=50,domain="ia"}
,q7D356E825B82CFBA={lvl=50,domain="ia"}
,q7FE2C9F972E688D8={lvl=50,domain="ia"}
,q0D63B33D7CB49B91={lvl=50,scene="Crown Hill",domain="ia"}
,q19C168C81D0874FE={lvl=50,scene="Crown Hill",domain="ia"}
,q1C893C2D4A086E81={lvl=50,scene="Crown Hill",domain="ia"}
,q31902A644D67C61F={lvl=50,scene="Crown Hill",domain="ia"}
,q753206C24F625416={lvl=50,scene="Crown Hill",domain="ia"}
,q3495BBA58C4EADC1={lvl=50,giver='U7B97B3B848CCFD63'}
,q214AC2D3EB367F66={lvl=50,giver='U21DFFC1E04D6998E'}
,q24A332E22DE7C75D={lvl=50,scene="Blood Grove",domain="ia"}
,q0C3C9EDE6CDF97BF={lvl=50,domain="ia"}
,q1C7855CA73629A59={lvl=50,domain="ia"}
,q21648F7A0189C5AC={lvl=50,domain="ia"}
,q3B1C58323D015DE0={lvl=50,domain="ia"}
,q3EB11B0328F06441={lvl=50,domain="ia"}
,q5025E8D90F4C9903={lvl=50,domain="ia"}
,q528AE8951B5EA2C1={lvl=50,domain="ia"}
,q6785A1A7759EC714={lvl=50,domain="ia"}
,q6AE16E212A0D0645={lvl=50,domain="ia"}
,q7B479B766256C026={lvl=50,domain="ia"}
,q15AA8DD092D56143={lvl=50,type={4},giver='U11AFB5F042C37BCD'}
,q6D18E40E5F6F4311={lvl=50,type={4},giver='U377FC3B56E6C575F'}
,q042BEF4B3B491CB0={lvl=50,domain="ia"}
,q2304148C51619357={lvl=50,domain="ia"}
,q24EF020A7A3171CB={lvl=50,domain="ia"}
,q3A42623F2BB97A20={lvl=50,domain="ia"}
,q5802DFD77F7B7750={lvl=50,domain="ia"}
,qFE107097729ED861={lvl=51,type={3},giver='UFA26D6032C9C7B95'}
,qFBF5DE60D74AA58A={lvl=51,giver='UFE49276C658F9747'}
,qFB6770788514AC7E={lvl=51,scene="Agrippa Rainforest",type={4}}
,qFA14771F9223F5E3={lvl=51,giver='UFE49276C658F9747'}
,qFA4B26CEC08B48B2={lvl=51,scene="Hiberna Rainforest",type={10}}
,qFA2B8138F48FABEE={lvl=51,giver='UFE38E92276C01C20'}
,qFAD14E2B841B954A={lvl=51,use={{key='IFAC41847953839D6,1D1A105F641E940C,,,,,,', count=1}},giver='UFE49276C658F9747'}
,q617EAC2D2E249C8C={lvl=51}
,qFED20304C63E00FC={lvl=51,scene="Aurentine Palace",type={4}}
,qFD1E10B9E5684826={lvl=51,scene="Kelrath Peninsula",use={{key='IFBA0BAA384015A36,EA269F95B346DB7D,,,,,,', count=8}},type={10}}
,qFF673329A76E58C6={lvl=51,giver='UFE38E92276C01C20'}
,qFF0DC671745A8A48={lvl=51,giver='UFE38E92276C01C20'}
,qFCAACDDCD1266572={lvl=51,scene="Glacio Mountains",type={6}}
,q07FD6AC20C2C42D9={lvl=51,giver='UFC17DEFD3DADFC72'}
,qFDDB77DBBDE13273={lvl=51}
,qFEE3A28454087851={lvl=51,scene="Thunder Hills",giver='UFEE861F62E20608D'}
,q114E42887A772ACB={lvl=51,domain="ia"}
,q1891180A46A68965={lvl=51,domain="ia"}
,q1BDB0B4538BA8C99={lvl=51,domain="ia"}
,q38D708C57F59F8BF={lvl=51,domain="ia"}
,q3C06A44C4CE45E98={lvl=51,domain="ia"}
,q4D80DB730840F416={lvl=51,domain="ia"}
,q5333F76B280E63B5={lvl=51,domain="ia"}
,q592ED6A35A29041C={lvl=51,domain="ia"}
,q5CE6C0557EB27BBB={lvl=51,domain="ia"}
,q63B3C57534D51B24={lvl=51,domain="ia"}
,q67F3CFE0072D5B46={lvl=51,domain="ia"}
,q747BCD4F133E4771={lvl=51,domain="ia"}
,q28F29F3FCF872D71={lvl=51,domain="guild"}
,qFF5D96822A135ED4={lvl=51,giver='UFE38E92276C01C20'}
,qFCC16AA9A8E5F963={lvl=51,scene="Anima Loci",giver='UFE38E92276C01C20'}
,qFB2A6386EFE49D69={lvl=51,scene="Mephitis Bog",type={10},giver='UFBA36B517C1ECDBA'}
,qFAE46D8FE2A526D8={lvl=51,scene="Anima Loci",giver='UFD690A5F3B1A597C'}
,qFFD69C80FBE3D450={lvl=51,scene="Quarry of the Architects",type={4}}
,qFABA6B103E93D7EA={lvl=51,scene="Edgestone Ridge",use={{key='I0EFF8DC0C57B9B67,1A3B78888EE5DBE7,,,,,,', count=1}},type={2},giver='UFEE19B8E347ABC91'}
,qFC53608448FF6285={lvl=51,scene="Mephitis Bog",type={10}}
,q19D836D7B07723F0={lvl=51,domain="guild"}
,qFC0CE821DDADACE6={lvl=51,scene="Scoria Expanse",giver='UFE38E92276C01C20'}
,qFC1918DF187B5894={lvl=51,scene="Thunder Hills",type={6}}
,qFF10AD3FC4BD8D00={lvl=51,scene="Cliffside Vale",type={4}}
,qFB24A1025E31C990={lvl=51,scene="Hiberna Rainforest",type={4}}
,q46CE345C51626B48={lvl=51,type={17}}
,q38D76B4FAC3088C0={lvl=51,type={17}}
,q64A28E91DCFFF87F={lvl=51,type={5}}
,qFB0E63D084137C63={lvl=51,scene="Glacio Mountains",type={9}}
,qFC652A921E20EABF={lvl=51,scene="Agrippa Rainforest",type={9}}
,qFD715A54FC016B4A={lvl=51,scene="Cliffside Vale",type={9}}
,qFD19B92B409E0E25={lvl=51,scene="Hiberna Rainforest",type={9}}
,qFC82B6200E8DBB01={lvl=51,scene="Agrippa Rainforest",type={9}}
,qFCE2FDEDCCDEB0CC={lvl=51,scene="Agrippa Rainforest",type={9}}
,qFD0AB4CD9B379607={lvl=51,scene="Hiberna Rainforest",type={9}}
,qFF7887CC8A7733A5={lvl=51,scene="Agrippa Rainforest",type={9}}
,qFC9D870F54007751={lvl=51,scene="Thunder Hills",type={9}}
,qFA154909ABEE4E56={lvl=51,scene="Agrippa Rainforest",type={9}}
,qFAE8CE4975B5B2CB={lvl=51,scene="Aurora Maelstrom",type={9}}
,qFB25404178FBD493={lvl=51,scene="Scoria Expanse",type={9}}
,qFADC513AAAB0BCEA={lvl=51,scene="Anima Loci",type={9}}
,qFC81191FC901D0FA={lvl=51,scene="Aurora Maelstrom",type={9}}
,qFCBFDBB13EA9EBF4={lvl=51,scene="Quarry of the Architects",type={9}}
,qFAFF052F9096F258={lvl=51,scene="Aurentine Palace",type={9}}
,qFA92642682DBBAB9={lvl=51,scene="Edgestone Ridge",giver='UFEF3F66B3A98BAB6'}
,q171ACAB4B09E649D={lvl=51}
,qFCFA82B4A38094BE={lvl=51}
,qFF148F26C7BC9211={lvl=51,scene="Cambion Loci",giver='UFEF3F66B3A98BAB6'}
,qFD783388537660BD={lvl=51,giver='UFC7C475B62903DE5'}
,qFE8EA329E8EF17BC={lvl=51,scene="Tuldio Retreat",domain="ia",giver='UFDA93B691168B97B'}
,qFC73EB0569055CBE={lvl=51,scene="Agrippa Rainforest",type={10}}
,qFD953CC3B72AD34A={lvl=51,giver='UFE38E92276C01C20'}
,qFA2FB4B700000000={lvl=51,scene="Fort Mazamar",type={3}}
,qFF3903CAEBDFD883={lvl=51,giver='UFC7C475B62903DE5'}
,qFEA06C41C1B6AA2D={lvl=51,scene="Aurentine Palace",type={6},giver='UFCD2DA32011A8B3C'}
,qFF901BAAE7C29389={lvl=51,scene="Aurora Maelstrom",type={6}}
,qFDE7DB46CD806AF5={lvl=51,scene="Cliffside Vale",use={{key='IFB6253E33458CC97,13F7EF3D8D095749,,,,,,', count=8}},type={10,4},giver='UFA6AC7426C4FC5A7'}
,q6CE40B3BBF629C24={lvl=52,type={3}}
,q5260C39457F44DDD={lvl=52,type={3}}
,q73D8A60A95793DD9={lvl=52,type={3}}
,q431D512BE897E9E7={lvl=52,type={3}}
,q51FA9C38B371B8C8={lvl=52,giver='U69688D4C1A80F5D1'}
,qFF7129B8661873CF={lvl=52,scene="Public Market",type={6}}
,q773F55D913B9DF53={lvl=52,giver='U69688D4C1A80F5D1'}
,q6B040FCFDFD2E770={lvl=52}
,q4A8B1FDD5E5EE802={lvl=52,giver='U4D98D79461F238D0'}
,qFCA7C280DB230ECB={lvl=52,type={3},giver='UFBA36B517C1ECDBA'}
,q40F51162FB4EB292={lvl=52,giver='U1A4F52675EB297A5'}
,qFC4203E28CFC17FA={lvl=52,type={3},giver='UFCD2DA32011A8B3C'}
,q03A564B436B072E1={lvl=52,giver='U24A0A9345B8B38C9'}
,q50A718F6ABBA5800={lvl=52,giver='U43D18D2D629E80CF'}
,q58956F00287A45E6={lvl=52,giver='U0CBC1D597985D288'}
,qFF36E00033B79171={lvl=52,type={3},giver='UFEF3F66B3A98BAB6'}
,q79C48B79CB4615A6={lvl=52,giver='U002B8E313866FC96'}
,qFF3F29668F1DF3A7={lvl=52,type={3},giver='UFEE19B8E347ABC91'}
,qFBE49536A8FE91F5={lvl=52,type={3},giver='UFAD588640A835595'}
,q1F4F16CADA54DDC3={lvl=52,giver='U025B6D1A0E81B557'}
,q1C331B9C7A675ADD={lvl=52,giver='U0A04226F5B999409'}
,qFB3ADFF087C7EA2A={lvl=52,type={3},giver='UFF4B181F3EAFA331'}
,q78EDD318BB7EF390={lvl=52,giver='U1B73E6D638BC76E0'}
,q528CC436A07E2E04={lvl=52,giver='U4572B24C7E5CEFC8'}
,q7BC2659FA5F15529={lvl=52,giver='U5384D9673C3D2FEE'}
,q4831694DF80C04E8={lvl=52,giver='U35532DE72D877D88'}
,q17FCB6005FE34A5B={lvl=52,giver='U158658D50429F87F'}
,qFD89DE44D73EC107={lvl=52,scene="Citizen's Library",type={4}}
,q339625E2495D602C={lvl=52,giver='U69688D4C1A80F5D1'}
,q503C0132C07E062E={lvl=52,giver='U2ABFD3EA33804676'}
,qFFB85DFAAE20C394={lvl=52,scene="Public Market",type={10},giver='UFF71A89E426183CC'}
,q1F21F664E889E880={lvl=52,giver='UFB9E341D5B3D5E11'}
,q12058E06E5025100={lvl=52}
,q6DD9C6767EC9EF32={lvl=52,giver='U539A360B40C9DD34'}
,q5A40786488748BD3={lvl=52}
,q3CAF618C42682777={lvl=52}
,q01FBA69FCD0826D9={lvl=52,giver='U5B32F98C02D8EB6F'}
,q0A3027D0A17F3241={lvl=52,giver='U190C06A93E30B7CB'}
,q0546F6194486C6B1={lvl=52,type={4}}
,q24752DC5A873E6A8={lvl=52,type={4}}
,q4BF9AD8DA5F6DEC2={lvl=52,craft={{key='I188CDDFB62A2F32C,D27F98EE24DF46BD,,,,,,', count=4}},type={25}}
,q6B63594F1D25DCA1={lvl=52,craft={{key='I188CDDFB62A2F32C,D27F98EE24DF46BD,,,,,,', count=4}},type={25}}
,q0E5298B153D06F1A={lvl=52,craft={{key='I2C28292C8D84A4C0,02964BEEBDCE909E,,,,,,', count=4}},type={25}}
,q6BF24C22E25AD96F={lvl=52,craft={{key='I2C28292C8D84A4C0,02964BEEBDCE909E,,,,,,', count=4}},type={25}}
,q060E5DE0CE81F40E={lvl=52,craft={{key='I7FC7039CEE23C173,D101556F7A172EF0,,,,,,', count=4}},type={25}}
,q59AAA88465B383FD={lvl=52,craft={{key='I7FC7039CEE23C173,D101556F7A172EF0,,,,,,', count=4}},type={25}}
,q2479FF52B305DE9B={lvl=52,craft={{key='I279CE4C9E2E305EE,30C45588A728150D,,,,,,', count=4}},type={25}}
,q54767D5EEE713C38={lvl=52,craft={{key='I279CE4C9E2E305EE,30C45588A728150D,,,,,,', count=4}},type={25}}
,q2C6C8B10B526BB03={lvl=52,craft={{key='I1F57BD8E51302959,1B041D6D577A9D7D,,,,,,', count=4}},type={25}}
,q5ACCC97B59A8480D={lvl=52,craft={{key='I1F57BD8E51302959,1B041D6D577A9D7D,,,,,,', count=4}},type={25}}
,q55C55DC8C01424B6={lvl=52,type={4}}
,q31223B59B4ED69C9={lvl=52,type={4}}
,q7928F7DF0002E46C={lvl=52,type={4}}
,q77036124934C399B={lvl=52,type={4}}
,q6EE7C62E38B23BFC={lvl=52,type={4}}
,q6DEC7327D9ECCCD2={lvl=52,type={4}}
,q63988DC99467EDF4={lvl=52,type={4}}
,q11D0B254D232090A={lvl=52,type={4}}
,q5418483A7B6076A2={lvl=52,type={4}}
,q1FBF73965729807C={lvl=52,type={4}}
,q690D5C46CA7470D5={lvl=52,type={4}}
,q783B7275AA5C96DC={lvl=52,type={4}}
,q3FB0E485ED7B75BC={lvl=52,type={4}}
,q721244B7DB0EF048={lvl=52,type={4}}
,q3B3C813F8E168442={lvl=52,type={4}}
,q4D0E1E1F687E2F7A={lvl=52,type={4}}
,q5F5FEE548B4395ED={lvl=52,craft={{key='I76BF97BBDEDA85BE,FC5481E370A3D116,,,,,,', count=4}},type={25}}
,q7ABEEBAFC197F3E9={lvl=52,craft={{key='I76BF97BBDEDA85BE,FC5481E370A3D116,,,,,,', count=4}},type={25}}
,q278D000D8CEB9BC0={lvl=52,craft={{key='I27A2898B79FC968D,490244AC91551ECE,,,,,,', count=4}},type={25}}
,q7AAE61F5049FC594={lvl=52,craft={{key='I27A2898B79FC968D,490244AC91551ECE,,,,,,', count=4}},type={25}}
,q4913991392B9D922={lvl=52,craft={{key='I7FC7039E8305E403,1E5C81BF200A76E6,,,,,,', count=4}},type={25}}
,q721CDC20DF0F81B6={lvl=52,craft={{key='I7FC7039E8305E403,1E5C81BF200A76E6,,,,,,', count=4}},type={25}}
,q3EFB4E0EE187ACA5={lvl=52,craft={{key='I2C28292E54903470,15BDDCA977286D1A,,,,,,', count=4}},type={25}}
,q560F072C6CA61D33={lvl=52,craft={{key='I2C28292E54903470,15BDDCA977286D1A,,,,,,', count=4}},type={25}}
,q691D2BF069F06DF4={lvl=52,craft={{key='I188CDDFC2DDC4FE5,B041C2D78CDD7C98,,,,,,', count=4}},type={25}}
,q7461C42085417FC4={lvl=52,craft={{key='I188CDDFC2DDC4FE5,B041C2D78CDD7C98,,,,,,', count=4}},type={25}}
,q4CA651B0C9B6D98D={lvl=52,craft={{key='I64D98F5F756925E6,F4440F60DC40E2A3,,,,,,', count=1},{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=9}},type={4}}
,q541BA5769CD47106={lvl=52,craft={{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=9},{key='I64D98F5F756925E6,F4440F60DC40E2A3,,,,,,', count=1}},type={4}}
,q146B8EE3EC05F30B={lvl=52,craft={{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=8},{key='I16F6037D5B4F3BA5,FCA451E22A0855D5,,,,,,', count=2}},type={4}}
,q5128D892C64B5EF1={lvl=52,craft={{key='I5E0809988A5F46E3,FE37B058B3FAA492,,,,,,', count=8},{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=2}},type={4}}
,q1D1461B2C3DC68C2={lvl=52,craft={{key='I7657595887E32E06,283EA8AB42439D63,,,,,,', count=4}},type={25}}
,q579CC4D573882A35={lvl=52,craft={{key='I7657595887E32E06,283EA8AB42439D63,,,,,,', count=4}},type={25}}
,q24C3E3EB09D16075={lvl=52,craft={{key='I27A2898CDE475D1C,29A0D6C28A0BA80E,,,,,,', count=4}},type={25}}
,q46DB56E40307DD17={lvl=52,craft={{key='I27A2898CDE475D1C,29A0D6C28A0BA80E,,,,,,', count=4}},type={25}}
,q28D968E98EF24633={lvl=52,craft={{key='I1F7448A8A3331E3E,4A902C731880E167,,,,,,', count=4}},type={25}}
,q4F58595DA4E04424={lvl=52,craft={{key='I1F7448A8A3331E3E,4A902C731880E167,,,,,,', count=4}},type={25}}
,q00C53A8611808D7C={lvl=52,craft={{key='I7FC7039FA6ACDD80,305ED8D42B673E0F,,,,,,', count=4}},type={25}}
,q507873A7F2F1AE63={lvl=52,craft={{key='I7FC7039FA6ACDD80,305ED8D42B673E0F,,,,,,', count=4}},type={25}}
,q016419EED9A24956={lvl=52,craft={{key='I711E679F701297C5,17230B79D182A127,,,,,,', count=4}},type={25}}
,q1256FBD3D31D49A5={lvl=52,craft={{key='I711E679F701297C5,17230B79D182A127,,,,,,', count=4}},type={25}}
,q5E706E84E9AD1D1B={lvl=52,craft={{key='I16F6037D5B4F3BA5,FCA451E22A0855D5,,,,,,', count=2},{key='I3A15E600BEEA8B52,281F3737677FB4FA,,,,,,', count=2},{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=6}},type={4}}
,q7DEE7D6434C67E68={lvl=52,craft={{key='I16F6037D5B4F3BA5,FCA451E22A0855D5,,,,,,', count=2},{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=6},{key='I3A15E600BEEA8B52,281F3737677FB4FA,,,,,,', count=2}},type={4}}
,qFA117B9482986414={lvl=52,craft={{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=8},{key='I4AA90D6FA9A83525,2DC877C29D9F7E8A,,,,,,', count=2}},type={4}}
,q50CC08DE10C7290E={lvl=52,craft={{key='I3A15E600BEEA8B52,281F3737677FB4FA,,,,,,', count=1},{key='I16F6037D5B4F3BA5,FCA451E22A0855D5,,,,,,', count=1},{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=8}},type={4}}
,q1CAA3B8965B0E6E1={lvl=52,craft={{key='I2C28292DA53B4F7B,03BB8594EBCB22A2,,,,,,', count=4}},type={25}}
,q653B2B66DF5EC802={lvl=52,craft={{key='I2C28292DA53B4F7B,03BB8594EBCB22A2,,,,,,', count=4}},type={25}}
,q2260DB3E8D8D37AC={lvl=52,craft={{key='I0361996160C7EF8F,4B6A1CF334EAD7D5,,,,,,', count=4}},type={25}}
,q6554B36664A41221={lvl=52,craft={{key='I0361996160C7EF8F,4B6A1CF334EAD7D5,,,,,,', count=4}},type={25}}
,q67619359C9F7F77A={lvl=52,craft={{key='I27A2898A6ADF3B3A,F7BAB8550B7D7BE7,,,,,,', count=4}},type={25}}
,q78531E7FB3EE8598={lvl=52,craft={{key='I27A2898A6ADF3B3A,F7BAB8550B7D7BE7,,,,,,', count=4}},type={25}}
,q4FB4B34B89C0E1DD={lvl=52,craft={{key='I7FC7039D62965FC8,2E0723DAB65B2C3C,,,,,,', count=4}},type={25}}
,q7BE9B310CB904CBD={lvl=52,craft={{key='I7FC7039D62965FC8,2E0723DAB65B2C3C,,,,,,', count=4}},type={25}}
,q64A3073687938B96={lvl=52,craft={{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=10}},type={4}}
,q6A272E8A7B7FB33E={lvl=52,craft={{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=10}},type={4}}
,q3EF6F040DB3DA329={lvl=52,craft={{key='I577C589B5C6BDB9D,56C3B3E999F1E239,,,,,,', count=4},{key='I30D24C88E6637AB2,2EA18304BCECB07A,,,,,,', count=6}},type={4}}
,q33F86724B7CBF77F={lvl=52,craft={{key='I30D24C88E6637AB2,2EA18304BCECB07A,,,,,,', count=4},{key='I21211F0F6EBDF6D9,2971261FEBDBB585,,,,,,', count=2},{key='I577C589B5C6BDB9D,56C3B3E999F1E239,,,,,,', count=4}},type={4}}
,q388F933D094E8206={lvl=52,craft={{key='I21211F0F6EBDF6D9,2971261FEBDBB585,,,,,,', count=4},{key='I577C589B5C6BDB9D,56C3B3E999F1E239,,,,,,', count=4},{key='I30D24C88E6637AB2,2EA18304BCECB07A,,,,,,', count=2}},type={4}}
,q1845BDACC029E0DA={lvl=52,craft={{key='I44EC601A659D4072,F95775B3031A16A7,,,,,,', count=4},{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=6}},type={4}}
,q52D750129EC1F287={lvl=52,craft={{key='I7E1427F8CECB0725,F02EDD7BE18621BC,,,,,,', count=4}},type={25}}
,q77EF5680B325758C={lvl=52,craft={{key='I7E1427F8CECB0725,F02EDD7BE18621BC,,,,,,', count=4}},type={25}}
,q10E0D6684C3C818E={lvl=52,craft={{key='I7E1427F77A093B7A,13290F0F2542A7BF,,,,,,', count=4}},type={25}}
,q4D21FBA695EE9152={lvl=52,craft={{key='I7E1427F77A093B7A,13290F0F2542A7BF,,,,,,', count=4}},type={25}}
,q08427EFCE931AF36={lvl=52,craft={{key='I7E1427F5BD67E26D,BA27D83CBF6FCC41,,,,,,', count=4}},type={25}}
,q473888CE7186ACD6={lvl=52,craft={{key='I7E1427F5BD67E26D,BA27D83CBF6FCC41,,,,,,', count=4}},type={25}}
,q1FAAE278BC6C5E14={lvl=52,craft={{key='I7E1427F672345095,1E0AE864951C9481,,,,,,', count=4}},type={25}}
,q3639103680948F71={lvl=52,craft={{key='I7E1427F672345095,1E0AE864951C9481,,,,,,', count=4}},type={25}}
,qFA116D4AFDC7A776={lvl=52,craft={{key='I21211F0F6EBDF6D9,2971261FEBDBB585,,,,,,', count=10}},type={4}}
,q4EA07B5D0C51BE73={lvl=52,craft={{key='I21211F0F6EBDF6D9,2971261FEBDBB585,,,,,,', count=10}},type={4}}
,q27DE0F43559E17EE={lvl=52,craft={{key='I4CF5563EAFB933A7,FFA072D59AB4F9BD,,,,,,', count=3},{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=6},{key='I64D98F5F756925E6,F4440F60DC40E2A3,,,,,,', count=1}},type={4}}
,q60DEC769BA58F61A={lvl=52,craft={{key='I64D98F5F756925E6,F4440F60DC40E2A3,,,,,,', count=1},{key='I51769D825BF03926,947F0BE23E6F3491,,,,,,', count=6},{key='I4CF5563EAFB933A7,FFA072D59AB4F9BD,,,,,,', count=3}},type={4}}
,q0FADDFA9D5E3A083={lvl=52,craft={{key='I30D24C88E6637AB2,2EA18304BCECB07A,,,,,,', count=10}},type={4}}
,q3034142376A5E498={lvl=52,craft={{key='I188CDDFA7C150898,E466E619EF91460D,,,,,,', count=4}},type={25}}
,q3757BF55DFF76B3E={lvl=52,craft={{key='I188CDDFA7C150898,E466E619EF91460D,,,,,,', count=4}},type={25}}
,q0B8983759422DD84={lvl=52,craft={{key='I3A15E600BEEA8B52,281F3737677FB4FA,,,,,,', count=2},{key='I5578B2406341E011,33E24DC7BBBDB9A0,,,,,,', count=8}},type={4}}
,q50A0759E7EE6F919={lvl=52,craft={{key='I577C589B5C6BDB9D,56C3B3E999F1E239,,,,,,', count=10}},type={4}}
,q06E5E17C0347B2F4={lvl=52,giver='U69688D4C1A80F5D1'}
,q2388F91CDD7E7753={lvl=52,domain="guild"}
,q1597F8D165EAE79E={lvl=52,giver='U52536E6B23802BB7'}
,q0F2A2602117876E2={lvl=52}
,q2811F44F57C7EE7B={lvl=52,type={17}}
,q786C821C5B045CBA={lvl=52,type={17}}
,q3709FEADFBD576A7={lvl=52,giver='U52536E6B23802BB7'}
,q1D1E52001E61EF98={lvl=52}
,q733560C04A8FB4AA={lvl=52}
,q5C76F1914E3E9C4B={lvl=52,type={17}}
,q638DAB743F451340={lvl=52,type={17}}
,q37D6ACACB3AB1C7E={lvl=52}
,q702027FB10D95987={lvl=52,giver='U59BB75E952912B8B'}
,q0563F899DA96ADF0={lvl=52,giver='U37A6A06F74076A9B'}
,q6E9C36C5BFDF1154={lvl=52,giver='U0C86248A17C428DE'}
,q7850DE3DA4E90EF2={lvl=52,giver='U5B32F98C02D8EB6F'}
,qFFB3CDFD4D76ACA1={lvl=52,scene="Aqueduct",type={10,6},giver='UFFFDB2EA6BAF6897'}
,q01E0980A32C5D5F8={lvl=52}
,q0DEADDD17933C536={lvl=52,giver='U5B32F98C02D8EB6F'}
,q5D8E1119EAD82CFB={lvl=52}
,q5B5B6F27E8FC16C0={lvl=52,giver='U4821459649A2139A'}
,qFD2D0EDEFE38288D={lvl=52,scene="Aqueduct",type={6}}
,q63051AA4B8898911={lvl=52, grp=5}
,q6A3D91C2ADCBFE49={lvl=52}
,q120B18B6C1F3E837={lvl=52,giver='U69688D4C1A80F5D1'}
,q17E06D8A3C856385={lvl=52}
,q2A6F14DF8F3937C9={lvl=52,giver='U3B14BC670B416039'}
,q106C6B1EBFB6525E={lvl=52,giver='U5B32F98C02D8EB6F'}
,q25ED57D8A8D42FF2={lvl=52}
,q2F33E1A52A59DDB6={lvl=52,giver='U0C86248A17C428DE'}
,qFF9EB08DD4B5BE70={lvl=52,giver='UFB9E341D5B3D5E11'}
,qFD1A77118F99D773={lvl=52,giver='UFC17DEFD3DADFC72'}
,q1210BDEAD8677096={lvl=52}
,q7D9D5FC68E82E443={lvl=52,giver='U52536E6B23802BB7'}
,q516520AEF50D9210={lvl=52,giver='U52536E6B23802BB7'}
,q4D9CC301BEF2BE3A={lvl=52}
,q150AF3A6175F2DC5={lvl=52,giver='U3B14BC670B416039'}
,q49DEE614B85B2470={lvl=52,giver='U69688D4C1A80F5D1'}
,qFFAA4F67CAF76F77={lvl=52,giver='UFE49276C658F9747'}
,qFAF04A49BB9ED8A8={lvl=52,giver='UFC7C475B62903DE5'}
,q1C50F2AAA9D15D74={lvl=52,giver='U69688D4C1A80F5D1'}
,q22BA79A5C65DBC63={lvl=52,giver='U52536E6B23802BB7'}
,q5B7ACC702B8E71A5={lvl=52,giver='U4EA19A9B57463BF8'}
,q7BC5C7DA7EB818A2={lvl=52,type={3},giver='U1DC50CBA3E9CDF8D'}
,qFE86AD22986B1332={lvl=52,scene="Public Market",type={6}}
,q2E9F94A55BB47B5F={lvl=52,use={{key='I7BC5B76B8A62B620,17BFF07F98792F13,,,,,,', count=1}}}
,qFF3D7FBEF392A6E1={lvl=52,giver='UFBB73D2C11C10628'}
,q24AFCAA12220F8D4={lvl=52,giver='U30B313ED25CA1436'}
,q31EFDBC576CDD260={lvl=52,giver='U4EE91050080EE30D'}
,q164BECCD96292A57={lvl=52,giver='U69688D4C1A80F5D1'}
,q3CAE54FE0BAFD89A={lvl=52}
,q4ACD49C985D42F90={lvl=52,domain="guild"}
,q5BEF8957A0311052={lvl=52,giver='U69688D4C1A80F5D1'}
,q363B64E50FC0950B={lvl=52,giver='U397CDDDC6A1DCB49'}
,q786E8FC6AB2A89A4={lvl=52,giver='U52536E6B23802BB7'}
,q4A062F78B97D8E52={lvl=52,giver='U0C476457421DE92F'}
,q11C97E04F58D7422={lvl=52,giver='U4EA19A9B57463BF8'}
,qFF8CBE43D9A3E0BF={lvl=52,scene="Citizen's Library",type={6},giver='UFFFDB2EA6BAF6897'}
,q557FAC58F40BBF33={lvl=52,giver='U4EA19A9B57463BF8'}
,q7935B05AAAB4C9CD={lvl=52}
,q3C3A606362FDACED={lvl=52,giver='U5B32F98C02D8EB6F'}
,q797BA044D277A168={lvl=52,giver='U0C86248A17C428DE'}
,q0C6EBFA6C3D6556F={lvl=52,giver='U0C86248A17C428DE'}
,q0608BAD7CDA3981F={lvl=52,giver='U0C86248A17C428DE'}
,q0671DE522D2871AE={lvl=52,giver='U0C86248A17C428DE'}
,q407B96A378C91010={lvl=52}
,q7A318684D717A486={lvl=52,giver='U4EA19A9B57463BF8'}
,q15C3F2C555E1132C={lvl=52}
,q61D36D79A17771C1={lvl=52}
,q5C8F42BEF95E1497={lvl=52}
,q3AE4C0FCDBED477D={lvl=52}
,q165AF1E1F1D35467={lvl=52,giver='U4EA19A9B57463BF8'}
,q7D2366327A7571A1={lvl=52}
,q1D3976A497951741={lvl=52,domain="guild"}
,q009DDE8F4A2F9C01={lvl=52}
,q14D0F1B4C31AD5AA={lvl=52}
,q7D6AAA205CD5040F={lvl=52}
,q593F24E5FE7D76A5={lvl=52}
,q2D6598FEFFB8BC3E={lvl=52,giver='U5B32F98C02D8EB6F'}
,q0BD7C77870E258EF={lvl=52,giver='U606E643E4F70D787'}
,q1C4C262D1C1D4813={lvl=52}
,q38089F558CF36888={lvl=52}
,q6387AADADB6ECAB6={lvl=52,giver='U426EA11770CEAC0C'}
,q1B2A9F5CCAFB3ECE={lvl=52}
,q0B1F5C2C3882009B={lvl=52,giver='U52536E6B23802BB7'}
,q549392D64A4842F5={lvl=52}
,q7200E1D88E7E210A={lvl=52,giver='U52536E6B23802BB7'}
,qFFE6C87F9DDAF43D={lvl=52,scene="Aqueduct",type={10,6},giver='UFFB1FF6625FD043F'}
,q3475DC70E3BE3865={lvl=52,giver='U5B32F98C02D8EB6F'}
,q1B423EFBE5D5393D={lvl=52}
,q4426FFE3E6AC0A42={lvl=52}
,q6FE3B03C68233967={lvl=52}
,q715EEF56C935525A={lvl=52}
,qFA2085CECCB44E19={lvl=52,giver='UFC7C475B62903DE5'}
,q65F2A48FE4DCEA9A={lvl=52,giver='U5B32F98C02D8EB6F'}
,q06950D3D998B11D3={lvl=52}
,q284CE42127BFEDA4={lvl=52}
,q2A53D5CB9955A246={lvl=52}
,qFFEED01AD901D120={lvl=52,scene="Aqueduct",type={10},giver='UFFD515FD1C582C43'}
,q299F74CBF04C6167={lvl=52,giver='U3B14BC670B416039'}
,q323FE3BD9E52E6BA={lvl=52}
,q42464646F8E69279={lvl=52,giver='U3B14BC670B416039'}
,q4AD0EE06E84A3C6B={lvl=52,domain="guild"}
,q4453495A1843F4DB={lvl=52, grp=5}
,qFFE48A4CA626E1D7={lvl=52,scene="Aqueduct",type={4,10,1},giver='UFFB1FF6625FD043F'}
,q4CBA974EC848271A={lvl=52,giver='U4519D5DA194DDBA2'}
,q6F4244DD49B0596A={lvl=52,giver='U5237661D660D76D1'}
,q749AE6456A3C8D26={lvl=52}
,q497280178CF472F7={lvl=52,giver='U69688D4C1A80F5D1'}
,q0321A64145FB8CFD={lvl=52}
,q5AC36D09ED217328={lvl=52}
,q65F5E9A1A645ECFF={lvl=52}
,q5199153E516F6D7F={lvl=52}
,q35C466799CB2523D={lvl=52,giver='U1040B9905B29D72E'}
,q5726EE10F3D2400D={lvl=52}
,q3C04BEC4FBD28787={lvl=52,type={3}}
,q2EFC2FFE175EB49D={lvl=52}
,qFF3E6C190714D7EB={lvl=52,giver='UFBB73D2C11C10628'}
,q52D321BCEDDE25BB={lvl=52}
,q0FCD8BE98F45D734={lvl=52,giver='U190C06A93E30B7CB'}
,qFFFB02CA5E7E4687={lvl=52,scene="Aqueduct",type={10},giver='UFF90D5B155FFEA13'}
,qFED01634C2250CE2={lvl=52,scene="Public Market",type={1,9}}
,qFCDA2D1E7EEFD580={lvl=52,scene="Public Market",type={1,9}}
,q22D4CF049887D9A0={lvl=52,scene="Citizen's Library",type={1,9}}
,qFFD5FD5185F2A4FD={lvl=52,scene="Citizen's Library",type={9,1}}
,qFFB3DC5698043FC2={lvl=52,scene="Citizen's Library",type={9,1}}
,q0F4B53418F35D12F={lvl=52,scene="Public Market",type={9,1}}
,qFF94772F3D8EC5B3={lvl=52,scene="Public Market",type={9,1}}
,qFA320886D1170BFA={lvl=52,scene="Citizen's Library",type={9,1}}
,q44C0F68DA0D6FA15={lvl=52,giver='U6D64CD887CDCB1FA'}
,q48F10A92BEF4585C={lvl=52}
,q4B634548B74C05B5={lvl=52}
,q0DB9441C9FCE8C0B={lvl=52,giver='U5B32F98C02D8EB6F'}
,q405D11AE0EAE638F={lvl=52,giver='U4EA19A9B57463BF8'}
,qFD454351D57304C8={lvl=52,type={3,11,1},giver='UFB21AEAC03393B89'}
,qFC3E9ADA8395B48E={lvl=52,type={3,11,1},giver='UFD5887520167DBBF'}
,q56AB5E936DD163C1={lvl=52,giver='U0C86248A17C428DE'}
,q6B9AC7BDA84A040C={lvl=52}
,q0E991FA7F6737A5D={lvl=52,giver='U69688D4C1A80F5D1'}
,q10B6BC8D4D7D8F3C={lvl=52,giver='U0C86248A17C428DE'}
,q767DF56000000000={lvl=52,giver='U63A611A651608F59'}
,q643ECAF7BBFFB449={lvl=52,giver='U2570041F4A6CDC6D'}
,q4BCC812A120F86DE={lvl=52}
,qFE6F8508C862CF98={lvl=52,giver='UFBB73D2C11C10628'}
,q47D3B811792858E2={lvl=52}
,q64A98FF99894F66A={lvl=52,domain="guild"}
,q39F96C4CB6BCFACC={lvl=52,type={3}}
,qFFCE17E47207AE39={lvl=52,scene="Citizen's Library",type={10},giver='UFFFDB2EA6BAF6897'}
,q34E40849CBFAFB0E={lvl=52}
,q01D7429611A50FF5={lvl=52}
,q790F4CF73C7CDAB0={lvl=52,giver='U1679042A7CBA60E1'}
,q07C3DE5A9651BE51={lvl=52}
,qFFF547017CBB2558={lvl=52,scene="Aqueduct",type={10,6},giver='UFFFDB2EA6BAF6897'}
,q435BFA8C71E5DEB9={lvl=52,giver='U52536E6B23802BB7'}
,q6B0BE90C5C5F9617={lvl=52,giver='U5B32F98C02D8EB6F'}
,q5AAA6BEE2E4036AB={lvl=52}
,q43817163C009DFAC={lvl=52,giver='U4EA19A9B57463BF8'}
,q0630F7FBF6E843CD={lvl=52,type={8},giver='U116FD7EB3DA7E066'}
,q448C7BEF317AD9E2={lvl=52}
,q74D608C41B38CE6A={lvl=52}
,q24192E2A0E7412A2={lvl=52}
,q4FA1319368C2794A={lvl=52}
,qFBCBE64DD9EAFD93={lvl=52,type={5}}
,qFA3E39CEE6EC4188={lvl=52,type={5}}
,q73A440608BFA9B30={lvl=52}
,qFA242C8AC4DB7F84={lvl=52,giver='UFBB73D2C11C10628'}
,q5B1A6EF17BA15627={lvl=52}
,qFEAD5429E0BAA073={lvl=52,type={11,3},giver='UFEBE60774A363B91'}
,qFAF7696C4D3CEA47={lvl=52,type={11,3},giver='UFCDCFEA61042FA78'}
,q6BC56E04B2CC6336={lvl=52}
,q6B302426BCE32EFC={lvl=52}
,q3005FDFCA8B91C1F={lvl=52}
,q01CE714DCC79472B={lvl=52,giver='U3B14BC670B416039'}
,q0080A2F486335577={lvl=52, grp=5}
,q516DB6658D80C59E={lvl=52,giver='U4EA19A9B57463BF8'}
,q2FFA17628663721C={lvl=52,giver='U4E1694B254569F84'}
,q71DD3717DB601A6C={lvl=52,giver='U4EA19A9B57463BF8'}
,qFEB49860F89F4FB0={lvl=52,scene="Aqueduct",type={6}}
,q7BFFD057A8528A95={lvl=52}
,q207E71BFBE75A58B={lvl=52,giver='U7FDEBE055CE893E7'}
,q63EE73508A70ED36={lvl=52}
,q71D0A21112B9EF36={lvl=52,giver='U69688D4C1A80F5D1'}
,qFF587382911BB5D9={lvl=52}
,qFF4B351EFF40D77F={lvl=52}
,qFE3ECD8EA11E7D58={lvl=52}
,q2472155D715471A8={lvl=52,giver='U5B32F98C02D8EB6F'}
,qFCBD1B7CC43ECF5A={lvl=52,scene="Citizen's Library",type={4}}
,qFFD788056A0FE522={lvl=52,scene="Public Market",type={10},giver='UFFD34A0D27D28AF3'}
,q4ACACC1E69099BAE={lvl=52,giver='U4EA19A9B57463BF8'}
,q2F259BD5F0B47951={lvl=52,giver='U52536E6B23802BB7'}
,q47941EE1B66E7D88={lvl=52}
,q09F3830D469B4750={lvl=52,giver='U190C06A93E30B7CB'}
,q6021EBC15781C29A={lvl=52,giver='U5B32F98C02D8EB6F'}
,q0E954E3C78FE3FD6={lvl=52,giver='U190C06A93E30B7CB'}
,q31D735AC17F3C836={lvl=52}
,q752BA3E4FF7CC589={lvl=52,type={3,18}}
,q763419F59FD6CED1={lvl=52,type={3,18}}
,q5FD275C0C276A481={lvl=52}
,qFC76685050607C3E={lvl=53,domain="ia"}
,qFC76684F799E3661={lvl=53,domain="ia"}
,qFC76684E20E0BE08={lvl=53,domain="ia"}
,qFC76684D7FD0F29B={lvl=53,domain="ia"}
,qFC76684C446DD73F={lvl=53,domain="ia"}
,qFFB03AA25443B1ED={lvl=53,scene="Cydrel's Rest",type={1},giver='UFFE65B8B029D003B'}
,qFD27E73299D3F870={lvl=53,type={3},giver='UFB7E6F3C6E9FDEE8'}
,qFAC4F79FAE4929F9={lvl=53,type={3},giver='UFE31C7EC3F66ACD4'}
,q7980A182E3647A8E={lvl=53,scene="Valley of Bones",giver='U21BF287C7C6CD8B7'}
,qFEC586646332E179={lvl=53,scene="Valley of Bones",domain="ia"}
,qFEBFA9660C690C1B={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD78DF56691DD073={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCAD9EC132EF8F3E={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA771FE977D2637D={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE97170F2407FBC7={lvl=53,domain="ia"}
,qFBA39D77673CDA8C={lvl=53,domain="ia"}
,qFA7555CF2FEFEE27={lvl=53,domain="ia"}
,qFA5ED3274E9E5A63={lvl=53,domain="ia"}
,qFA581E4269F1A6B1={lvl=53,domain="ia"}
,qFEA429532C7CB0CB={lvl=53,domain="ia"}
,qFE732A5400FC5B8A={lvl=53,domain="ia"}
,qFCD150B03D7D5821={lvl=53,domain="ia"}
,qFB7161D72707F2D1={lvl=53,domain="ia"}
,qFB3AC4B66364A767={lvl=53,domain="ia"}
,qFEA2933866702C2A={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDA550A14EF4D40D={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDA447CF50712ACC={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFACAA7967CECC487={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA4F262D7F039461={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE4E86BF5327F33E={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDDADAB64CBC6D80={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDAF4D6A6FA4AC84={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFAD916BF1BB22836={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA447C235C22035D={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC3AF12C697E244F={lvl=53,domain="ia"}
,qFFEFC55A6DA27DE4={lvl=53,domain="ia"}
,qFD5F3C043BF48048={lvl=53,domain="ia"}
,qFCE85E615F5E56F2={lvl=53,domain="ia"}
,qFBE9C40B3A14F7D8={lvl=53,domain="ia"}
,qFA78ADBC26336D12={lvl=53,domain="ia"}
,qFBDB7D4403913FA4={lvl=53,scene="Ruinous Passage"}
,qFF50D2180BEFEC5E={lvl=53,domain="ia"}
,qFE65B96908B7FE32={lvl=53,domain="ia"}
,qFDC8922556D76BAC={lvl=53,domain="ia"}
,qFD57CEAC46258032={lvl=53,domain="ia"}
,qFA5F265F18D41622={lvl=53,domain="ia"}
,qFBE6CB0545513A9B={lvl=53,domain="ia"}
,qFB94681C1E3744BD={lvl=53,domain="ia"}
,qFA8F051E1F79066A={lvl=53,domain="ia"}
,qFA80DF816730CCC6={lvl=53,domain="ia"}
,qFA5782C951B9B439={lvl=53,domain="ia"}
,qFF7DA2236C5E5BF9={lvl=53,scene="Valley of Bones",domain="ia"}
,qFEFE28C609E89DC3={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE067A7317C3B223={lvl=53,scene="Valley of Bones",domain="ia"}
,qFDB17F7D72EA2B61={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC0A6E5D1E585D0B={lvl=53,scene="Valley of Bones",domain="ia"}
,qFF8717A22972DEA4={lvl=53,domain="ia"}
,qFDC8B5A953B59AC3={lvl=53,domain="ia"}
,qFCE5F8017F97DE78={lvl=53,domain="ia"}
,qFBDC70CE2A023CC0={lvl=53,domain="ia"}
,qFA0D471110C6D37E={lvl=53,domain="ia"}
,qFDD1B89D71990D5B={lvl=53,scene="Ruinous Passage",type={6},giver='UFC3622EF1A7E3A7A'}
,qFFBD6F6D9920D87D={lvl=53,scene="Aqueduct",type={20},giver='UFFD240CF58F4A832'}
,qFF9E13C675E143FB={lvl=53,scene="Valley of Bones",domain="ia"}
,qFEA30C440F93DF77={lvl=53,scene="Valley of Bones",domain="ia"}
,qFDFB44FB314BEDB2={lvl=53,scene="Valley of Bones",domain="ia"}
,qFDA5B0AD1D19878E={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD9C2F02623205B5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCFC3E0E72E74B19={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB5FC9760BFF28E9={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB370B4A798327C3={lvl=53,scene="Valley of Bones",domain="ia"}
,qFAA4FC9164EBA750={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA5B417B06744EB7={lvl=53,scene="Valley of Bones",domain="ia"}
,qFF4DFEF46F2BB4A8={lvl=53,domain="ia"}
,qFDEE3F9E734AD95F={lvl=53,domain="ia"}
,qFBA9A496745740CC={lvl=53,domain="ia"}
,qFBA1A4EE38C0C044={lvl=53,domain="ia"}
,qFAEF5046057EC1D2={lvl=53,domain="ia"}
,qFFE50FFE3C3AF2C4={lvl=53,scene="Reservoir",giver='UFF89B5D55F81AC1F'}
,qFBBA38E46879FC08={lvl=53,domain="ia"}
,q51ADFF58BF9B6369={lvl=53}
,qFEEC08F7355F49C9={lvl=53,scene="The Eternal Assault",type={2,13},giver='UFFAB6CB82492A51B'}
,qFE7B62681F444901={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD8EA9C8687A9720={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFCC8DDC9304BC959={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB78DF060577C038={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFADBB24F05EE43C1={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFFAF559F9FBB3111={lvl=53,scene="Reservoir",type={6}}
,qFF865E835450BB75={lvl=53,scene="Reservoir",type={20},giver='UFFFC81B75D4651FF'}
,qFEEE8E677DE055B3={lvl=53,domain="ia"}
,qFEEE8E6661421716={lvl=53,domain="ia"}
,qFEEE8E6511155E9B={lvl=53,domain="ia"}
,qFEEE8E644B0F0185={lvl=53,domain="ia"}
,qFEEE8E63300C745F={lvl=53,domain="ia"}
,q5268B3651543AB64={lvl=53,scene="Valley of Bones",giver='U32CBC5CE71DD13E0'}
,qFC1613F91A441A4A={lvl=53,scene="Valley of Bones",domain="ia"}
,qFF241AFF4A89D36B={lvl=53,domain="ia"}
,qFF1BE8995865561C={lvl=53,domain="ia"}
,qFE09194037F6B421={lvl=53,domain="ia"}
,qFD450F643BD49964={lvl=53,domain="ia"}
,qFD26F55C7F42C49E={lvl=53,domain="ia"}
,qFA3D921827EA7215={lvl=53,domain="ia"}
,qFFCFE5D10E699476={lvl=53,scene="Valley of Bones",type={20},giver='UFFE9C24449BD1149'}
,qFFEBC7E6FC93AB4D={lvl=53,scene="Reservoir",type={15},giver='UFF8599FD174263CB'}
,qFF75B58C60F35CFF={lvl=53,scene="Reservoir",type={16}}
,qFDAEA68600A920A0={lvl=53,scene="The Eternal Assault",type={4}}
,qFECD951B55AC5908={lvl=53,domain="ia"}
,qFECD951A723067FF={lvl=53,domain="ia"}
,qFECD9519074C21FE={lvl=53,domain="ia"}
,qFECD951804F84E25={lvl=53,domain="ia"}
,qFECD9517441C9239={lvl=53,domain="ia"}
,qFDD1334022CD04AA={lvl=53,domain="ia"}
,qFF68E89CC1534138={lvl=53,scene="King's Corridor",type={4}}
,qFF682AE3547399D4={lvl=53,domain="ia"}
,qFDF5CC2848DDAC8C={lvl=53,domain="ia"}
,qFDC74BF467DCE4C3={lvl=53,domain="ia"}
,qFB2211E14FC4C59A={lvl=53,domain="ia"}
,qFAB37D492948286E={lvl=53,domain="ia"}
,qFE1694F456964C89={lvl=53,domain="ia"}
,qFD9E3BDC3E2A4B5B={lvl=53,domain="ia"}
,qFC57451D27270972={lvl=53,domain="ia"}
,qFB58388763060BDB={lvl=53,domain="ia"}
,qFA820EFB711B866D={lvl=53,domain="ia"}
,qFE2D7E08ED7DCCE7={lvl=53}
,qFF266F1C321CA7B5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFEC783631103E652={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD4E11CC0FE35F1D={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD23F6FF20C9EB8D={lvl=53,scene="Valley of Bones",domain="ia"}
,qFAE4EB2127D19A6C={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC8897748AE26E23={lvl=53,scene="King's Corridor",use={{key='IFD1D0B3854D33A74,D63A742287ACBB1D,,,,,,', count=10}},type={10,4}}
,qFFAB420CED99AEC2={lvl=53,scene="Reservoir",type={6,4},giver='UFF8599FD174263CB'}
,qFFBC2D4B7F1E7C80={lvl=53,domain="ia"}
,qFDBF7A5C7EEB3AE6={lvl=53,domain="ia"}
,qFD0E15756DE3B0BF={lvl=53,domain="ia"}
,qFCE38D7654072E83={lvl=53,domain="ia"}
,qFCBEBAC132D4FE74={lvl=53,domain="ia"}
,qFEB641557FFA1DD9={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE7D3AC638F1B7C5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE2C362263104D42={lvl=53,scene="Valley of Bones",domain="ia"}
,qFDBE9E0766B4DBB0={lvl=53,scene="Valley of Bones",domain="ia"}
,qFBAAAAFD4CB99D6F={lvl=53,scene="Valley of Bones",domain="ia"}
,qFF0018F9437C0E80={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCE0F9682C7FD2F7={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCC210BF4DFA4CD5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC1BC09B43F514AE={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA1FAFDB5B1EFF6D={lvl=53,scene="Valley of Bones",domain="ia"}
,q6132C26828433636={lvl=53,scene="Valley of Bones",giver='U7CFFA3E0692E630B'}
,qFFCD145139AE2141={lvl=53,domain="ia"}
,qFE42AFDE34E77430={lvl=53,domain="ia"}
,qFE2A098C2C7BCA06={lvl=53,domain="ia"}
,qFDEDB20D4CDC5302={lvl=53,domain="ia"}
,qFAF979752998EA66={lvl=53,domain="ia"}
,qFF8E8729144EFAF2={lvl=53,scene="Ruinous Passage",type={8,4},giver='UFFF2F67D105BEAF0'}
,qFF9FF135576B8AFB={lvl=53,domain="ia"}
,qFE7F18DB44D1CF87={lvl=53,domain="ia"}
,qFD32C3DB3837A8B6={lvl=53,domain="ia"}
,qFC33E2262DF34ACF={lvl=53,domain="ia"}
,qFAEDB2AF794D1B8F={lvl=53,domain="ia"}
,qFE0742E647186C97={lvl=53,domain="ia"}
,qFE0742E5164C3F38={lvl=53,domain="ia"}
,qFE0742E45237211E={lvl=53,domain="ia"}
,qFE0742E3475A2DF4={lvl=53,domain="ia"}
,qFE0742E27B92DB89={lvl=53,domain="ia"}
,qFF741B5E3D11BD8D={lvl=53,domain="ia"}
,qFD32508D4C98328F={lvl=53,domain="ia"}
,qFCBA8AD41A983322={lvl=53,domain="ia"}
,qFABCC0C96845FE54={lvl=53,domain="ia"}
,qFA40D6A737898D30={lvl=53,domain="ia"}
,qFE10C4D34522AF74={lvl=53,domain="ia"}
,qFDEE7B474FC921EE={lvl=53,domain="ia"}
,qFDAD69F41553FA60={lvl=53,domain="ia"}
,qFBEDEB2643B146D0={lvl=53,domain="ia"}
,qFA4CDAC87321EBD3={lvl=53,domain="ia"}
,q02AC42C55600DCAC={lvl=53,domain="ia"}
,qFB15033138F69513={lvl=53,domain="ia"}
,q0E42B02369FFAE97={lvl=53,domain="ia"}
,q3979D53C47D79000={lvl=53,domain="ia"}
,q773AE29F79932F4A={lvl=53,domain="ia"}
,qFFEDA4EA2879FA2B={lvl=53,domain="ia"}
,qFFDA2E9E70EBAA48={lvl=53,domain="ia"}
,qFDED000D7635EDC5={lvl=53,domain="ia"}
,qFA6A858118E54BD6={lvl=53,domain="ia"}
,qFA30F75511EA663D={lvl=53,domain="ia"}
,qFF9BF5BD7DDA79D8={lvl=53,scene="Valley of Bones",domain="ia"}
,qFDFFB1135CB54556={lvl=53,scene="Valley of Bones",domain="ia"}
,qFDBFF8F94F7EBEAB={lvl=53,scene="Valley of Bones",domain="ia"}
,qFBF02CA61D1B998F={lvl=53,scene="Valley of Bones",domain="ia"}
,qFBECD8BC737F7120={lvl=53,scene="Valley of Bones",domain="ia"}
,qFF51E3551F2905AC={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF0FEDB213FDF272={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD3964A83541C3D6={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC7E07501A5B53F7={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA6A87336EBE7411={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFFDBFC324D4C09A5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB38F2DA0577DF01={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE3DD9B04C23B4E5={lvl=53,domain="ia"}
,qFBEF13C1370B110B={lvl=53,domain="ia"}
,qFBDFF69E75A8963C={lvl=53,domain="ia"}
,qFB24655B3E0DAFAC={lvl=53,domain="ia"}
,qFA364B5F3F286D33={lvl=53,domain="ia"}
,qFC4FAB213848FA83={lvl=53,domain="ia"}
,qFC787834198D8733={lvl=53,scene="Ruinous Passage",type={10},giver='UFDDFAFA40C7AA40D'}
,qFDA69BF97FC621E7={lvl=53,domain="ia"}
,qFDA69BF85AD84B53={lvl=53,domain="ia"}
,qFDA69BF72F5C7720={lvl=53,domain="ia"}
,qFDA69BF647FF6D43={lvl=53,domain="ia"}
,qFDA69BF53047ECB8={lvl=53,domain="ia"}
,q1D0F92585D3C8CD5={lvl=53,type={17}}
,qFF9055FB3FCEF01F={lvl=53,domain="ia"}
,qFE6E06C15617BC58={lvl=53,domain="ia"}
,qFE6E06C058708851={lvl=53,domain="ia"}
,qFE6E06BF360762BD={lvl=53,domain="ia"}
,qFE6E06BE59A7E363={lvl=53,domain="ia"}
,qFE6E06BD67F022C9={lvl=53,domain="ia"}
,q5F7CB62A420F96B6={lvl=53,domain="guild"}
,qFF4E3299044E261C={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE02E01F6AF74780={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB866EA05958ECDF={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB453C2A0AEF3AB1={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB181B0133813D64={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE98836579A91337={lvl=53,domain="ia"}
,qFC5875651B060C61={lvl=53,domain="ia"}
,qFC42BB050FED7C1E={lvl=53,domain="ia"}
,qFAC6DD9F1CBD6B49={lvl=53,domain="ia"}
,qFA80B00540417A57={lvl=53,domain="ia"}
,qFFAB316393967F60={lvl=53,scene="Reservoir",type={20},giver='UFF8599FD174263CB'}
,qFE9FC0840076D8CB={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE208F25200D2CB5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD36E8D847986593={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCF7BAA84AFB08CA={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB5504D24B0C53D5={lvl=53,scene="Valley of Bones",domain="ia"}
,q6BC7E6C6C462DE87={lvl=53,scene="Valley of Bones",type={6},giver='U32CBC5CE71DD13E0'}
,q52C2AAE96D83EB1D={lvl=53,scene="Valley of Bones",type={6},giver='U4F19B3AE2B9660F2'}
,qFEEA0723550CFE18={lvl=53,domain="ia"}
,qFEEA0722211A07CD={lvl=53,domain="ia"}
,qFEEA07214701B135={lvl=53,domain="ia"}
,qFEEA072072BF8A2B={lvl=53,domain="ia"}
,qFEEA071F684DEF74={lvl=53,domain="ia"}
,qFF14096D7C4C91F8={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDCCAD4B2B739D3D={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD0015254FF5DEF1={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFCBA3C2374EEE811={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB01C78C0FFF7582={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF826EFEC712740E={lvl=53,scene="The Eternal Assault",type={2,13},giver='UFF71FDDA6DA9FC12'}
,qFC4839F05018F511={lvl=53,scene="Valley of Bones",giver='UFBBBC052251BB970'}
,qFED142EC2F645DA3={lvl=53,domain="ia"}
,qFDDD7D1A2266427F={lvl=53,domain="ia"}
,qFDD6245F3319254C={lvl=53,domain="ia"}
,qFD7310D318669E44={lvl=53,domain="ia"}
,qFADA167A51971386={lvl=53,domain="ia"}
,qFC7D986E77257C0E={lvl=53,scene="Valley of Bones",giver='UFB90BCEB75BE8E93'}
,qFA979C4598D78F4B={lvl=53,scene="Valley of Bones",type={9,1}}
,qFCA53B3F6DCEF119={lvl=53,scene="Ruinous Passage",type={1,9}}
,qFBC01B47474ABE5A={lvl=53,scene="Valley of Bones",type={9,1}}
,qFA8750E6DADD387B={lvl=53,scene="Ruinous Passage",type={9,1}}
,qFA8739C75817F1AF={lvl=53,scene="Valley of Bones",type={1,9}}
,qFEF4B81C66165C37={lvl=53,scene="Reservoir",type={1,9}}
,qFFAA38777BB2F5DC={lvl=53,scene="Valley of Bones",type={9,1}}
,qFB7063AF6809724F={lvl=53,scene="Ruinous Passage",type={1,9}}
,qFC95D0C1A4E30E09={lvl=53,scene="Valley of Bones",type={9,1}}
,qFFBBE088AA93C091={lvl=53,scene="Valley of Bones",type={1,9}}
,qFFD1E841ECC260C2={lvl=53,scene="Reservoir",type={9,1}}
,qFFEAF19CA635F7C6={lvl=53,scene="Ruinous Passage",type={1,9}}
,q77E1440E7DA85D87={lvl=53,scene="King's Corridor",type={9,1}}
,qFBBBD55D886246B5={lvl=53,scene="The Eternal Assault",type={9,1}}
,qFCA250157CE0DD7D={lvl=53,scene="Valley of Bones",type={1,9}}
,qFAC316955589D25B={lvl=53,scene="Valley of Bones",type={9,1}}
,qFA658EA09B5F1A4E={lvl=53,scene="Aqueduct",type={9,1}}
,q0873A7D6BBC34B85={lvl=53,scene="Aqueduct",type={1,9}}
,qFC741F9D6C4461BE={lvl=53,scene="Aqueduct",type={9,1}}
,qFA26FF515060AA4D={lvl=53,scene="Valley of Bones",type={1,9}}
,q1650457BA9E6E8B6={lvl=53,scene="The Eternal Assault",type={1,9}}
,qFBAF9B106FED0D66={lvl=53,scene="Reservoir",type={9,1}}
,qFC5DEC8268D248F6={lvl=53,scene="King's Corridor",type={1,9}}
,qFF8CBCF3732D9F97={lvl=53,scene="King's Corridor",type={1,9}}
,q492C86DF878E6A0E={lvl=53,scene="Aqueduct",type={9,1}}
,qFF2E54BB5E8CCE34={lvl=53,scene="Valley of Bones",type={1,9}}
,q41BEF89D9CEA8E22={lvl=53,scene="The Eternal Assault",type={1,9}}
,qFB472BA830F7F52E={lvl=53,scene="Ruinous Passage",type={9,1}}
,qFEC3F50C8B41B2A5={lvl=53,scene="Ruinous Passage",type={9,1}}
,qFD4E93881D8146EC={lvl=53,scene="King's Corridor",type={1,9}}
,qFAF9299575689FBF={lvl=53,scene="Aqueduct",type={1,9}}
,qFD178F04B0E79539={lvl=53,scene="Reservoir",type={1,9}}
,qFD8F141D570B45F1={lvl=53,scene="Valley of Bones",type={9,1}}
,qFFD66691AFAE2CE9={lvl=53,scene="Reservoir",type={1,9}}
,qFE4CC7C3B3F3700F={lvl=53,scene="The Eternal Assault",type={1,9}}
,qFCDE2F0209C9FCE9={lvl=53,scene="Cydrel's Rest",type={1,9}}
,qFA1E9A1008A4144C={lvl=53,scene="Ruinous Passage",type={1,9}}
,qFBA6E7889919F9A1={lvl=53,scene="King's Corridor",type={1,9}}
,qFA7AD1DDC42E0ADB={lvl=53,scene="Valley of Bones",type={1,9}}
,qFF47858CD112016D={lvl=53,scene="Valley of Bones",type={9,1}}
,qFE580ECA91ED9E93={lvl=53,scene="Ruinous Passage",type={9,1}}
,q2927D2F998EE9681={lvl=53,scene="Aqueduct",type={1,9}}
,qFF33B52BE5202B5B={lvl=53,scene="King's Corridor",type={9,1}}
,qFB02C81B2DA04427={lvl=53,scene="King's Corridor",type={1,9}}
,qFF3D086B75E55DF4={lvl=53,domain="ia"}
,qFF228B1F0CC186FB={lvl=53,domain="ia"}
,qFB9233D12D483FD9={lvl=53,domain="ia"}
,qFB8DAE894026A2E3={lvl=53,domain="ia"}
,qFACF7BDD4D1807C2={lvl=53,domain="ia"}
,qFF3A7EB98D3A85F2={lvl=53,scene="Valley of Bones",giver='UFDAE9958430B7180'}
,qFBD70F487EA60B11={lvl=53,domain="ia"}
,q35DB0F6903E1FEF3={lvl=53,domain="ia"}
,q60F43EC05BABD7D6={lvl=53,domain="ia"}
,q67E79AE96B9BC19B={lvl=53,domain="ia"}
,q7485DC301F9A36B3={lvl=53,domain="ia"}
,qFE5356BB20BB136A={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDCE100700806730={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD556FB512FEA828={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC8DDD5A3C98616C={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFBB10C465B5208D5={lvl=53,scene="Ruinous Passage",domain="ia"}
,q04EE0F9578B24E58={lvl=53,domain="ia"}
,q20960CA433BDE3FC={lvl=53,domain="ia"}
,q230DC6235CBA257A={lvl=53,domain="ia"}
,q252A68AE5FB0209C={lvl=53,domain="ia"}
,q5346B3FC68BFC92E={lvl=53,domain="ia"}
,qFDC01EB9C5E96B9B={lvl=53,scene="Ruinous Passage"}
,qFF68872D73368ABA={lvl=53,scene="Reservoir",giver='UFF89B5D55F81AC1F'}
,qFFDF6D8F4704531D={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCA3282972501C28={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC9F78C4501D1015={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC3244234251F07F={lvl=53,scene="Valley of Bones",domain="ia"}
,qFBE93B146313A1B2={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB982F81711A0191={lvl=53,domain="ia"}
,q0C4F85ED3B416D8C={lvl=53,domain="ia"}
,q2BB5D56D03E274D9={lvl=53,domain="ia"}
,q3106DB4764543079={lvl=53,domain="ia"}
,q33E5897729F92CA3={lvl=53,domain="ia"}
,qFE30C4D63E5CC9F9={lvl=53,domain="ia"}
,qFD5DC63E66077A28={lvl=53,domain="ia"}
,qFD39FFD0589337F0={lvl=53,domain="ia"}
,qFC2711244FB3DE43={lvl=53,domain="ia"}
,qFB8FDA2E26EE52F2={lvl=53,domain="ia"}
,qFDE36C4C4CB5AF6F={lvl=53,scene="Valley of Bones"}
,qFEC1B5EE6CE469D9={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC99C5052EF8AD21={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFBF123682E63A72D={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFBC9AD7D380B1B64={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFACECF7A79EC025D={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF6C3CD775BA6F89={lvl=53,domain="ia"}
,qFE4FB29E3C4EBB88={lvl=53,domain="ia"}
,qFD425BFE6E86DF95={lvl=53,domain="ia"}
,qFCA0FBF80C1A6579={lvl=53,domain="ia"}
,qFC13E8815BFAC41B={lvl=53,domain="ia"}
,qFF75A43D76D3728A={lvl=53,domain="ia"}
,qFF542971790EBEF9={lvl=53,domain="ia"}
,qFE64BF9359200D93={lvl=53,domain="ia"}
,qFC5311CF553D2BA4={lvl=53,domain="ia"}
,qFC07FC6262FA35F3={lvl=53,domain="ia"}
,qFC91CB9861ACE525={lvl=53,domain="ia"}
,qFC91CB9726407F04={lvl=53,domain="ia"}
,qFC91CB9676178324={lvl=53,domain="ia"}
,qFC91CB95441F2E67={lvl=53,domain="ia"}
,qFC91CB941B6997A0={lvl=53,domain="ia"}
,qFFA406781D175506={lvl=53,scene="Reservoir",type={6}}
,qFDDF299F37C82BE4={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD4584B65164122B={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA520AEC11D88E1B={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA452C2966D4E2C5={lvl=53,scene="Valley of Bones",domain="ia"}
,qFFEB4D634A4D041D={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD8E81C762D16B25={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD6F6B5F65213232={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC3B9F132DB25A32={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB992275463E2648={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE97A77D77742EB2={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE4C4D3B188E8196={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE21FED277348FC7={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB30417A24267BA2={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA34480D413EFE8A={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFFF0C91B779AFB51={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF1A7F1D6BEA9CF9={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE40FB9E15EC560C={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD1C3FDB5D4850D9={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFADF40D35834D5AA={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE3102C4D2CE8F42={lvl=53,domain="ia",giver='UFB36ECDF2E7D1370'}
,qFD4C2D2173093512={lvl=53,domain="ia",giver='UFCBD5D3B381D1513'}
,qFF940C46708C6282={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF7B86EF7AD80E44={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC70C49954133081={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC132EEB173F6D9B={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB4335820D632CF2={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFEA2A21F05E5C766={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE75D8810D7B66B3={lvl=53,scene="Valley of Bones",domain="ia"}
,qFE50DE8D212C5B33={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD1033A2271FB7B9={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB15700063212820={lvl=53,scene="Valley of Bones",domain="ia"}
,qFF620CC63A948A36={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD4D555E620DB601={lvl=53,scene="Valley of Bones",domain="ia"}
,qFCF9F07570D44C58={lvl=53,scene="Valley of Bones",domain="ia"}
,qFAB5DD225923EB99={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA7E7AF46F5BF123={lvl=53,scene="Valley of Bones",domain="ia"}
,qFED0DA6E07BA7AB3={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD59A55160012B49={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC85B4C952821820={lvl=53,scene="Valley of Bones",domain="ia"}
,qFBD149EB0919E6D2={lvl=53,scene="Valley of Bones",domain="ia"}
,qFB5D9BB1360042B4={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD7407B206BE3787={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC273D4B16E486F2={lvl=53,scene="Valley of Bones",domain="ia"}
,qFBE3BE4A72F3A000={lvl=53,scene="Valley of Bones",domain="ia"}
,qFADEE9B228504102={lvl=53,scene="Valley of Bones",domain="ia"}
,qFA2894C62C055904={lvl=53,scene="Valley of Bones",domain="ia"}
,q56177DC34F107407={lvl=53,scene="Valley of Bones",type={10},giver='U4F19B3AE2B9660F2'}
,qFFB7223F0A42E8DA={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE20E4BF320303A4={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD8C548860C0FD44={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFBC5F6AF6027907C={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA73F92C2E06134B={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFE3B0CAD57379409={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFC5DB95C7A2F98F4={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB20CBCC45ECA373={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA60A04033BC0531={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFA5DD6DA62A52DEF={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF3697253A522E01={lvl=53,domain="ia"}
,qFDAF095F1D424F52={lvl=53,domain="ia"}
,qFCC6C2281207193F={lvl=53,domain="ia"}
,qFB5901427C4FF4FD={lvl=53,domain="ia"}
,qFA880EC134D4C66B={lvl=53,domain="ia"}
,qFC6245DD4394FFEF={lvl=53,scene="The Eternal Assault",type={4}}
,q021485546903F232={lvl=53,domain="ia"}
,q13F13D8C4DD35B0A={lvl=53,domain="ia"}
,q1C3A5B871C2987AE={lvl=53,domain="ia"}
,q5483B4D24E2C63FD={lvl=53,domain="ia"}
,q73A5CF2A4BB601A3={lvl=53,domain="ia"}
,qFF1B438E25EC7E33={lvl=53,domain="ia"}
,qFF1B438D53B94FC3={lvl=53,domain="ia"}
,qFF1B438C68E8F677={lvl=53,domain="ia"}
,qFF1B438B544E300C={lvl=53,domain="ia"}
,qFF1B438A5DD665C1={lvl=53,domain="ia"}
,q0CF4628B6052FFA5={lvl=53,type={17}}
,qFF57AEF931734FF2={lvl=53,scene="Valley of Bones",domain="ia"}
,qFEEA040B5DA9CFB4={lvl=53,scene="Valley of Bones",domain="ia"}
,qFD064FA616089A0C={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC5D4E557CBE8425={lvl=53,scene="Valley of Bones",domain="ia"}
,qFC588CE70E471FBB={lvl=53,scene="Valley of Bones",domain="ia"}
,qFFBCC243511B025F={lvl=53,domain="ia"}
,qFE5866263D6C4D92={lvl=53,domain="ia"}
,qFDAE78CE55533B5D={lvl=53,domain="ia"}
,qFBEF1E7E0DCC8A26={lvl=53,domain="ia"}
,qFA84EF55319B8FF9={lvl=53,domain="ia"}
,qFFB998E35E066DDF={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFDF85BA77741094E={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFD38884F6A6AD53A={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFCDB2B870309E5FF={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFB3ED5FD72A60BA5={lvl=53,scene="Ruinous Passage",domain="ia"}
,qFF79DF50D1EA6015={lvl=53,scene="Valley of Bones",use={{key='IFE9993C96F78A6D2,40F59420DA7460E7,,,,,,', count=1}},type={10},giver='UFFE65B8B029D003B'}
,qFF4E2BF74645E12F={lvl=53,domain="ia"}
,qFEE4C38B21F17BB5={lvl=53,domain="ia"}
,qFE64448B35295E96={lvl=53,domain="ia"}
,qFA61E2153DD5A4B5={lvl=53,domain="ia"}
,qFA42AF41201A9835={lvl=53,domain="ia"}
,qFFB41165C1F80D8A={lvl=53,scene="Vaud Tower",type={20},giver='UFFABF00C4369E8C6'}
,qFAD8ABA1D5FEC912={lvl=53,scene="The Eternal Assault",type={13,2},giver='UFFAB6CB82492A51B'}
,qFFBFC7D95C7BB44D={lvl=53,domain="ia"}
,qFF860EF145F1187F={lvl=53,domain="ia"}
,qFB0A2CC7659DCBCA={lvl=53,domain="ia"}
,qFAAA84DD100E7E9E={lvl=53,domain="ia"}
,qFA29427B6CBD509C={lvl=53,domain="ia"}
,qFF3640A87132221B={lvl=53,domain="ia"}
,qFE9EBBC111B27225={lvl=53,domain="ia"}
,qFDF9A62E5D97D4AE={lvl=53,domain="ia"}
,qFB6D90A10FC2C8D5={lvl=53,domain="ia"}
,qFB191487689DEA98={lvl=53,domain="ia"}
,q22465FDD510E49A4={lvl=54}
,qFF886AD24089C3B0={lvl=54,scene="Western Commons",type={6},giver='UFFEE27AA601CCE7B'}
,qFFAFE3E7EAED6CBC={lvl=54,scene="Strozza Estate",type={6},giver='UFFED64A920D8D6D3'}
,qFF95075DD05FF92F={lvl=54,scene="Strozza Estate",type={6}}
,qFFA61ADA6C8219B3={lvl=54,scene="Western Commons",type={6,4},giver='UFF7A1B94358CADF4'}
,qFD98E104E06C0BE8={lvl=54,type={3},giver='UFE31C7E90CE463E1'}
,qFB258A17D48C4ED7={lvl=54,type={3},giver='UFE31C7E8638FB890'}
,qFB3573D8091B4240={lvl=54,type={3},giver='UFB7E6F3F19180FDF'}
,qFC33CA29988A7572={lvl=54,type={3},giver='UFB6BE81B15763EE0'}
,qFFA214531A220CC8={lvl=54,scene="Strozza Estate",type={6},giver='UFF9CBF045F74E0DC'}
,qFF1A27E0AE211C8E={lvl=54,type={17}}
,qFF945F1CB4BF29AB={lvl=54,scene="Western Commons",giver='UFFED64A920D8D6D3'}
,qFF76DCA84A28B705={lvl=54,scene="The Eternal Assault",type={4,6},giver='UFD8333DF620FDBFA'}
,qFE87824E3697BF4B={lvl=54,domain="ia"}
,qFE45722221FFF41C={lvl=54,domain="ia"}
,qFDF802364DD11C94={lvl=54,domain="ia"}
,qFB2C623A6362523A={lvl=54,domain="ia"}
,qFA771791423FA4CC={lvl=54,domain="ia"}
,qFFFA900F36E03787={lvl=54,craft={{key='IFAAB2DBA7DE1ED81,EF379C038804600D,,,,,,', count=4}},type={25}}
,qFB043728BB5D2BEE={lvl=54,craft={{key='IFAAB2DBA7DE1ED81,EF379C038804600D,,,,,,', count=4}},type={25}}
,qFE542E19E0920124={lvl=54,craft={{key='IFAAB2DBB6EA34474,F92CAC3F8FF5263E,,,,,,', count=4}},type={25}}
,qFB87BB5393DBD353={lvl=54,craft={{key='IFAAB2DBB6EA34474,F92CAC3F8FF5263E,,,,,,', count=4}},type={25}}
,qFEE19F3CA62544C9={lvl=54,craft={{key='IFAAB2DB965041A91,EF1D3FB397F9A250,,,,,,', count=4}},type={25}}
,qFB4AF2B1D8BFD44D={lvl=54,craft={{key='IFAAB2DB965041A91,EF1D3FB397F9A250,,,,,,', count=4}},type={25}}
,qFB4980BFD4385E5E={lvl=54,craft={{key='IFD433207786DE22C,9D2C16D0F9F8A4DC,,,,,,', count=4}},type={25}}
,qFA78DE246454A947={lvl=54,craft={{key='IFD433207786DE22C,9D2C16D0F9F8A4DC,,,,,,', count=4}},type={25}}
,q308CA171B21E7F08={lvl=54,craft={{key='IFE4A8715B39082E9,F0E4215A212090AC,,,,,,', count=10}},type={4}}
,qFFD0264BB0D3CF39={lvl=54,craft={{key='IFEF55D34D45F8B30,5A21572B694D8109,,,,,,', count=4}},type={25}}
,qFE5DC247D1772A31={lvl=54,craft={{key='IFEF55D34D45F8B30,5A21572B694D8109,,,,,,', count=4}},type={25}}
,qFD6826860C8804E2={lvl=54,craft={{key='IFB096AAF37D854B4,12E31703825EA42B,,,,,,', count=4}},type={25}}
,qFD260363AF03C038={lvl=54,craft={{key='IFB096AAF37D854B4,12E31703825EA42B,,,,,,', count=4}},type={25}}
,qFF8B97A7151E3199={lvl=54,craft={{key='IFB096AAE448627DC,3186C517D7883618,,,,,,', count=4}},type={25}}
,qFEB5F594A0FEAE75={lvl=54,craft={{key='IFB096AAE448627DC,3186C517D7883618,,,,,,', count=4}},type={25}}
,qFD911D13BB610068={lvl=54,craft={{key='IFD4332067A91B73C,B7C4BBF45ACB5307,,,,,,', count=4}},type={25}}
,qFA9685001DB69383={lvl=54,craft={{key='IFD4332067A91B73C,B7C4BBF45ACB5307,,,,,,', count=4}},type={25}}
,qFE5765BC06EABF80={lvl=54,craft={{key='IFD4332056D5ECB17,053BBD4E1A28831A,,,,,,', count=4}},type={25}}
,qFBA29DCEC7F9EC9D={lvl=54,craft={{key='IFD4332056D5ECB17,053BBD4E1A28831A,,,,,,', count=4}},type={25}}
,qFF698514A7751F5E={lvl=54,craft={{key='IFEF55D33684688A1,4B0DEEE23A69E6B6,,,,,,', count=4}},type={25}}
,qFD401671B5909E26={lvl=54,craft={{key='IFEF55D33684688A1,4B0DEEE23A69E6B6,,,,,,', count=4}},type={25}}
,q5BA31E14C123001E={lvl=54,craft={{key='IFA11208B441EF5BB,14A9ABD78D41DFED,,,,,,', count=10}},type={4}}
,qFC21D90098CF85B3={lvl=54,craft={{key='IFB096AB0A39D7575,6CF9F6A2622974A2,,,,,,', count=4}},type={25}}
,qFAE6A4BEC9A2F400={lvl=54,craft={{key='IFB096AB0A39D7575,6CF9F6A2622974A2,,,,,,', count=4}},type={25}}
,qFFC1D20296929AB4={lvl=54,craft={{key='IFF09E2AB7110C3D7,E36C0E6A4FD8827B,,,,,,', count=4}},type={25}}
,qFD4D30246A4B80D0={lvl=54,craft={{key='IFF09E2AB7110C3D7,E36C0E6A4FD8827B,,,,,,', count=4}},type={25}}
,q184C4685DA60A56F={lvl=54,craft={{key='IFE4A871D44B75D12,139C949E497834E5,,,,,,', count=1},{key='IFA11208B441EF5BB,14A9ABD78D41DFED,,,,,,', count=8},{key='IFE4A871E650E36E4,DF77471096246154,,,,,,', count=1}},type={4}}
,qFB12680D9C6967EA={lvl=54,craft={{key='IFEF55D32B65EE48D,46EC84C296E1BD60,,,,,,', count=4}},type={25}}
,qFA8BEC69CCFE544A={lvl=54,craft={{key='IFEF55D32B65EE48D,46EC84C296E1BD60,,,,,,', count=4}},type={25}}
,q386DB01FD8EF488E={lvl=54,craft={{key='IFAF733F366B770C2,4F11FA4EFCA54005,,,,,,', count=4},{key='IFA1120918E5C7990,0FBAF9CB64D1244A,,,,,,', count=6}},type={4}}
,q710ECB9AC2562405={lvl=54,craft={{key='IFAF733F2C28D3A8E,3FFE9205CDC12262,,,,,,', count=3},{key='IFAF733F366B770C2,4F11FA4EFCA54005,,,,,,', count=2},{key='IFA1120918E5C7990,0FBAF9CB64D1244A,,,,,,', count=5}},type={4}}
,q69FCB137C68B4EF2={lvl=54,craft={{key='IFA1120918E5C7990,0FBAF9CB64D1244A,,,,,,', count=10}},type={4}}
,q5318B7D7423E2D51={lvl=54,craft={{key='IFA11208E7343A638,3CD0476FC7839796,,,,,,', count=10}},type={4}}
,q5BC3AFB4A7DC1420={lvl=54,craft={{key='IFA11208E7343A638,3CD0476FC7839796,,,,,,', count=4},{key='IFE4A8715B39082E9,F0E4215A212090AC,,,,,,', count=6}},type={4}}
,qFBD6B566595C8AEC={lvl=54,craft={{key='IFB8E943091746CA6,C9DFF9A80DD7E6F4,,,,,,', count=4}},type={25}}
,qFA4B3762EBF75434={lvl=54,craft={{key='IFB8E943091746CA6,C9DFF9A80DD7E6F4,,,,,,', count=4}},type={25}}
,qFDB7985E78686A7C={lvl=54,craft={{key='IFA54846F87249697,0547889E1BC77B01,,,,,,', count=4}},type={25}}
,qFC697020237FAC1C={lvl=54,craft={{key='IFA54846F87249697,0547889E1BC77B01,,,,,,', count=4}},type={25}}
,qFF77FBC1C8728C4D={lvl=54,craft={{key='IFA54846D62A56EE5,163FE66BD42739DC,,,,,,', count=4}},type={25}}
,qFC1D597A079F921B={lvl=54,craft={{key='IFA54846D62A56EE5,163FE66BD42739DC,,,,,,', count=4}},type={25}}
,qFFBDCA73D8E92AEA={lvl=54,craft={{key='IFA54846EAF5A4499,C1E16C8AFDC4F93D,,,,,,', count=4}},type={25}}
,qFDBDAD0A3020D8F5={lvl=54,craft={{key='IFA54846EAF5A4499,C1E16C8AFDC4F93D,,,,,,', count=4}},type={25}}
,qFFDE5879FCEFA11C={lvl=54,craft={{key='IFB8E942E86E005A3,04E012BB7D883BAE,,,,,,', count=4}},type={25}}
,qFEBA5D81D37C145C={lvl=54,craft={{key='IFB8E942E86E005A3,04E012BB7D883BAE,,,,,,', count=4}},type={25}}
,qFCC531DD1ED7B53B={lvl=54,craft={{key='IFB8E942FA413B0B5,C5BE8F886A4FBD9E,,,,,,', count=4}},type={25}}
,qFB3041D7C371F755={lvl=54,craft={{key='IFB8E942FA413B0B5,C5BE8F886A4FBD9E,,,,,,', count=4}},type={25}}
,q1DBF05AA65183F8C={lvl=54,craft={{key='IFE4A871E650E36E4,DF77471096246154,,,,,,', count=2},{key='IFA11208B441EF5BB,14A9ABD78D41DFED,,,,,,', count=8}},type={4}}
,qFEA9C462AC9823D3={lvl=54,craft={{key='IFF09E2A9468F3DB9,2AE7CBAAA1AFED79,,,,,,', count=4}},type={25}}
,qFA6330DA98A20CD3={lvl=54,craft={{key='IFF09E2A9468F3DB9,2AE7CBAAA1AFED79,,,,,,', count=4}},type={25}}
,qFDC9330B7216D06A={lvl=54,craft={{key='IFF09E2AA63F6F61F,BCEA22C02D0D37F1,,,,,,', count=4}},type={25}}
,qFAB719AAEA1DDB28={lvl=54,craft={{key='IFF09E2AA63F6F61F,BCEA22C02D0D37F1,,,,,,', count=4}},type={25}}
,qFDBBB07379B265E9={lvl=54,domain="ia"}
,qFD70CECC61E98300={lvl=54,domain="ia"}
,qFD4FF0B0266E3C75={lvl=54,domain="ia"}
,qFC932E7030E2A868={lvl=54,domain="ia"}
,qFAEFFB73630691D9={lvl=54,domain="ia"}
,q2B4742CECF5132BF={lvl=54,scene="The Eternal Assault",type={4},giver='U7D9DDC375055F348'}
,qFD4CF189C2F4DA12={lvl=54,scene="Western Commons",type={6}}
,qFCEB892B08CBBD8A={lvl=54,domain="ia"}
,qFFBB16D13A406EB2={lvl=54,scene="Behemoth Graveyard",giver='UFCC356ED6312CB48'}
,qFE53658F482386BE={lvl=54,domain="ia"}
,qFBF3CC73774D564B={lvl=54,domain="ia"}
,qFBE8839773DF84DA={lvl=54,domain="ia"}
,qFB905ACA3F72199F={lvl=54,domain="ia"}
,qFA9449DE49326522={lvl=54,domain="ia"}
,qFFA610A36FB88C84={lvl=54,domain="ia"}
,qFF1C38E74C56C6CE={lvl=54,domain="ia"}
,qFEF5A7A61B7B221C={lvl=54,domain="ia"}
,qFD6028204A1A5D9B={lvl=54,domain="ia"}
,qFA76D6C23B894E4E={lvl=54,domain="ia"}
,q6E9120008E815161={lvl=54,scene="The Eternal Assault",type={15,10},giver='U119F7D7F585A1558'}
,qFFA5A54DAE468A88={lvl=54,scene="Western Commons",type={4,6},giver='UFF9CBF045F74E0DC'}
,q361CB71A4D95E8A0={lvl=54,domain="guild"}
,qFF81C9BDC4F02B95={lvl=54,scene="Strozza Estate",type={1},giver='UFF7B1E2F5EA3D9C4'}
,qFD5500254BF521F2={lvl=54,scene="Western Commons",type={6}}
,qFDDF67A4E905AC28={lvl=54,scene="Strozza Estate",type={6}}
,qFF8916A263F03DE2={lvl=54,use={{key='IFDDD303CACC2D6A5,CFA6E05788154433,,,,,,', count=1}},giver='UFBB73D2C11C10628'}
,qFF71B78B0052355E={lvl=54,scene="Strozza Estate",type={6}}
,qFFC0B2E60A8BBAA1={lvl=54,scene="Behemoth Graveyard",type={1,6},giver='UFD8333DF620FDBFA'}
,qFFFE5D141A90397E={lvl=54,domain="ia"}
,qFEB3E3293816B12D={lvl=54,domain="ia"}
,qFC218292016B5832={lvl=54,domain="ia"}
,qFB3FBE647209B273={lvl=54,domain="ia"}
,qFA813D4B27259988={lvl=54,domain="ia"}
,qFEAE984615834F25={lvl=54,domain="ia"}
,qFD3B66686FD2E72F={lvl=54,domain="ia"}
,qFCA211B0473BE2B0={lvl=54,domain="ia"}
,qFCA09FD3317BF35D={lvl=54,domain="ia"}
,qFB4EACDF59E1A34C={lvl=54,domain="ia"}
,q0E012DCA019DFDEE={lvl=54,domain="guild"}
,qFFDD1073075DE4F0={lvl=54,scene="Western Commons",type={4},giver='UFFAB364816CA0EF2'}
,q30D866B63194E08B={lvl=54,scene="The Hollow",type={8},giver='U505A5EBA34C2555D'}
,qFFBA602D9C1CA2AA={lvl=54,scene="Western Commons",giver='UFFAB364816CA0EF2'}
,q2AB1F6D4D70D20E3={lvl=54,scene="Valley of Bones",type={4},giver='U119F7D7F585A1558'}
,qFDD88E5BF4136AA9={lvl=54,scene="Western Commons",type={6}}
,qFFD367F8E66A0302={lvl=54,type={3},giver='UFFEEDA0337EAE505'}
,qFFB03A20C9D2F39A={lvl=54,scene="Western Commons",type={4},giver='UFFED64A920D8D6D3'}
,qFE0311F65A374790={lvl=54,domain="ia"}
,qFD4809E00B2905C8={lvl=54,domain="ia"}
,qFD2ABCC1659C0A7C={lvl=54,domain="ia"}
,qFD15FBEF20926C48={lvl=54,domain="ia"}
,qFB602E941B1C4310={lvl=54,domain="ia"}
,qFF90867D1EB94842={lvl=54,scene="Western Commons",type={6},giver='UFF8D05886AF6A913'}
,qFFDAD16417D9EDF2={lvl=54,domain="ia"}
,qFDF8957167A152FE={lvl=54,domain="ia"}
,qFBF6725761DC9D9B={lvl=54,domain="ia"}
,qFB02571930056342={lvl=54,domain="ia"}
,qFABC87B348AA6DBC={lvl=54,domain="ia"}
,qFA641845DE298F72={lvl=54,scene="Behemoth Graveyard",type={6}}
,qFFF0B12070153788={lvl=54,scene="Strozza Estate",type={6},giver='UFFAB364816CA0EF2'}
,qFF9A3E0B233A3F17={lvl=54,scene="Behemoth Graveyard",type={6},giver='UFA542A5D3F86B6A8'}
,qFABA1E2CA3773B6A={lvl=54,scene="Western Commons",type={6}}
,qFA71569EA28F0F2E={lvl=54,scene="Western Commons",type={6}}
,qFECFE86C4E0F2AD0={lvl=54,domain="ia"}
,qFCBB56BB7E6034EC={lvl=54,domain="ia"}
,qFBC118C7729B41ED={lvl=54,domain="ia"}
,qFBBBA6A91ABA0A37={lvl=54,domain="ia"}
,qFA3C40A20D3C85DB={lvl=54,domain="ia"}
,qFF8EFE0D09958A5C={lvl=54,domain="ia"}
,qFFBEB48E7183EC2E={lvl=54,scene="Strozza Estate",type={1,9}}
,qFF8D65E270C25EBC={lvl=54,scene="Western Commons",type={9,1}}
,qFEF8AFDD66E3E8DA={lvl=54,scene="Behemoth Graveyard",type={9,1}}
,qFEB599F96F191DC2={lvl=54,scene="Behemoth Graveyard",type={9,1}}
,qFB76339F5FDDB9A2={lvl=54,scene="Behemoth Graveyard",type={1,9}}
,qFF710E9B778A7E39={lvl=54,scene="Behemoth Graveyard",type={1,9}}
,qFAA66101AA2B6D5A={lvl=54,scene="Reservoir",type={9,1}}
,qFE8C32D81DAC4241={lvl=54,scene="Western Commons",type={9,1}}
,qFD22FB5C6EA9A8FA={lvl=54,scene="Behemoth Graveyard",type={1,9}}
,q7327F2DF6077A9E3={lvl=54,scene="Strozza Estate",type={9,1}}
,q5788FBA4CDDAD0C6={lvl=54,scene="Western Commons",type={1,9}}
,q05BE1E69B322152E={lvl=54,scene="Reservoir",type={1,9}}
,qFA90F3AC9FA2CFC9={lvl=54,scene="Behemoth Graveyard",type={9,1}}
,qFF283585A28D3CD5={lvl=54,scene="Behemoth Graveyard",type={1,9}}
,qFF7BFD94C5F460CF={lvl=54,scene="Strozza Estate",type={9,1}}
,qFE5D00F944D83DD9={lvl=54,scene="Behemoth Graveyard",type={1,9}}
,qFF540CA067AFC5EB={lvl=54,scene="Western Commons",type={1,9}}
,qFFEAF722A535FDFB={lvl=54,scene="Western Commons",type={1,9}}
,qFF3DFB16392B88D3={lvl=54,domain="ia"}
,qFBB02F0C13FD0E00={lvl=54,domain="ia"}
,qFB5D687B38C254AB={lvl=54,domain="ia"}
,qFA9E5C3428EBDA7F={lvl=54,domain="ia"}
,qFA893D21209FB294={lvl=54,domain="ia"}
,qFFADFB1FB5237AD3={lvl=54,scene="Strozza Estate",type={4,6},giver='UFFAB364816CA0EF2'}
,qFEF3DF135BA5F6FC={lvl=54,domain="ia"}
,qFC525ABC00B98272={lvl=54,domain="ia"}
,qFC18475E1FDC17EA={lvl=54,domain="ia"}
,qFB5277732EE23346={lvl=54,domain="ia"}
,qFAAEA0564DD9A00B={lvl=54,domain="ia"}
,qFC38D40B865F35F9={lvl=54,giver='UFBB73D2C11C10628'}
,qFFEEEFA59EAF5E5A={lvl=54,scene="Behemoth Graveyard",type={10,1},giver='UFE8FBC586B0E8252'}
,qFFDC678FBF495F07={lvl=54,type={8},giver='UFF8D05886AF6A913'}
,q3354AA5474FB0F39={lvl=54,type={16,1}}
,q62CF5BD6821A0271={lvl=54,type={16,1}}
,qFDD9F53F7CCCA01D={lvl=54}
,qFFF0CA2199683A59={lvl=54,giver='UFFAB364816CA0EF2'}
,qFFC5C4619203EAF6={lvl=54,scene="Behemoth Graveyard",type={6,1,4},giver='UFF71FDDA6DA9FC12'}
,qFFE369D74D0F72CF={lvl=54,scene="Strozza Estate",type={6},giver='UFFEEDA0337EAE505'}
,q40DEDE9359D9F011={lvl=54}
,qFC8FDB8A9BA7AA4D={lvl=54,giver='UFFED64A920D8D6D3'}
,qFA908378E6853191={lvl=54,giver='UFFAB364816CA0EF2'}
,qFE13968E73985889={lvl=54,scene="Reservoir",type={6}}
,qFDE4136F670FCA49={lvl=54,giver='UFBB73D2C11C10628'}
,qFC9A64DF8B12771F={lvl=54,domain="guild"}
,q5EB3FA707555F75A={lvl=54,domain="guild"}
,qFD2EBA1B8AF77C53={lvl=54,scene="Reservoir",type={15,6}}
,qFFD4C8B070156AB7={lvl=54,scene="Strozza Estate",type={4,6},giver='UFFED64A920D8D6D3'}
,qFF9D6FF9F3E6DB95={lvl=54,scene="Soros Estate",type={1},giver='UFFBEFBD376671E16'}
,q09A59E5AC635B698={lvl=54,scene="The Hollow",type={8},giver='U505A5EBA34C2555D'}
,q4DF7D8813632D6AD={lvl=54,giver='UFF69C9A616A3E348'}
,qFFCE17341D7995AE={lvl=54,domain="ia"}
,qFFA1B91A14F6A001={lvl=54,domain="ia"}
,qFF133E2C16872B2B={lvl=54,domain="ia"}
,qFED51BB67D966CC3={lvl=54,domain="ia"}
,qFC4ECE3007611F93={lvl=54,domain="ia"}
,qFC24991C49064F02={lvl=55,scene="Necropolis",type={8},giver='UFFFEF38D665A5A37'}
,qFFCDDB7403EF6562={lvl=55,domain="ia"}
,qFE21213E410C4561={lvl=55,domain="ia"}
,qFD66CDBC0900411C={lvl=55,domain="ia"}
,qFC66368566980E71={lvl=55,domain="ia"}
,qFBAB138B06BB30E3={lvl=55,domain="ia"}
,qFFC52BEC26DCF19F={lvl=55,domain="ia"}
,qFE63F165206B2D43={lvl=55,domain="ia"}
,qFD236119688A1BD7={lvl=55,domain="ia"}
,qFCFC7AD446E443A1={lvl=55,domain="ia"}
,qFA2DA78D1977DBDB={lvl=55,domain="ia"}
,qFDECAA2F41AC88C1={lvl=55,scene="Avendrus Estate",type={6}}
,qFFDD55C3F10C27E8={lvl=55,type={3},giver='UFB7E6F3B5DA11B9B'}
,qFDEB6A207523E87C={lvl=55,type={3},giver='UFB7E6F3D7FF581F9'}
,qFA18A2A77C50C2AB={lvl=55,type={3},giver='UFE31C7EA1DD226F6'}
,qFF28CF8D0040469C={lvl=55,domain="ia"}
,qFE3506FD74C0A62A={lvl=55,domain="ia"}
,qFCDF064205C08369={lvl=55,domain="ia"}
,qFB3742946E5D05C4={lvl=55,domain="ia"}
,qFAB34C3B487E3BBA={lvl=55,domain="ia"}
,qFCAB35C5AF2A3D4C={lvl=55,scene="Necropolis",type={6},giver='UFFFEF38D665A5A37'}
,qFF397E1A067EDA80={lvl=55,domain="ia"}
,qFE2B1C602DB5CB52={lvl=55,domain="ia"}
,qFB81422968C9A7FE={lvl=55,domain="ia"}
,qFB667FF8418C2D1B={lvl=55,domain="ia"}
,qFB66377C1932152B={lvl=55,domain="ia"}
,qFE8583E445BFF55F={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD41F1CB5961621E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAD039373F0978A2={lvl=55,scene="Fetid Plains",domain="ia"}
,qFACFA05B15A5F802={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAB740320BFA23D9={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFA7F94D15A38754={lvl=55,scene="Necropolis",type={6,1},giver='UFFD17583781E6344'}
,qFFB5E8D8D4F625EB={lvl=55,scene="Fetid Plains",type={6,1,4},giver='UFA2FDB9C7E261AFF'}
,q221C8D6BC39A7E52={lvl=55,scene="Necropolis",type={24},giver='UFB4386CD198F90D7'}
,qFBA96755952CD1FF={lvl=55,scene="Villa Orphela",type={6}}
,qFB2AD278F892DB0F={lvl=55,scene="Villa Orphela",type={6}}
,qFAB78D748A740361={lvl=55,domain="pvp",giver='U679C15062B0D5DB5'}
,qFFCBD57FA2D1213B={lvl=55,type={8,5},giver='UFFED64A920D8D6D3'}
,qFFC269D1D6BDA24F={lvl=55,type={8},giver='UFF733C94368E4714'}
,qFCCBD716EBE88509={lvl=55,scene="Fetid Plains",type={4},giver='UFBFD4D16209CCCA6'}
,qFBC57DF490497F90={lvl=55,domain="pvp",giver='U679C15062B0D5DB5'}
,qFC2CF5D10ABC7817={lvl=55,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFB7124873866F2A1={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFBBEE29BCC7E550={lvl=55,scene="Fetid Plains",type={10},giver='UFFF9526349775008'}
,qFFBA5FBBDB53E6EF={lvl=55,type={14},giver='UFFF9F58C52AC593B'}
,qFECC04B16E0769AA={lvl=55,domain="ia"}
,qFE2E242F778DEACA={lvl=55,domain="ia"}
,qFD8CAE333F71EB8D={lvl=55,domain="ia"}
,qFC2C8A2D2B745164={lvl=55,domain="ia"}
,qFAF954813A51CD1A={lvl=55,domain="ia"}
,qFF97E8D1AEC0E6BD={lvl=55,type={14},giver='UFFCC50230AEFDE2F'}
,qFFF7A596BCAAC4CE={lvl=55,scene="Fetid Plains",type={6,4},giver='UFF90D04C09ABE324'}
,qFECB5F8C32976D1B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFEAE9CFB245FE4E4={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC5B09ED762EC160={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC32608465D09F50={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA27771F362F8D33={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAD57563ADB330C8={lvl=55,domain="pvp",giver='U679C15062B0D5DB5'}
,q3596AE16F7CD8EC1={lvl=55,scene="Necropolis",use={{key='I4E48624193F5C33D,22BB27F7518A5401,,,,,,', count=4}},type={24},giver='UFA0E05111393200C'}
,qFA2E70398B56C7CD={lvl=55,scene="Necropolis",type={3,1,11},giver='UFD22223303767452'}
,qFEFFFDC071BE911D={lvl=55,domain="ia"}
,qFBF389C45C265A6E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD5B66ED5C5BB68D={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFB571380AEEC68C={lvl=55,domain="ia"}
,qFCA2B3F548F84E78={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC32E16E7F6B2EC2={lvl=55,domain="ia"}
,qFE466A76302AFCBB={lvl=55,domain="ia"}
,qFFF8CAD0493E920E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCA003D8532AE059={lvl=55,scene="Fetid Plains",domain="ia"}
,qFEA69EC71044A421={lvl=55,domain="ia"}
,qFF9895DE50D0641A={lvl=55,domain="ia"}
,qFC9CFBD35E39AB84={lvl=55,domain="ia"}
,qFC08328E34B5D4A4={lvl=55,domain="ia"}
,qFABD00547EB47744={lvl=55,domain="ia"}
,qFAA04B2C1374E297={lvl=55,domain="ia"}
,qFA5A4E7308D0928F={lvl=55,domain="ia"}
,qFE40096850754B6A={lvl=55,domain="ia"}
,qFE3B65E7262456AC={lvl=55,domain="ia"}
,qFDD153947AC9438B={lvl=55,domain="ia"}
,qFB8CD0C57B476E49={lvl=55,domain="ia"}
,qFB65C58940A7186B={lvl=55,domain="ia"}
,q22B3A191D424827E={lvl=55,scene="Necropolis",type={24},giver='UFE89328A5F93C6B5'}
,q00B7E3485EC6FC04={lvl=55,scene="Necropolis",type={24},giver='UFE89328A5F93C6B5'}
,qFC3EE58617758C5D={lvl=55,scene="Fetid Plains",type={4},giver='UFA987DC05F80A9B7'}
,qFD070061331815B5={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCF5EC3D6324A21B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCD27694206794F6={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC279B3647601DBE={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB83051B4B4F2E58={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF0235347C12550F={lvl=55,scene="Fetid Plains",domain="ia"}
,qFDA3E7FB570AD817={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD450A81249DF840={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD0181366BED055E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBC81779709E2408={lvl=55,scene="Fetid Plains",domain="ia"}
,qFED7BD2457C8B1D4={lvl=55,scene="Fetid Plains",domain="ia"}
,qFEBDC27F4AAB8262={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD9E927F3C68288F={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCD593DF4800FEE0={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA49B7C07AEFAA7D={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF8A40ED22FC564B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD8037CC7AE64936={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCF26AE97C1AA804={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB6482CD4D028C96={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAB2C92F04CC2B4C={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF09A375B33FAFF2={lvl=55,scene="Avendrus Estate",type={6}}
,qFFCE64410D5A5112={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF1BC45D5AD2460F={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD5D8348436615BA={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBC39102773427A7={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA447124735A82F3={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD5A27B507722F62={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBFD8DA97AC48CF8={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBC8ACB81B56201D={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB96BFB405C1AE48={lvl=55,scene="Fetid Plains",domain="ia"}
,qFADE82553A27050E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE4CE1FD52482613={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE5CBF4F76E05846={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE4B984D0F444D2D={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCAA840930FF3130={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC7C8D8B21C233E3={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA51019C404C51ED={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFA12D77E564B3B4={lvl=55,scene="Necropolis",type={1,14},giver='UFFFEF38D665A5A37'}
,qFF71BA11BA147E5B={lvl=55,type={14},giver='UFFCC50230AEFDE2F'}
,qFAEA0ACEE29CDEBA={lvl=55,scene="Fetid Plains",type={2},giver='UFBFD4D16209CCCA6'}
,qFA399EC210831875={lvl=55,scene="Villa Orphela",type={6}}
,q43B583998B0CA8DC={lvl=55,scene="Villa Orphela",type={6}}
,qFB5D320D908511AF={lvl=55,scene="Fetid Plains",type={13}}
,qFEA2F96F63F1D22F={lvl=55,scene="Fetid Plains",type={2},giver='UFC94686A03D26F38'}
,qFFD989DBE274E321={lvl=55,type={1},giver='UFFBEE4A75A41CA8E'}
,qFF79F49F4E27764A={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE9A986B574D8320={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE1CD5A7683E5455={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB393E0666BA7175={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA6A542912000899={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFFAB6A045F0BA0B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE9BC0285031CBAC={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD52850512420441={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB0E5505462B616D={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA1EB4F942F10079={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE9F1962CE7994F0={lvl=55,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFE8B04C109A4D934={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFFFDB0847C8CBB4={lvl=55,type={14},giver='UFFF9F58C52AC593B'}
,qFFB4F97B01B612EE={lvl=55,type={8,5},giver='UFF8E758746DD069A'}
,qFFE9A40AA9AF2FAC={lvl=55,type={6},giver='UFFC062F85985B105'}
,q03B675C64D67B813={lvl=55,type={17}}
,q35EF939A7C38746B={lvl=55,type={17}}
,qFE632A8D671FB3FC={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE42B7440F0BCCC6={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD1D18E803709941={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC8FA9DF586CC553={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB73D6B61935E289={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCABF171ED70FD40={lvl=55,scene="Fetid Plains",type={8},giver='UFA972B6602E782EB'}
,qFA6A22D92141AE62={lvl=55,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFFAED18FE31AF9F5={lvl=55,type={14},giver='UFFF9F58C52AC593B'}
,qFF9EC8302C760701={lvl=55,type={4,6},giver='UFFC062F85985B105'}
,qFE3C080E0A1B5746={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB941F6E03298028={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAC201E92DC315ED={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAAA2D4432A1AC66={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA64ABA66FAD9F3A={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFE4CCCA13481810={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD5B6BAF5F0E97A1={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD492D607876D0EA={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB2A0E5732C6D2E5={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA523BFC723A5A18={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBB00F2C9CDD1480={lvl=55,scene="Fetid Plains",type={13}}
,qFB476B5197B55540={lvl=55,scene="Fetid Plains",type={1,9}}
,qFB5A188C9A667BE8={lvl=55,scene="Arkella Estate",type={9,1}}
,qFB72B604A8FFFC28={lvl=55,scene="Auroborus Woods",type={9,1}}
,qFC45D8335DD813F4={lvl=55,scene="Fetid Plains",type={9,1}}
,qFC23FF80941BFDB0={lvl=55,scene="Fetid Plains",type={1,9}}
,qFFF3FF2C5F79D7F9={lvl=55,scene="Arkella Estate",type={9,1}}
,q5919042878A7E285={lvl=55,scene="Auroborus Woods",type={1,9}}
,qFD0B6960674EF3C7={lvl=55,scene="Fetid Plains",type={1,9}}
,qFFADC12BEC4E0E94={lvl=55,scene="Fetid Plains",type={1,9}}
,qFCD0EA7C8C1221AC={lvl=55,scene="Arkella Estate",type={1,9}}
,qFF9703FC9AB2D263={lvl=55,scene="Arkella Estate",type={1,9}}
,qFD0C9AA5A9F4D9E3={lvl=55,scene="Auroborus Woods",type={1,9}}
,qFEAF5A6B261250B5={lvl=55,scene="Auroborus Woods",type={1,9}}
,qFED8F849529F04BC={lvl=55,scene="Arkella Estate",type={1,9}}
,qFA15BA933F9D3852={lvl=55,scene="Fetid Plains",type={9,1}}
,qFBFCE344A01A89C2={lvl=55,scene="Arkella Estate",type={9,1}}
,qFA783B6383FCCD9A={lvl=55,scene="Auroborus Woods",type={6}}
,qFF78FF93096F2E42={lvl=55,scene="Fetid Plains",type={4},giver='UFBFD4D16209CCCA6'}
,qFFAF835A4FA95BEC={lvl=55,domain="ia"}
,qFE50F769774C4CFF={lvl=55,domain="ia"}
,qFCB2AF4E1B88A708={lvl=55,domain="ia"}
,qFBD7BDA67F9541B3={lvl=55,domain="ia"}
,qFA3E5BF975FD800B={lvl=55,domain="ia"}
,qFFFAD7C417F01055={lvl=55,domain="ia"}
,qFF5ABE383C28C44C={lvl=55,domain="ia"}
,qFEB94D8601D97710={lvl=55,domain="ia"}
,qFE8D47341DD9373F={lvl=55,domain="ia"}
,qFAC911C46BF910F1={lvl=55,domain="ia"}
,qFEE4011F0B77EB61={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE615107574E7DF7={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC9FE0D81E121AFD={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC035B3612D0D9B2={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBDB480D4417B7B7={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFE3047D7EA75B8C={lvl=55,scene="Fetid Plains",type={6,4},giver='UFFCDA002042C39C8'}
,qFF471E764A1E2FBF={lvl=55,domain="ia"}
,qFD276000381F063E={lvl=55,domain="ia"}
,qFA66E7261917D699={lvl=55,domain="ia"}
,qFA5553A85DC2C768={lvl=55,domain="ia"}
,qFA2E096D70F80DE1={lvl=55,domain="ia"}
,qFCCE6CB9B6307DAF={lvl=55,scene="Camp Talon",use={{key='IFB8E9AF717D9E76D,106E33AB648A2345,,,,,,', count=8}},type={8},giver='UFC2B5D961EBF54FF'}
,q3539ED667F29386C={lvl=55,scene="Necropolis",type={24},giver='UFC2B2FE328973345'}
,qFA91A84E0257413E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE802D671070CD65={lvl=55,scene="Fetid Plains",domain="ia"}
,qFDE2E79B6FABAC99={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCE03C8139EDF6F9={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA399D03653636E3={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA1A4FB12D41D93A={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA8A89991D5358F3={lvl=55,scene="Fetid Plains",domain="ia",giver='UFD8C2A746362E5E2'}
,q6705BE1ED1553EF1={lvl=55,giver='UFF69C9A616A3E348'}
,qFE3E464D47C20CA9={lvl=55,scene="Fetid Plains",domain="ia"}
,qFDF9235D6E69A9A2={lvl=55,scene="Fetid Plains",domain="ia"}
,qFDEDFD3169C9FCD6={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD2E70022661D2C8={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBC073C2528D69CF={lvl=55,scene="Fetid Plains",domain="ia"}
,q65A35D704DC66CC4={lvl=55,scene="Necropolis",type={6,3},giver='UFB4386CD198F90D7'}
,qFED94BDB473224B7={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE977428003EFD4B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB579C9323016169={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA5C15EF60F87729={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA3FCBA51AF6E763={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC83EFB39FF32AC9={lvl=55,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFAF0D96AB1808825={lvl=55,domain="pvp",giver='U679C15062B0D5DB5'}
,qFFF99BB20B2CF0E2={lvl=55,scene="The Stormbreach",type={1,11},giver='UFFD17583781E6344'}
,q5F243B2395A85DF3={lvl=55,scene="Necropolis",type={1,10},giver='UFE89328A5F93C6B5'}
,qFFBA7E62141DECD2={lvl=55,type={8,5},giver='UFFBEE4A75A41CA8E'}
,qFB6C117EE4990401={lvl=55,scene="Arkella Estate",type={6}}
,qFD687D6D3D5374C4={lvl=55,scene="Valley of Bones",domain="ia"}
,qFC1A3D0E392FA272={lvl=55,domain="ia"}
,qFBFB6AE2528DCB2D={lvl=55,domain="ia"}
,qFB6BA9B86C3E4A4A={lvl=55,domain="ia"}
,qFAD9A3AD236DB587={lvl=55,domain="ia"}
,qFA7726CA07D4C0A1={lvl=55,domain="ia"}
,qFDF8E2513DDB0B23={lvl=55,domain="ia"}
,qFEB2E6B68B9C638F={lvl=55,scene="Necropolis",type={8},giver='UFFFEF38D665A5A37'}
,qFE38B0F2A07F0DDC={lvl=55,scene="The Crawl",domain="ia",giver='UFAB00E467C9F25CE'}
,qFD2C65CA4A7968BD={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCC380F607AA561B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC1B3C454E250058={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAFC0C7950BCA7C9={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA18929F70ABC6CC={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFD9D930244E3666={lvl=55,scene="Fetid Plains",type={10,4},giver='UFFCDA002042C39C8'}
,qFC6B8EBF2E21587C={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBBFEA7D0A65638B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB03C9F2470A1356={lvl=55,scene="Fetid Plains",domain="ia"}
,qFAD5A06128A377BE={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA121AF04D31AB59={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF455EC41719B758={lvl=55,scene="Fetid Plains",domain="ia"}
,qFDC45FAA3D19C45E={lvl=55,scene="Fetid Plains",domain="ia"}
,qFD730A8E424A7475={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB9C7BE16852104F={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB8EB76345D56DFB={lvl=55,scene="Fetid Plains",domain="ia"}
,qFFECF4FE05E15F4D={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF22C30F1A9BA601={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE8E1FCE113D0E64={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC711B153EC52A60={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA59269572B90B28={lvl=55,scene="Fetid Plains",domain="ia"}
,qFF4C9F4D7BBEDEAB={lvl=55,scene="Fetid Plains",domain="ia"}
,qFEAB2F3E1DA443F4={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE3225E92AEAFF6B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFCA4F15A2272F3C1={lvl=55,scene="Fetid Plains",domain="ia"}
,qFC21476F054F66FF={lvl=55,scene="Fetid Plains",domain="ia"}
,qFE8FF89FFA4E6AE9={lvl=55,scene="Fetid Plains",type={2},giver='UFBFD4D16209CCCA6'}
,q2B9E958C00000000={lvl=55,type={7}}
,qFFD23C098166E368={lvl=55,type={1},giver='UFFF9F58C52AC593B'}
,qFFFBBF4A7F4437CF={lvl=55,type={5,8},giver='UFFAB364816CA0EF2'}
,qFEEDF80F41930C8B={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBD916A91E48062F={lvl=55,scene="Fetid Plains",domain="ia"}
,qFBD7B8AF4C8B3D16={lvl=55,scene="Fetid Plains",domain="ia"}
,qFB8906FA1FBEE737={lvl=55,scene="Fetid Plains",domain="ia"}
,qFA9187AA073C72B6={lvl=55,scene="Fetid Plains",domain="ia"}
,qFADBE3948FF25597={lvl=55,scene="Necropolis",type={11,3},giver='UFD22223303767452'}
,qFF9013879534296C={lvl=55,type={1},giver='UFFF9F58C52AC593B'}
,qFFA89738F669A494={lvl=55,scene="Necropolis",type={1,14},giver='UFFD17583781E6344'}
,qFFC2E98B47BB26F2={lvl=55,scene="Necropolis",type={14,1},giver='UFFFEF38D665A5A37'}
,qFE44E72932EDABA6={lvl=55,domain="ia"}
,qFD233759949C0E1F={lvl=55,scene="Necropolis",type={8,22,1},giver='UFEF77790461E2E9E'}
,qFD6EC9D71261C972={lvl=55,domain="ia"}
,qFD5DCC3219E64825={lvl=55,domain="ia"}
,qFBD9965D3470A83B={lvl=55,domain="ia"}
,qFB48EF651A8AAD82={lvl=55,domain="ia"}
,qFB16178766BDD36C={lvl=55,domain="ia"}
,qFFA4544B2F9576BD={lvl=55,domain="ia"}
,qFE0E97177C51C3B2={lvl=55,domain="ia"}
,qFDAB94C90852A708={lvl=55,domain="ia"}
,qFADD125859AAB9A5={lvl=55,domain="ia"}
,qFA0E44B6547032BD={lvl=55,domain="ia"}
,qFFD44BDEBE207DFE={lvl=55,scene="Necropolis",type={14,1},giver='UFFFEF38D665A5A37'}
,qFEFE67F217001DFF={lvl=55,scene="Auroborus Woods",type={6}}
,qFF9C5E1E873135AF={lvl=55,scene="Camp Talon",type={1,4,6},giver='UFB1F1CBF27864371'}
,qFB75F0ED0BAA60A3={lvl=56,type={3},giver='UFBA051FD413E7528'}
,q18185DBC1587BE2A={lvl=56,type={3},giver='U1D94888E460980E9'}
,qFC650EB871B65B06={lvl=56,type={3},giver='UFE31C7EB2E08E9C7'}
,qFEF2FDD0E48B96AB={lvl=56,type={3},giver='UFA85F347318CE3F6'}
,qFBAB53072E503B36={lvl=56,scene="Arkella Estate",type={6}}
,qFEBED74B1C545A59={lvl=56,scene="Mired Convoy",type={16,1}}
,qFC7B5BEFEA41457C={lvl=56,scene="Soros Estate",type={6,15}}
,qFFD17FC2BD8FA362={lvl=56,scene="Soros Estate",type={1},giver='UFFFE4E3477C261BE'}
,q25696CB268F556CC={lvl=56,type={17}}
,q5B5B2B375CFBFADC={lvl=56,type={17}}
,qFDD9453C9DD55ABA={lvl=56,type={3},giver='UFBB73D2C11C10628'}
,qFE260E84D2D8B05B={lvl=56,scene="Camp Talon",type={6}}
,qFFF2FB6F2FA6709E={lvl=56,domain="ia"}
,qFFF2FB6E08118373={lvl=56,domain="ia"}
,qFFF2FB6D1344A0FF={lvl=56,domain="ia"}
,qFFF2FB6C643F6C1E={lvl=56,domain="ia"}
,qFFF2FB6B5242A0A2={lvl=56,domain="ia"}
,qFF73D99E88745E2E={lvl=56,scene="Turnis River Bunker",type={8},giver='UFFFE4E3477C261BE'}
,qFF6CBD2ADC2E59AE={lvl=56,scene="Turnis River Bunker",type={6,10},giver='UFF8CC23A3FA5985A'}
,qFFD7336EEFE6FE21={lvl=56,scene="The Pus Swamp",type={1,10},giver='UFEF77790461E2E9E'}
,qFF99EE46F2B935DE={lvl=56,type={1},giver='UFFFB1D6C740DCA76'}
,qFD36643B98382356={lvl=56,type={5},giver='UFF8796090E4D3DEB'}
,qFEFAA3A92811035B={lvl=56,domain="ia"}
,qFEFAA3A86C0AE737={lvl=56,domain="ia"}
,qFEFAA3A75D3B4859={lvl=56,domain="ia"}
,qFEFAA3A651166484={lvl=56,domain="ia"}
,qFEFAA3A52D0E87A3={lvl=56,domain="ia"}
,qFED682001AB0017C={lvl=56,domain="ia"}
,qFED681FF0FD30E52={lvl=56,domain="ia"}
,qFED681FE7EA614C8={lvl=56,domain="ia"}
,qFED681FD4CADC00B={lvl=56,domain="ia"}
,qFED681FC6A3B76C9={lvl=56,domain="ia"}
,q100D5159768C0CA3={lvl=56}
,q7E61468193B0EE32={lvl=56}
,qFD20B6D801C03C4E={lvl=56,type={5},giver='UFF69C9A616A3E348'}
,qFABC2B4E57C0A441={lvl=56,scene="Soros Estate",type={15,6}}
,qFC1F21EA338F41A6={lvl=56,domain="ia"}
,qFC1F21E934C6C158={lvl=56,domain="ia"}
,qFC1F21E80E3D2D2B={lvl=56,domain="ia"}
,qFC1F21E72DCB60D5={lvl=56,domain="ia"}
,qFC1F21E62A4719DE={lvl=56,domain="ia"}
,q27EA3ACC3CA9ABA2={lvl=56,type={16,1}}
,q4134F0BAC0FBDABB={lvl=56,type={16,1}}
,qFF8D005BB931F2D8={lvl=56,scene="Turnis River Bunker",type={8,5},giver='UFFED64A920D8D6D3'}
,qFD6D0CEFB41F8BAF={lvl=56,scene="The Pus Swamp",type={6}}
,qFF5BA1107160695F={lvl=56,domain="ia"}
,qFE4F3C3C02E93D84={lvl=56,domain="ia"}
,qFE47133D2A7A5AE4={lvl=56,domain="ia"}
,qFD59E2AB1FF4340D={lvl=56,domain="ia"}
,qFBCD5F8D1A07AA44={lvl=56,domain="ia"}
,qFB47CB713C0BD165={lvl=56,domain="ia"}
,qFD709075E1773BB6={lvl=56,scene="Camp Talon",type={6,1}}
,qFDDB88F578597F55={lvl=56,scene="The Pus Swamp",type={1,10},giver='UFC2B5D961EBF54FF'}
,qFBC891C37DAAA8C7={lvl=56,domain="ia"}
,qFBC891C21EE8FBF4={lvl=56,domain="ia"}
,qFBC891C112A4B5EB={lvl=56,domain="ia"}
,qFBC891C06578AD75={lvl=56,domain="ia"}
,qFBC891BF5FF37E7F={lvl=56,domain="ia"}
,q149F20F40A50E67F={lvl=56}
,q74DF91C17FE3EDA8={lvl=56}
,qFFB4CE9D8D9B8125={lvl=56,type={14},giver='UFF70FA22063511BC'}
,qFD0C6548B79E2821={lvl=56,scene="Camp Talon",type={6},giver='UFEF77790461E2E9E'}
,qFA2389DAAC6D9CBA={lvl=56,scene="Witch's Thicket",type={6,15}}
,q6D8DBDA66D970A17={lvl=56}
,qFCF4AE0516BC4152={lvl=56,scene="Mired Convoy",type={13}}
,qFFD03841A2A73D5E={lvl=56,scene="Turnis River Bunker",type={8},giver='UFF8CC23A3FA5985A'}
,qFFC11EEA6F1C9047={lvl=56,scene="Turnis River Bunker",type={8,5},giver='UFFAB364816CA0EF2'}
,qFD84E95481715E2C={lvl=56,scene="Soros Estate",type={15,4}}
,qFBA8307388E6C6EA={lvl=56,scene="Witch's Thicket",type={15,13}}
,qFE5425FAD189B305={lvl=56,scene="Camp Talon",type={13}}
,qFFE865223F0B84CC={lvl=56,domain="ia"}
,q67F206CB02503DC0={lvl=56,domain="ia"}
,qFBC9AB3246F459E4={lvl=56,domain="ia"}
,qFFFED7248177C4CE={lvl=56,type={14},giver='UFF70FA22063511BC'}
,q1D6F55E3C9C6F01C={lvl=56,domain="guild"}
,qFFAAEE8D7DB132E1={lvl=56,scene="Soros Estate",type={10},giver='UFFEB18A009F6E2ED'}
,qFFA67D75AF49F624={lvl=56,type={5,8}}
,q499A354A4E19D51A={lvl=56}
,qFFFF532144CA95DB={lvl=56,scene="Soros Estate",type={1,9}}
,qFE22889A94D1A9AC={lvl=56,scene="The Pus Swamp",type={1,9}}
,qFEA30851B8A78C45={lvl=56,scene="Camp Talon",type={1,9}}
,q5C4879CD68A0F25C={lvl=56,scene="Arkella Estate",type={9,1}}
,qFDC0E55E8A3668B0={lvl=56,scene="Camp Talon",type={1,9}}
,qFD6C208C98CE8798={lvl=56,scene="The Pus Swamp",type={9,1}}
,qFD00464DC76B2652={lvl=56,scene="The Pus Swamp",type={9,1}}
,qFBD11BED1249D9A5={lvl=56,scene="Auditorium Carnos",type={1,9}}
,qFE9B85D6641C632B={lvl=56,scene="Witch's Thicket",type={1,9}}
,qFC9811D4575FF859={lvl=56,scene="Dawnkeeper Vale",type={1,9}}
,qFC49C63D90BD6B3D={lvl=56,scene="Arkella Estate",type={1,9}}
,qFA30141AA5201D96={lvl=56,scene="The Pus Swamp",type={1,9}}
,qFB9484BC74EC9168={lvl=56,scene="The Pus Swamp",type={9,1}}
,qFA60FE3561667BCD={lvl=56,scene="Arkella Estate",type={1,9}}
,qFD8F1E9F7F8CC737={lvl=56,scene="The Pus Swamp",type={9,1}}
,qFFAC0257A6F30515={lvl=56,scene="Turnis Valley",type={1,9}}
,qFE2FD95D260C1399={lvl=56,scene="The Pus Swamp",type={9,1}}
,q3335215381C6A18C={lvl=56,scene="Death's Doorstep",type={1,9}}
,qFBFCFF952AABC508={lvl=56,scene="The Pus Swamp",type={1,9}}
,q318DA2E69374044C={lvl=56,scene="The Pus Swamp",type={9,1}}
,qFA1A105355E4EFB4={lvl=56,scene="Soros Estate",type={9,1}}
,qFEDFD8126D805949={lvl=56,scene="The Pus Swamp",type={9,1}}
,qFA3CEAC951F69702={lvl=56,scene="Arkella Estate",type={9,1}}
,qFFAA5D3051FF8330={lvl=56,scene="Mired Convoy",type={9,1}}
,q6BF6FCA969B19C41={lvl=56,scene="Death's Doorstep",type={1,9}}
,qFF033608D8A00968={lvl=56,type={5},giver='UFF8796090E4D3DEB'}
,qFFCB98DC5792AFC9={lvl=56,scene="Soros Estate",type={4},giver='UFF733C94368E4714'}
,qFFBB4B4AB4A6D462={lvl=56,type={14},giver='UFF70FA22063511BC'}
,qFA7529746BAD8630={lvl=56,type={17}}
,qFFAD807CD5BA4636={lvl=56,scene="The Pus Swamp",type={13}}
,qFEE6C9ADADF28FE8={lvl=56,scene="Mired Convoy",type={13}}
,qFF9FF053A55C081B={lvl=56,type={14,8},giver='UFF70FA22063511BC'}
,q2E06A4B18EBE0AC4={lvl=56,domain="guild"}
,q51450D3454FFDD31={lvl=56,domain="guild"}
,qFAC29F8F47A4EF8B={lvl=56,domain="ia"}
,qFAC29F8E319D9ED3={lvl=56,domain="ia"}
,qFAC29F8D11FE449E={lvl=56,domain="ia"}
,qFAC29F8C67B6CE47={lvl=56,domain="ia"}
,qFAC29F8B5BA67C43={lvl=56,domain="ia"}
,qFFD1F01EB6045593={lvl=56,type={14},giver='UFFFB1D6C740DCA76'}
,qFADD00ED962FF225={lvl=57,scene="Den of Lezul",type={10,6}}
,qFFAC65EC1459F4D4={lvl=57,domain="ia"}
,qFF75C7024B710E82={lvl=57,domain="ia"}
,qFC89372239905860={lvl=57,domain="ia"}
,qFBF752AE6450A570={lvl=57,domain="ia"}
,qFBE3305D7AF34BC5={lvl=57,domain="ia"}
,qFF00A5EF17BF92EA={lvl=57,domain="ia"}
,qFED0377C26CFA994={lvl=57,domain="ia"}
,qFEAF652A23839D05={lvl=57,domain="ia"}
,qFD3785C6076DCAC7={lvl=57,domain="ia"}
,qFBDDAC081BB6563E={lvl=57,domain="ia"}
,qFEB6D3756B324600={lvl=57,type={3},giver='UFE31C7EF69E3DD38'}
,qFAC777215AC49BB5={lvl=57,domain="ia"}
,qFAC7772044A12EAA={lvl=57,domain="ia"}
,qFAC7771F68CFE898={lvl=57,domain="ia"}
,qFAC7771E6EE03F04={lvl=57,domain="ia"}
,qFAC7771D0CF34E2E={lvl=57,domain="ia"}
,qFBE1C7B526D06FF1={lvl=57,domain="ia"}
,qFBE1C7B43C6C1672={lvl=57,domain="ia"}
,qFBE1C7B36A19554F={lvl=57,domain="ia"}
,qFBE1C7B22A13EF94={lvl=57,domain="ia"}
,qFBE1C7B10F11626E={lvl=57,domain="ia"}
,qFE44843D5916291B={lvl=57,domain="ia"}
,qFDA49CE81C1A1651={lvl=57,domain="ia"}
,qFC71B7D80FE104ED={lvl=57,domain="ia"}
,qFA642F3C7F6AB236={lvl=57,domain="ia"}
,qFA2E9CFA154C81D7={lvl=57,domain="ia"}
,qFFFC8DF3A3B3ACF5={lvl=57,scene="Temple of Thontic",type={1},giver='UFFACC8C8621E2E40'}
,qFDB019976FF9BFF3={lvl=57,domain="ia"}
,qFE05157FFA356F9A={lvl=57,scene="Forest of Flesh",type={4,6},giver='U478E3D1D4A32E8E8'}
,qFFB5AD0EB6B47448={lvl=57,scene="Cassana Estate",type={20},giver='UFF801CFC4496C28B'}
,qFF4E25AE180C8423={lvl=57,domain="ia"}
,qFF337B2D2DACB0B8={lvl=57,domain="ia"}
,qFDBF7CB661BD67F4={lvl=57,domain="ia"}
,qFD9F1B0B23CA0FD2={lvl=57,domain="ia"}
,qFB19649A295FE853={lvl=57,domain="ia"}
,qFF921331C25D94FC={lvl=57,scene="Cassana Estate",type={1,6,4},giver='UFFEB18A009F6E2ED'}
,qFB06D33BB698C846={lvl=57,scene="Forest of Flesh",type={10},giver='UFB1B571D744782FF'}
,qFE08F44B1D3FF613={lvl=57,domain="ia"}
,qFFB5E64F54E43904={lvl=57,scene="Temple of Thontic",type={1},giver='UFFACC8C8621E2E40'}
,qFFC3869030CFB2CB={lvl=57,domain="ia"}
,qFE2FDB075148DEF0={lvl=57,domain="ia"}
,qFCAAFF6B26B09DAD={lvl=57,domain="ia"}
,qFBA5B238306BF656={lvl=57,domain="ia"}
,qFA18F3D970A1F413={lvl=57,domain="ia"}
,qFE96AB95743ACA8B={lvl=57,domain="ia"}
,qFBC9F62D709E7D3F={lvl=57,domain="ia"}
,qFBB6515C44933B13={lvl=57,domain="ia"}
,qFBA4EBAB12D279E4={lvl=57,domain="ia"}
,qFADC8E1446C2CCE2={lvl=57,domain="ia"}
,qFFEDEB1F0CDE2160={lvl=57,scene="Mired Convoy",use={{key='IFBFBE8E1DF538EDE,23F2620A8EAA60A6,,,,,,', count=1}},type={1,10},giver='UFDFA7F9F343754DB'}
,qFF7F56F03505D184={lvl=57,domain="ia"}
,qFF57EC06767D9972={lvl=57,domain="ia"}
,qFE5519A212475BA6={lvl=57,domain="ia"}
,qFB62296E51D9F7D2={lvl=57,domain="ia"}
,qFA709BBE46F7C922={lvl=57,domain="ia"}
,qFFDCF979F5C7FFC8={lvl=57,scene="Storehouse Cassana",type={15,6}}
,qFFF3DDFD25EF164F={lvl=57,domain="ia"}
,qFF0C70922769727D={lvl=57,domain="ia"}
,qFEC2D55A5F3CCD6C={lvl=57,domain="ia"}
,qFD46D0E01F454BFF={lvl=57,domain="ia"}
,qFB56A7380206AA51={lvl=57,domain="ia"}
,qFFD9A2F7BEA6FA4C={lvl=57,scene="Temple of Thontic",type={6,8},giver='UFF825EC7712884B6'}
,qFBFF98E94E6D96DF={lvl=57,domain="ia"}
,qFBFF98E85CE1266B={lvl=57,domain="ia"}
,qFBFF98E73FE386BC={lvl=57,domain="ia"}
,qFBFF98E66D688B80={lvl=57,domain="ia"}
,qFBFF98E566C079C0={lvl=57,domain="ia"}
,qFE4A2F9E0A4F27D9={lvl=57,domain="ia"}
,qFB2CD63553BA93EE={lvl=57,domain="ia"}
,qFF1CB27F0FB82D12={lvl=57,scene="Forest of Flesh",domain="ia"}
,qFFD075533B36916E={lvl=57,domain="ia"}
,qFF42E23C1B38C56D={lvl=57,domain="ia"}
,qFEDE593B1BFD8D12={lvl=57,domain="ia"}
,qFD0962F535DC3F2A={lvl=57,domain="ia"}
,qFC0C56BD03AD723B={lvl=57,domain="ia"}
,qFB1E95014942E79A={lvl=57,domain="ia"}
,q40AE7AAFB94C3F38={lvl=57,domain="guild"}
,qFFFCB0903CCB7987={lvl=57,scene="Cassana Estate",type={15,6}}
,qFC46B179B5BC9FDB={lvl=57,scene="Den of Lezul",type={6}}
,qFD764E9A98A6C778={lvl=57,scene="Cassana Estate",type={15,6}}
,qFE2DC1C831E19583={lvl=57,domain="ia"}
,qFC12C7976CF94703={lvl=57,domain="ia"}
,qFBEEC39012D0A83F={lvl=57,domain="ia"}
,qFB30C3696ECDD2A9={lvl=57,domain="ia"}
,qFAE5D7F054A68021={lvl=57,domain="ia"}
,qFF4009228FEB65B6={lvl=57,scene="Auditorium Carnos",type={15,6}}
,qFBA3C13B66692030={lvl=57,domain="ia"}
,qFED5D34050E27741={lvl=57,domain="ia"}
,qFE79D24E7E3F9748={lvl=57,domain="ia"}
,qFE42E38F7D82EF12={lvl=57,domain="ia"}
,qFC9EF884341E7531={lvl=57,domain="ia"}
,qFC9D447E478392EC={lvl=57,domain="ia"}
,qFA6EB237631D7127={lvl=57,domain="ia"}
,qFE93C87B071708D1={lvl=57,domain="ia"}
,qFC9FE84359BE9EE2={lvl=57,domain="ia"}
,qFB8EAB352FEE0D02={lvl=57,domain="ia"}
,qFB51F1DC6D7A5874={lvl=57,domain="ia"}
,qFB264EF106B7AD19={lvl=57,domain="ia"}
,qFA6DD4BE4B13B6F3={lvl=57,type={15},giver='UFF801CFC4496C28B'}
,qFD1553D4F515C6CB={lvl=57,type={8},giver='UFF733C94368E4714'}
,qFF6DB6F075321DA7={lvl=57,domain="ia"}
,qFEF8F9B119F622D2={lvl=57,domain="ia"}
,qFCEC4D1F64160706={lvl=57,domain="ia"}
,qFBE80EBE3A2A1A64={lvl=57,domain="ia"}
,qFA6449E21F19522F={lvl=57,domain="ia"}
,qFB4D2A2E0988D1FB={lvl=57,type={17}}
,qFFEB352F34A03E6A={lvl=57,domain="ia"}
,qFFAF50C02FE221DD={lvl=57,domain="ia"}
,qFCCA1ABF313C9261={lvl=57,domain="ia"}
,qFB46F0881FD28465={lvl=57,domain="ia"}
,qFAD4EAC815FA9445={lvl=57,domain="ia"}
,qFFCB9F3E372FFD02={lvl=57,domain="ia"}
,qFF037F52002D784C={lvl=57,domain="ia"}
,qFD91D78869F79965={lvl=57,domain="ia"}
,qFCC5D1911E9E0137={lvl=57,domain="ia"}
,qFBD1CC623C0471CE={lvl=57,domain="ia"}
,qFFFD64A1C0120549={lvl=57,scene="Temple of Thontic",type={15,6}}
,qFE267E280C0E4526={lvl=57,domain="ia"}
,qFE02DB3A50BB1504={lvl=57,domain="ia"}
,qFD60496A2E8DF19F={lvl=57,domain="ia"}
,qFC728A7B06303566={lvl=57,domain="ia"}
,qFC47391C77107E5C={lvl=57,domain="ia"}
,qFCF840A994DA3AF1={lvl=57,scene="Forest of Flesh",use={{key='IFF228873979FBCD0,305ED7BCBBEDCDB7,,,,,,', count=6}},type={10,4},giver='UFDA2F89E2AD10F68'}
,qFAF95C714F8C3DA0={lvl=57,domain="guild"}
,qFCDF6253F4557688={lvl=57,scene="Den of Lezul",type={1}}
,qFF9B7E9776871CE0={lvl=57,domain="ia"}
,qFF9A1BC643FA2B77={lvl=57,domain="ia"}
,qFF7F1C08287B52DF={lvl=57,domain="ia"}
,qFDACA9B1732708CA={lvl=57,domain="ia"}
,qFBCE3923617D0BE7={lvl=57,domain="ia"}
,qFFFE5F3E2A52F239={lvl=57,domain="ia"}
,qFFE1769E112322B8={lvl=57,domain="ia"}
,qFFA35DA47DC6BA09={lvl=57,domain="ia"}
,qFEDFA90B0726096C={lvl=57,domain="ia"}
,qFA7EE99F4AFC512D={lvl=57,domain="ia"}
,qFF45006B3175BF59={lvl=57,domain="ia"}
,qFD9C2D390A15C42E={lvl=57,domain="ia"}
,qFD620B243577356C={lvl=57,domain="ia"}
,qFD170B1B2127775F={lvl=57,domain="ia"}
,qFCB777BF2A742487={lvl=57,domain="ia"}
,qFBAF849402A9ACD4={lvl=57,domain="ia"}
,q26C2F8E82582C08D={lvl=57,type={17}}
,qFDBEE1B101AE6425={lvl=57,domain="ia"}
,qFF9AF48E66802A66={lvl=57,domain="ia"}
,qFAEDF2EC477F0A0B={lvl=57,domain="ia"}
,qFA60580656438B3A={lvl=57,domain="ia"}
,qFA516D7A1AC5B4FD={lvl=57,domain="ia"}
,qFA50999A70D09451={lvl=57,domain="ia"}
,qFED47E615357020A={lvl=57,domain="ia"}
,qFEC1A9282750C41D={lvl=57,domain="ia"}
,qFDAEE29F3A4D1A79={lvl=57,domain="ia"}
,qFCDBA20271437266={lvl=57,domain="ia"}
,qFCAE21CD7B625CF0={lvl=57,domain="ia"}
,qFF98CCE4EE4A1100={lvl=57,scene="Auditorium Carnos",giver='UFFDFD5445289BD8C'}
,qFD78CA24E8FF8F5A={lvl=57,scene="Mired Convoy",type={15,10},giver='UFDFA7F9F343754DB'}
,qFFE245F9B6550A1E={lvl=57,scene="Cassana Estate",type={4,10},giver='UFFDFD5445289BD8C'}
,qFE7EB7B762E09D13={lvl=57,domain="ia"}
,qFE7EB7B63EAA64C2={lvl=57,domain="ia"}
,qFE7EB7B52F291C91={lvl=57,domain="ia"}
,qFE7EB7B41E47253B={lvl=57,domain="ia"}
,qFE7EB7B327AC2FB9={lvl=57,domain="ia"}
,q13581C5CDABE6019={lvl=57,type={17}}
,qFDFE44CB2D6C416A={lvl=57,domain="ia"}
,qFF1333DD14DAD941={lvl=57,domain="ia"}
,qFC35D9D74DB9BFAF={lvl=57,domain="ia"}
,qFA1543425F150582={lvl=57,scene="Temple of Thontic",type={1,9}}
,qFCE1ADDA607D37CA={lvl=57,scene="Forest of Flesh",type={1,9}}
,qFF9D819A96292B13={lvl=57,scene="Auditorium Carnos",type={1,9}}
,qFC3BE7A9AEF03983={lvl=57,scene="Temple of Thontic",type={9,1}}
,qFFD6450112075157={lvl=57,scene="Temple of Thontic",type={1,9}}
,qFE6B06139CA3A0A1={lvl=57,scene="Dawnkeeper Vale",type={1,9}}
,qFC81956A7D346611={lvl=57,scene="Auditorium Carnos",type={1,9}}
,qFA23A79B93920602={lvl=57,scene="Forest of Flesh",type={1,9}}
,q12C9B9C84090C928={lvl=57,scene="Forest of Flesh",type={1,9}}
,qFD4AEDB28618BFE5={lvl=57,scene="Turnis Valley",type={9,1}}
,qFD2F22727216F416={lvl=57,scene="Forest of Flesh",type={1,9}}
,q534F5265A6181E33={lvl=57,scene="Forest of Flesh",type={9,1}}
,qFBA1E91380E45230={lvl=57,scene="Den of Lezul",type={9,1}}
,qFF3FA57074391022={lvl=57,scene="Forest of Flesh",type={9,1}}
,q3F12296E20317966={lvl=57,scene="Forest of Flesh",type={1,9}}
,qFA3438E9904C01C1={lvl=57,scene="Auditorium Carnos",type={1,9}}
,qFE4ACEB56FF803C5={lvl=57,scene="Turnis Valley",type={9,1}}
,qFB23076D7FBA7346={lvl=57,scene="Cassana Estate",type={1,9}}
,qFFA8F9CE1B4B6841={lvl=57,scene="Dawnkeeper Vale",type={9,1}}
,qFF6AB7D898569E85={lvl=57,scene="Cassana Estate",type={9,1}}
,qFDFCA766A3D3FD44={lvl=57,scene="Storehouse Cassana",type={15,4}}
,qFEBFBA381BC02704={lvl=57,type={8},giver='UFF733C94368E4714'}
,qFF9BD5A3DB10A19F={lvl=57,scene="Cassana Estate",type={6},giver='UFFFE4E3477C261BE'}
,qFE3AED0D586BDC75={lvl=57,domain="ia"}
,qFCF9D3601C548419={lvl=57,domain="ia"}
,qFC1E2AD95075BFCC={lvl=57,domain="ia"}
,qFAB6442F106F2CF9={lvl=57,domain="ia"}
,qFA9E83897BFC75F5={lvl=57,domain="ia"}
,qFFD8BBC333906A12={lvl=57,domain="ia"}
,qFD69451C3F52C282={lvl=57,domain="ia"}
,qFB835BC018BB04FF={lvl=57,domain="ia"}
,qFB65C0D35D3D18D0={lvl=57,domain="ia"}
,qFAE65AE95D7BC852={lvl=57,domain="ia"}
,qFFD593AB09E0A044={lvl=57,domain="ia"}
,qFEFD4DDE28AC2600={lvl=57,domain="ia"}
,qFD043A8A6448434F={lvl=57,domain="ia"}
,qFB43EC5817701A80={lvl=57,domain="ia"}
,qFAEA90081A90E57E={lvl=57,domain="ia"}
,qFFBC838D749165CB={lvl=57,domain="ia"}
,qFF1E83F45BE17AC0={lvl=57,domain="ia"}
,qFD1109E25F3430FD={lvl=57,domain="ia"}
,qFB1010DB4F689EF8={lvl=57,domain="ia"}
,qFAC85BF70236724D={lvl=57,domain="ia"}
,qFFEFBE9DA76949EA={lvl=57,scene="Temple of Thontic",type={1,4,6},giver='UFFACC8C8621E2E40'}
,qFBC2E7AB3686B101={lvl=57,domain="ia"}
,qFF34FC370716D5DC={lvl=57,domain="ia"}
,qFFABFB472F8B974B={lvl=57,domain="ia"}
,qFED0E24D559D4DD0={lvl=57,domain="ia"}
,qFE0D823B670B0C3D={lvl=57,domain="ia"}
,qFDD311202AE6AB44={lvl=57,domain="ia"}
,qFC5536403058590B={lvl=57,domain="ia"}
,qFEB91650677646D8={lvl=57,domain="ia"}
,qFE342BD719708A5F={lvl=57,domain="ia"}
,qFCBA6F412C2C2FAC={lvl=57,domain="ia"}
,qFC0728AC1B195A07={lvl=57,domain="ia"}
,qFA1C880744B8D39E={lvl=57,domain="ia"}
,qFFF485AC25C99F00={lvl=57,domain="ia"}
,qFF53EE78134514CA={lvl=57,domain="ia"}
,qFE70647226147A20={lvl=57,domain="ia"}
,qFDD8C7D64303BC79={lvl=57,domain="ia"}
,qFB79C37B2708F2C5={lvl=57,domain="ia"}
,qFCD4C3436AEABF2A={lvl=57,domain="ia"}
,qFCD4C3423C890D51={lvl=57,domain="ia"}
,qFCD4C34138BD78C7={lvl=57,domain="ia"}
,qFCD4C3404B3C7346={lvl=57,domain="ia"}
,qFCD4C33F03A216FA={lvl=57,domain="ia"}
,qFDD509E348F88C64={lvl=57,domain="ia"}
,qFDCB89C220122B00={lvl=57,domain="ia"}
,qFD2A00505C4D88E8={lvl=57,domain="ia"}
,qFCA77E9A40F12F4A={lvl=57,domain="ia"}
,qFB991F746DAEBDD1={lvl=57,domain="ia"}
,qFDD9AA7B0FDB0040={lvl=57,domain="ia"}
,qFCC8384C75424222={lvl=57,domain="ia"}
,qFC26BD92054B3C1E={lvl=57,domain="ia"}
,qFBB46BE73425FD7D={lvl=57,domain="ia"}
,qFB8D7D666043B300={lvl=57,domain="ia"}
,qFE8CABBE7168C28A={lvl=57,scene="Den of Lezul",use={{key='IFB1EC8A5EFD46B2A,05E8F7262AFF5CEF,,,,,,', count=1}},type={10,1},giver='U45387825713F2A78'}
,qFFD4E9DB7EB5D24E={lvl=57,domain="ia"}
,qFE09167119D2EAC2={lvl=57,domain="ia"}
,qFC017B9C0D9052AC={lvl=57,domain="ia"}
,qFAB6EA743BDDD4C0={lvl=57,domain="ia"}
,qFA5E376408B7EECC={lvl=57,domain="ia"}
,qFCB4F149563C5EF2={lvl=57,domain="ia"}
,qFBF73C532345DD63={lvl=57,domain="ia"}
,qFBF73C526F52E717={lvl=57,domain="ia"}
,qFBF73C5146D2F69A={lvl=57,domain="ia"}
,qFBF73C5033E299F5={lvl=57,domain="ia"}
,qFBF73C4F09FB1C11={lvl=57,domain="ia"}
,qFA2AE0624C513C57={lvl=57,domain="ia"}
,qFF7539BC065A61A4={lvl=57,scene="Temple of Thontic",type={15,4}}
,qFA22421E5BB5285C={lvl=57,scene="Forest of Flesh",giver='UFF6F4F1B4C61C27E'}
,qFF66F67213FF8095={lvl=57,scene="Mired Convoy",type={10,6},giver='UFCA3905E3E864A28'}
,qFF1708BDB1FB5754={lvl=57,scene="Auditorium Carnos",type={15,4}}
,qFFF18C644ABC4B0D={lvl=57,domain="ia"}
,qFC9B6D454D1F8443={lvl=57,domain="ia"}
,qFB11150B0421101F={lvl=57,domain="ia"}
,qFAC5CCD431700946={lvl=57,domain="ia"}
,qFA9C992A5FDCB26C={lvl=57,domain="ia"}
,qFEA0FB31E3BC385D={lvl=57,scene="Forest of Flesh",giver='UFB398E753CF79DA0'}
,qFDF8BA5C556C014D={lvl=57,domain="ia"}
,qFDB90B3D15BEAB45={lvl=57,domain="ia"}
,qFD6C274D68C1DE28={lvl=57,domain="ia"}
,qFB3547905B6FC3D5={lvl=57,domain="ia"}
,qFA65E2D21FE1125D={lvl=57,domain="ia"}
,qFF99BD49698221D5={lvl=57,domain="ia"}
,qFEC88F1A2D5F6952={lvl=57,domain="ia"}
,qFC8A862762E4339E={lvl=57,domain="ia"}
,qFAC9EA491F7F692E={lvl=57,domain="ia"}
,qFA8A1BEB3D418FE6={lvl=57,domain="ia"}
,qFC0F842EA71E9344={lvl=58,scene="Stormhold",type={10}}
,qFA13DFA5A665B7CF={lvl=58,type={1}}
,qFBCE647EE8309CC9={lvl=58,type={3},giver='UFF3899782D162331'}
,qFA7C0807CBB070F1={lvl=58,type={3},giver='UFED843D41053B04D'}
,qFBAEDF1B145F9276={lvl=58,type={3},giver='UFED843D307658D7C'}
,qFC765E1239CF58D8={lvl=58,type={3},giver='UFC66D49B1E47549B'}
,q6E37233EAE00C534={lvl=58,type={8,5},giver='U76A8FF313D2E5C6F'}
,qFC5FD2DDD015A0FD={lvl=58,scene="The Academy",type={6}}
,qFFE9DE76DA35A9D6={lvl=58,scene="The Academy",type={8},giver='UFFC4455F608BB579'}
,q2A48EAF8DA6C25BF={lvl=58,scene="Arlan's Challenge",type={10},giver='UFF2898F80B469049'}
,q4FCC18D90792A92D={lvl=58,scene="Dead Pass",type={10},giver='UFB07EC18350E1355'}
,qFDFC4207E8BD5D5C={lvl=58,craft={{key='IFEF55D36C72A969C,405922C8D6FA1151,,,,,,', count=4}},type={25}}
,qFB138FAAD8DD0236={lvl=58,craft={{key='IFEF55D36C72A969C,405922C8D6FA1151,,,,,,', count=4}},type={25}}
,qFC2F3EC8A1963FEC={lvl=58,craft={{key='IFF09E2ACC41B881B,D30DE3F55BF2286F,,,,,,', count=4}},type={25}}
,qFB8D3766FD35765E={lvl=58,craft={{key='IFF09E2ACC41B881B,D30DE3F55BF2286F,,,,,,', count=4}},type={25}}
,qFE1C95F3BE753CC5={lvl=58,craft={{key='IFAAB2DBCB1579B4A,174357FD523B59F8,,,,,,', count=4}},type={25}}
,qFB5515781B5ED86C={lvl=58,craft={{key='IFAAB2DBCB1579B4A,174357FD523B59F8,,,,,,', count=4}},type={25}}
,qFC66086D685F5EA8={lvl=58,craft={{key='IFAAB2DBD6F9DD48D,253EA142AA1A323A,,,,,,', count=4}},type={25}}
,qFC527CB89A923F7C={lvl=58,craft={{key='IFAAB2DBD6F9DD48D,253EA142AA1A323A,,,,,,', count=4}},type={25}}
,qFF549CD9BA5C9589={lvl=58,craft={{key='IFB8E9431AEB3D18A,DBE250BD9934AE1C,,,,,,', count=4}},type={25}}
,qFC40C67D95E03EB9={lvl=58,craft={{key='IFB8E9431AEB3D18A,DBE250BD9934AE1C,,,,,,', count=4}},type={25}}
,qFDC1AA7A876468D7={lvl=58,craft={{key='IFEF55D374C6B73ED,3AED79CA6E6FAB92,,,,,,', count=4}},type={25}}
,qFA13504758A43C37={lvl=58,craft={{key='IFEF55D374C6B73ED,3AED79CA6E6FAB92,,,,,,', count=4}},type={25}}
,q3E38B88595576ECE={lvl=58,craft={{key='IFE4A871487BC784A,DEE1CA4515C3C983,,,,,,', count=10},{key='IFA11208E7343A638,3CD0476FC7839796,,,,,,', count=2}},type={4}}
,qFD801B79DE5B468B={lvl=58,craft={{key='IFB096AB2B9EC6DDF,707779EE439C76E0,,,,,,', count=4}},type={25}}
,qFC94D913E3D4CDE2={lvl=58,craft={{key='IFB096AB2B9EC6DDF,707779EE439C76E0,,,,,,', count=4}},type={25}}
,q7835730AE5F5A580={lvl=58,craft={{key='IFA1120918E5C7990,0FBAF9CB64D1244A,,,,,,', count=2},{key='IFA11209277F8669E,1DB64310BCB07FDA,,,,,,', count=10}},type={4}}
,qFDF0BAFD9B359170={lvl=58,craft={{key='IFF09E2AE6BB93E9D,F423A353163289EC,,,,,,', count=4}},type={25}}
,qFCEF10F8D4FE7F0E={lvl=58,craft={{key='IFF09E2AE6BB93E9D,F423A353163289EC,,,,,,', count=4}},type={25}}
,qFF0ABE18AB731F0E={lvl=58,craft={{key='IFB096AB3EF737B2B,FDB18B8CA8837C12,,,,,,', count=4}},type={25}}
,qFE52101FD7CB959F={lvl=58,craft={{key='IFB096AB3EF737B2B,FDB18B8CA8837C12,,,,,,', count=4}},type={25}}
,q752E19F5FE608893={lvl=58,craft={{key='IFE4A871D44B75D12,139C949E497834E5,,,,,,', count=1},{key='IFA11208C6186AE21,DAFEB6B807BD0B38,,,,,,', count=10},{key='IFE4A871E650E36E4,DF77471096246154,,,,,,', count=1}},type={4}}
,qFEDCD7E93023F1D0={lvl=58,craft={{key='IFB8E9432A6A4A276,0F91A102C63E6E77,,,,,,', count=4}},type={25}}
,qFBA6CFEC2BFA85C1={lvl=58,craft={{key='IFB8E9432A6A4A276,0F91A102C63E6E77,,,,,,', count=4}},type={25}}
,qFE6D7CFD9E95CFD7={lvl=58,craft={{key='IFD43320A187F60D0,C5522F1AB43A5C82,,,,,,', count=4}},type={25}}
,qFAA35BBCACADF02C={lvl=58,craft={{key='IFD43320A187F60D0,C5522F1AB43A5C82,,,,,,', count=4}},type={25}}
,q1BD99D289CC3DCB5={lvl=58,craft={{key='IFE4A8715B39082E9,F0E4215A212090AC,,,,,,', count=2},{key='IFA11208F965E2FFA,DFA1F6F8972E2967,,,,,,', count=4},{key='IFE4A871487BC784A,DEE1CA4515C3C983,,,,,,', count=6}},type={4}}
,qFFDF7A9F8B52967E={lvl=58,craft={{key='IFF09E2ADA7845041,03CE456EAC833F42,,,,,,', count=4}},type={25}}
,qFA5D1243B42FA1CF={lvl=58,craft={{key='IFF09E2ADA7845041,03CE456EAC833F42,,,,,,', count=4}},type={25}}
,qFD6BD529721CA5C0={lvl=58,craft={{key='IFD433208B5B98B55,DBC9ED6CF184E15A,,,,,,', count=4}},type={25}}
,qFC1EDE8ED7384E2C={lvl=58,craft={{key='IFD433208B5B98B55,DBC9ED6CF184E15A,,,,,,', count=4}},type={25}}
,qFD3F200C8DD38CB0={lvl=58,craft={{key='IFB8E94333D1F2444,DA4601D42683AA78,,,,,,', count=4}},type={25}}
,qFB520625393AC561={lvl=58,craft={{key='IFB8E94333D1F2444,DA4601D42683AA78,,,,,,', count=4}},type={25}}
,qFC6E6D66A34CB022={lvl=58,craft={{key='IFAAB2DBE9211B362,3740F857B576F963,,,,,,', count=4}},type={25}}
,qFB325D5FECF1B5FB={lvl=58,craft={{key='IFAAB2DBE9211B362,3740F857B576F963,,,,,,', count=4}},type={25}}
,qFE17F84ADE50EA19={lvl=58,craft={{key='IFA54847270E1FCA3,F04B16870CF71DA9,,,,,,', count=4}},type={25}}
,qFCFC6A26ED71CD4C={lvl=58,craft={{key='IFA54847270E1FCA3,F04B16870CF71DA9,,,,,,', count=4}},type={25}}
,qFD9DA29671F0B3A3={lvl=58,craft={{key='IFA548471BDD3AC42,E71896085B8E075E,,,,,,', count=4}},type={25}}
,qFC88447AA760D7CF={lvl=58,craft={{key='IFA548471BDD3AC42,E71896085B8E075E,,,,,,', count=4}},type={25}}
,qFE927F80C3206CAD={lvl=58,craft={{key='IFA548470B063CB24,E2F72BE83805DE09,,,,,,', count=4}},type={25}}
,qFE41270A1BCCA191={lvl=58,craft={{key='IFA548470B063CB24,E2F72BE83805DE09,,,,,,', count=4}},type={25}}
,q63CC8974EF712CB2={lvl=58,craft={{key='IFA11209277F8669E,1DB64310BCB07FDA,,,,,,', count=6},{key='IFAF733F2C28D3A8E,3FFE9205CDC12262,,,,,,', count=2},{key='IFAF733F366B770C2,4F11FA4EFCA54005,,,,,,', count=4}},type={4}}
,qFF74CF1DE4227CBA={lvl=58,craft={{key='IFEF55D357A1A6401,0DD0242396574164,,,,,,', count=4}},type={25}}
,qFA7F13AAC58EC264={lvl=58,craft={{key='IFEF55D357A1A6401,0DD0242396574164,,,,,,', count=4}},type={25}}
,qFC7955CBCE573584={lvl=58,craft={{key='IFD4332096ADFF31F,C130C4FA10B2332E,,,,,,', count=4}},type={25}}
,qFB5929316E048C32={lvl=58,craft={{key='IFD4332096ADFF31F,C130C4FA10B2332E,,,,,,', count=4}},type={25}}
,q6D05584006D3B142={lvl=58,craft={{key='IFE4A871D44B75D12,139C949E497834E5,,,,,,', count=2},{key='IFA11208C6186AE21,DAFEB6B807BD0B38,,,,,,', count=10}},type={4}}
,qFA2BD48921E32DA3={lvl=58,craft={{key='IFB096AB1B2DC1E82,678DCA56799E8B94,,,,,,', count=4}},type={25}}
,qFA1CF130CC3BC2EF={lvl=58,craft={{key='IFB096AB1B2DC1E82,678DCA56799E8B94,,,,,,', count=4}},type={25}}
,q65835BC29B4B68F4={lvl=58,craft={{key='IFA11208C6186AE21,DAFEB6B807BD0B38,,,,,,', count=12}},type={4}}
,q5897DE79978B1BE0={lvl=58,craft={{key='IFA11208F965E2FFA,DFA1F6F8972E2967,,,,,,', count=12}},type={4}}
,q1D96CA0EBAC20A29={lvl=58,craft={{key='IFAF733F2C28D3A8E,3FFE9205CDC12262,,,,,,', count=3},{key='IFA1120918E5C7990,0FBAF9CB64D1244A,,,,,,', count=2},{key='IFA11209277F8669E,1DB64310BCB07FDA,,,,,,', count=7}},type={4}}
,qFD6DF9EE819041AC={lvl=58,scene="Stormhold",type={1,10},giver='U5705260F2E21CFD4'}
,qFF6CA3E92D2D778E={lvl=58,scene="Dead Pass",domain="ia"}
,qFF53279E008A805C={lvl=58,scene="Dead Pass",domain="ia"}
,qFE3C8115413D60CE={lvl=58,scene="Dead Pass",domain="ia"}
,qFC364E6C64F031D0={lvl=58,scene="Dead Pass",domain="ia"}
,qFA1427D57AF409D8={lvl=58,scene="Dead Pass",domain="ia"}
,qFFF6B1172AE94684={lvl=58,scene="Dead Pass",domain="ia"}
,qFF950F7B65E8FB5B={lvl=58,scene="Dead Pass",domain="ia"}
,qFD087DE16DE5F7EB={lvl=58,scene="Dead Pass",domain="ia"}
,qFCD7460D73823D3C={lvl=58,scene="Dead Pass",domain="ia"}
,qFB7BF53C2A6FA4C4={lvl=58,scene="Dead Pass",domain="ia"}
,qFBFFA8EA921706B2={lvl=58,type={8},giver='UFF9CBF045F74E0DC'}
,qFF7B9EF8CCAACB96={lvl=58,scene="The Academy",type={6},giver='UFFF00E4A2A415299'}
,qFE3AB7DBB029288E={lvl=58,scene="The Academy",type={2},giver='UFFB5F20A2B242DE3'}
,qFFF505A9108F7EEA={lvl=58,scene="Dead Pass",domain="ia"}
,qFE5192770F75ACB4={lvl=58,scene="Dead Pass",domain="ia"}
,qFE0ED5C745447B92={lvl=58,scene="Dead Pass",domain="ia"}
,qFCCADB77106FC615={lvl=58,scene="Dead Pass",domain="ia"}
,qFAE9031B3615ACD8={lvl=58,scene="Dead Pass",domain="ia"}
,qFD1E4661E54D4E71={lvl=58,scene="Arlan's Challenge",type={1},giver='UFB1B571D744782FF'}
,qFD20B6D6AE09B310={lvl=58,type={4},giver='UFAED75C50468FD82'}
,q7F4BA170698D7453={lvl=58,scene="Dead Pass",type={1},giver='UFB07EC18350E1355'}
,qFEE805B5B09F36EA={lvl=58,type={8},giver='UFFED64A920D8D6D3'}
,qFF9E2BBA9D7E7FAF={lvl=58,scene="The Menagerie",type={6,4},giver='UFF7BE51A75607D59'}
,qFFFC31F8C823920E={lvl=58,scene="The Academy",type={10,1},giver='UFF67E64726149154'}
,qFFC346576532BFF5={lvl=58,scene="The Academy",type={8,5},giver='UFFED64A920D8D6D3'}
,qFFBE8303ABA21D6C={lvl=58,scene="The Academy",type={10},giver='UFFF00E4A2A415299'}
,qFF8879C5D14A612F={lvl=58,scene="The Academy",type={10},giver='UFF91E53A28E03FA3'}
,qFFCAC60D6A645FB2={lvl=58,scene="The Academy",type={1,10,4},giver='UFFCE074969CF9EA5'}
,q7E6308B8C7998F05={lvl=58,scene="Stormhold",type={8},giver='UFCB3AD727B1A40BB'}
,qFDB20F826A5B8358={lvl=58,scene="Dead Pass",domain="ia"}
,qFCD44B057B21FECD={lvl=58,scene="Arlan's Challenge",type={3,1,11},giver='UFDDC57381CED8E5E'}
,qFCCC8B2E6D6C1231={lvl=58,scene="Dead Pass",domain="ia"}
,q665A354323037009={lvl=58,scene="Arlan's Challenge",type={8},giver='U07F274E42D0A021E'}
,qFA5E8924BC08BB7D={lvl=58,scene="Korolis Valley",type={6}}
,q38168DA2BE903AF2={lvl=58,scene="Dead Pass",type={6},giver='UFB07EC18350E1355'}
,qFFC8ECDA8942BB31={lvl=58,scene="The Academy",type={5},giver='UFF7BE51A75607D59'}
,qFC361A2EF5989E02={lvl=58,scene="Stormhold",type={10}}
,qFF05A49A4097AA8A={lvl=58,scene="Dead Pass",domain="ia"}
,qFEAEDFF80227D50C={lvl=58,scene="Dead Pass",domain="ia"}
,qFE18B7C379C39967={lvl=58,scene="Dead Pass",domain="ia"}
,qFD57ED566BC3DC96={lvl=58,scene="Dead Pass",domain="ia"}
,qFB58D7F4498D2515={lvl=58,scene="Dead Pass",domain="ia"}
,qFFF785DC5BA9A74D={lvl=58,scene="Dead Pass",domain="ia"}
,qFDC382142662DA18={lvl=58,scene="Dead Pass",domain="ia"}
,qFCC368733AE08024={lvl=58,scene="Dead Pass",domain="ia"}
,qFC1889BA330BA566={lvl=58,scene="Dead Pass",domain="ia"}
,qFB774E014B8D3AD5={lvl=58,scene="Dead Pass",domain="ia"}
,qFB685036E174B8D7={lvl=58,scene="Korolis Valley",type={6}}
,qFF6BB4FD7DFB4605={lvl=58,scene="The Academy",type={10,4,1},giver='U7688B5C1529B02D4'}
,qFBB240B60A87958B={lvl=58,scene="Stormhold",type={6,8,10},giver='U71761A777CC1C553'}
,qFFD45F92E3B77BD6={lvl=58,scene="The Academy",type={8,5},giver='UFFAB364816CA0EF2'}
,qFA23F33697D4BAD5={lvl=58,scene="Dead Pass",type={13}}
,qFFEFD7985C805CA8={lvl=58,scene="Dead Pass",domain="ia"}
,qFE44766839317DC0={lvl=58,scene="Dead Pass",domain="ia"}
,qFE39999A13A73D2F={lvl=58,scene="Dead Pass",domain="ia"}
,qFD259D4B18C4F4E2={lvl=58,scene="Dead Pass",domain="ia"}
,qFA62E5137C12E425={lvl=58,scene="Dead Pass",domain="ia"}
,qFCFABC23C72AC0F0={lvl=58,scene="Dead Pass",type={13}}
,qFF796FA7D11334D6={lvl=58,scene="The Academy",type={1,10},giver='UFFF00E4A2A415299'}
,qFB915246B39D30B0={lvl=58,type={11,3},giver='UFE55409902C71B85'}
,qFF7D6EEAB828A4F6={lvl=58,scene="Royal Gardens",type={4,6},giver='UFF9949CC06D46207'}
,qFFBA551633681636={lvl=58,scene="Dead Pass",domain="ia"}
,qFF8E855C0F1C79D2={lvl=58,scene="Dead Pass",domain="ia"}
,qFF36D0C4604EB9D0={lvl=58,scene="Dead Pass",domain="ia"}
,qFC90649B57AEAAE0={lvl=58,scene="Dead Pass",domain="ia"}
,qFA3137183A81D197={lvl=58,scene="Dead Pass",domain="ia"}
,qFFC61E6365D9EEE1={lvl=58,scene="Path of Princes",type={5,8},giver='UFFAB364816CA0EF2'}
,qFCDF268A0D32C69D={lvl=58,scene="Dead Pass",domain="ia"}
,qFC5EF65C746BD0C4={lvl=58,scene="Dead Pass",domain="ia"}
,qFC2E3A132E8362EC={lvl=58,scene="Dead Pass",domain="ia"}
,qFB39E3023FB39182={lvl=58,scene="Dead Pass",domain="ia"}
,qFA207A3B01647740={lvl=58,scene="Dead Pass",domain="ia"}
,qFD7E1C835B1EFE5F={lvl=58,scene="Dead Pass",domain="ia"}
,qFCC0D19119D692AC={lvl=58,scene="Dead Pass",domain="ia"}
,qFC895FF17299E6A9={lvl=58,scene="Dead Pass",domain="ia"}
,qFBAC026143923FB2={lvl=58,scene="Dead Pass",domain="ia"}
,qFAB8C51A1C17D448={lvl=58,scene="Dead Pass",domain="ia"}
,qFB7A5DEC11904F8B={lvl=58,scene="Stormhold",use={{key='IFAF8F2B7982A9879,CE40746F7454CD91,,,,,,', count=1}},type={1,10},giver='U07F274E42D0A021E'}
,qFED857A6677D114B={lvl=58,scene="Dead Pass",domain="ia"}
,qFCFE072A5F8B3B9C={lvl=58,scene="Dead Pass",domain="ia"}
,qFBC6663A733411DE={lvl=58,scene="Dead Pass",domain="ia"}
,qFBA40A5605C56E3C={lvl=58,scene="Dead Pass",domain="ia"}
,qFB5A95512EDDBADC={lvl=58,scene="Dead Pass",domain="ia"}
,qFAC4651DDED45A06={lvl=58,scene="Royal Gardens",type={4}}
,qFECCA24F35F18369={lvl=58,scene="Dead Pass",domain="ia"}
,qFC38182B08FC2CBD={lvl=58,scene="Dead Pass",domain="ia"}
,qFC28972961842EF7={lvl=58,scene="Dead Pass",domain="ia"}
,qFB4601D31D75330F={lvl=58,scene="Dead Pass",domain="ia"}
,qFACF228A11A52AE8={lvl=58,scene="Dead Pass",domain="ia"}
,q18B18D9EAF1EDDC6={lvl=58,domain="guild"}
,q686CAAEE9E43EE43={lvl=58,domain="guild"}
,qFFC6C93FDE574B24={lvl=58,scene="The Menagerie", grp=2,type={1},giver='UFFDFA7B3217C600C'}
,q219B3BDB0E0A71C7={lvl=58,scene="Dead Pass",type={4},giver='UFB07EC18350E1355'}
,q627EF457ACBE51D0={lvl=58,type={17}}
,q11AB184A84C94687={lvl=58,type={17}}
,qFEEBEB8DA12B0159={lvl=58,scene="Dead Pass",type={13}}
,qFFEC5D7C98D6A79B={lvl=58,scene="The Academy",type={10,1,4},giver='U7688B5C1529B02D4'}
,qFF75BB66175B9921={lvl=58,scene="The Armory",type={5,8},giver='UFFEEDA0337EAE505'}
,qFEEC191EEC96DE78={lvl=58,scene="Dead Pass",type={13}}
,qFE313362C4BF6007={lvl=58,scene="The Menagerie",type={4}}
,qFF9AD9821ADD673B={lvl=58,scene="Dead Pass",domain="ia"}
,qFADB6267BCDC866A={lvl=58,scene="The Academy",type={6}}
,qFBF2979FB1F40CA6={lvl=58,scene="Stormhold",type={6},giver='U71761A777CC1C553'}
,qFFD54D3BD8F744C0={lvl=58,scene="Royal Gardens",type={1},giver='UFFC4455F608BB579'}
,qFE1DC023AF31D660={lvl=58,scene="Stormhold",type={10}}
,qFF8E261C033E9709={lvl=58,scene="Dead Pass",domain="ia"}
,qFF4D9D0D795E14F9={lvl=58,scene="Dead Pass",domain="ia"}
,qFC88B7B065C07305={lvl=58,scene="Dead Pass",domain="ia"}
,qFAC50A457E7F0034={lvl=58,scene="Dead Pass",domain="ia"}
,qFA176DAD1A99C08D={lvl=58,scene="Dead Pass",domain="ia"}
,qFF92CA5A67808A98={lvl=58,scene="Royal Gardens",type={6,4},giver='UFFD5552C53B6C5F2'}
,qFE7F32E797D99642={lvl=58,scene="Royal Gardens",type={6}}
,qFD819BCC0E0125DA={lvl=58,scene="Dead Pass",type={13}}
,qFE6758656D327C65={lvl=58,scene="Stormhold",type={9,1}}
,qFF8DBBEE71977EA2={lvl=58,scene="The Menagerie",type={9,1}}
,qFFB8E5B225A39D0D={lvl=58,scene="The Menagerie",type={1,9}}
,qFD958E677458E3C8={lvl=58,scene="Dead Pass",type={1,9}}
,qFA20306B79D91E42={lvl=58,scene="Royal Gardens",type={1,9}}
,qFAFB7FEF8127DF75={lvl=58,scene="Royal Gardens",type={1,9}}
,qFE58BA038E860AD2={lvl=58,scene="The Menagerie",type={9,1}}
,qFB3A83FA59AA4C5F={lvl=58,scene="The Academy",type={1,9}}
,qFFDC55FBAA8C9250={lvl=58,scene="The Menagerie",type={9,1}}
,qFC1C2611529F71E2={lvl=58,scene="Royal Gardens",type={1,9}}
,qFAA27572D10D5A20={lvl=58,scene="Korolis Valley",type={1,9}}
,qFCC7DE2A1675B788={lvl=58,scene="Royal Gardens",type={9,1}}
,qFBB773FE711AAC07={lvl=58,scene="Dead Pass",type={9,1}}
,qFF740C3029B3C9AD={lvl=58,scene="Stormhold",type={9,1}}
,qFD5CC8166FA52CCB={lvl=58,scene="Dead Pass",type={9,1}}
,qFF9F26956B4ACF0C={lvl=58,scene="The Academy",type={1,9}}
,qFF6CC9CF6D7AAD3C={lvl=58,scene="The Academy",type={9,1}}
,qFF8FEEAFB5334617={lvl=58,scene="The Academy",type={6},giver='UFF92C72819FB62E5'}
,qFFFC2433D1217292={lvl=58,scene="The Academy",type={5},giver='UFFF00E4A2A415299'}
,qFD2140E9F3038998={lvl=58,scene="Royal Gardens",type={6}}
,qFF0E611C2A06C7F1={lvl=58,scene="Dead Pass",domain="ia"}
,qFEAAD40C7E6232DB={lvl=58,scene="Dead Pass",domain="ia"}
,qFC6E9AA0550BC4FE={lvl=58,scene="Dead Pass",domain="ia"}
,qFBFDCB47714444A5={lvl=58,scene="Dead Pass",domain="ia"}
,qFA567679503EA8AA={lvl=58,scene="Dead Pass",domain="ia"}
,qFF8CD46BE7E402A2={lvl=58,scene="Stormhold",type={4,6,1},giver='U5705260F2E21CFD4'}
,qFAA277406157D321={lvl=58,type={15}}
,qFF9F67C3ECB8EE3C={lvl=58,scene="The Academy",type={6},giver='UFF7BE51A75607D59'}
,qFF0BF2D181B9469A={lvl=58,type={3,11,1},giver='UFE55409902C71B85'}
,qFF7146D52F7F8B67={lvl=58,scene="The Academy",type={6},giver='UFFBB7E455B97324F'}
,qFE55887A42E6D558={lvl=58,scene="Arlan's Challenge",domain="ia",giver='UFE03A12977A46EBF'}
,qFA2E40E1551682CE={lvl=58,scene="Stormhold",type={1,16}}
,qFA674F53AC8792C9={lvl=58,scene="The Menagerie",type={6}}
,qFA0CF0F71711FF3A={lvl=58,scene="Stormhold",type={8},giver='UFE5A9A11186439A0'}
,qFC8A036BDD970470={lvl=58,scene="Arlan's Challenge",type={11,3},giver='UFDDC57381CED8E5E'}
,qFAC967949B1A11D4={lvl=58,type={15},giver='UFFB5F20A2B242DE3'}
,qFF74F74DC85383C7={lvl=58,scene="The Menagerie",type={4},giver='UFFE50A7F4D73579A'}
,qFF56822657161273={lvl=58,scene="Dead Pass",domain="ia"}
,qFF3394AF51900212={lvl=58,scene="Dead Pass",domain="ia"}
,qFEEEDC1404CEF67A={lvl=58,scene="Dead Pass",domain="ia"}
,qFBA4649E44C45F41={lvl=58,scene="Dead Pass",domain="ia"}
,qFA7B95FB283DFE67={lvl=58,scene="Dead Pass",domain="ia"}
,qFFE3A06A42F4B4A2={lvl=58,scene="Dead Pass",domain="ia"}
,qFCA9BA40177089A2={lvl=58,scene="Dead Pass",domain="ia"}
,qFC18D8084E75D31B={lvl=58,scene="Dead Pass",domain="ia"}
,qFB14048406C40027={lvl=58,scene="Dead Pass",domain="ia"}
,qFA1F37B04670F2B2={lvl=58,scene="Dead Pass",domain="ia"}
,qFB82D5C712FA739B={lvl=58,scene="Dead Pass",domain="ia"}
,q2771C3CF88290068={lvl=58,scene="Arlan's Challenge",type={6},giver='U22D43F3E6ED92473'}
,qFF8EEF175462BA6A={lvl=58,scene="Dead Pass",domain="ia"}
,qFECB3BBD3CA54907={lvl=58,scene="Dead Pass",domain="ia"}
,qFDFD44D237D3D474={lvl=58,scene="Dead Pass",domain="ia"}
,qFC66343E0D5A251F={lvl=58,scene="Dead Pass",domain="ia"}
,qFC2459D6440A654C={lvl=58,scene="Dead Pass",domain="ia"}
,q32907E56A0C365D9={lvl=58,domain="guild"}
,q5CF00DFBDEEAC04F={lvl=58,domain="guild"}
,q65FD87D71CC74876={lvl=58,scene="Dead Pass",type={4},giver='UFB07EC18350E1355'}
,qFBF2FB80C446A3F7={lvl=58,scene="Stormhold",type={15},giver='UFE5A9A11186439A0'}
,qFFBB3C13510E3F7E={lvl=59,scene="Black Strand",domain="ia"}
,qFF40BF1375839494={lvl=59,scene="Black Strand",domain="ia"}
,qFE6C63F90E059CFE={lvl=59,scene="Black Strand",domain="ia"}
,qFD31A29C4AD69746={lvl=59,scene="Black Strand",domain="ia"}
,qFD0F981E773A9E9A={lvl=59,scene="Black Strand",domain="ia"}
,qFED4C7D13675E876={lvl=59,domain="ia"}
,qFE9CE71A2855ABDF={lvl=59,domain="ia"}
,qFD674534328FDC4E={lvl=59,domain="ia"}
,qFD22844A7F63BC9E={lvl=59,domain="ia"}
,qFC0F35B32E215734={lvl=59,domain="ia"}
,qFE7FB34765172BED={lvl=59,domain="ia"}
,qFE695E9764ED5975={lvl=59,domain="ia"}
,qFC7EA265184E0D48={lvl=59,domain="ia"}
,qFACFD82C6712D502={lvl=59,domain="ia"}
,qFA4394910D29EFE0={lvl=59,domain="ia"}
,qFA20FAF5103925F5={lvl=59,type={3},giver='UFE31C7EE58B51A2B'}
,qFF92295402A4E1A2={lvl=59,type={3},giver='UFE31C7F07AD98009'}
,qFECC00F6E1C2282C={lvl=59,type={3},giver='UFE31C7ED485F57DA'}
,qFA4946C5D21B6BE2={lvl=59,scene="Brink of Angoro",type={10}}
,qFF2951496982BA7A={lvl=59,domain="ia"}
,qFEE6AED721916E0C={lvl=59,domain="ia"}
,qFDA2057E6A70D7CE={lvl=59,domain="ia"}
,qFC48AC3841A80FF4={lvl=59,domain="ia"}
,qFBE6A37F13EBA645={lvl=59,domain="ia"}
,qFEECC6B912C42B57={lvl=59,domain="ia"}
,qFEE3AD8F0662FC8D={lvl=59,domain="ia"}
,qFDE7FD040F5327C3={lvl=59,domain="ia"}
,qFDCA65623C0677B0={lvl=59,domain="ia"}
,qFBE3E2E233E512B1={lvl=59,domain="ia"}
,qFF2B583B1CA489BA={lvl=59,domain="ia"}
,qFEEA35D03545A543={lvl=59,domain="ia"}
,qFE33C6704AE358C2={lvl=59,domain="ia"}
,qFCE541AB669A3373={lvl=59,domain="ia"}
,qFB8AB96766FE89BB={lvl=59,domain="ia"}
,qFBF8AA2BEE5A97C4={lvl=59,scene="Brink of Angoro",type={10}}
,q3BF2AFD5321AD6EE={lvl=59,type={17}}
,qFFEEBE98242EF56D={lvl=59,scene="Black Strand",domain="ia"}
,qFD46FF6261A88C8C={lvl=59,scene="Black Strand",domain="ia"}
,qFD29F4714CBB87C9={lvl=59,scene="Black Strand",domain="ia"}
,qFC9204FB59A8BE9D={lvl=59,scene="Black Strand",domain="ia"}
,qFC76E23530338F98={lvl=59,scene="Black Strand",domain="ia"}
,qFF0CE8656402AAD1={lvl=59,scene="The Breach",type={6}}
,qFE6B48C134437730={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC60B9693CF6030C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB7546CC1488597C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA9D65140188BBE0={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA4738BF7ADB3715={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE2FEA0F32819B4E={lvl=59,scene="Black Strand",domain="ia"}
,qFDE124916074A86B={lvl=59,scene="Black Strand",domain="ia"}
,qFCC3139D410DEB9E={lvl=59,scene="Black Strand",domain="ia"}
,qFBE2441F70063F8B={lvl=59,scene="Black Strand",domain="ia"}
,qFFF7597F4DA69DDF={lvl=59,scene="Black Strand",domain="ia"}
,qFEDAB3960A152598={lvl=59,scene="Black Strand",domain="ia"}
,qFCAF47130A23DDE4={lvl=59,scene="Black Strand",domain="ia"}
,qFC8274F83D5BC114={lvl=59,scene="Black Strand",domain="ia"}
,qFBBBB140549E06B0={lvl=59,scene="Black Strand",domain="ia"}
,qFCD569FA6CE3C379={lvl=59,domain="pvp",giver='U679C15062B0D5DB5'}
,qFE9916FF2C8DFFEB={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFCF64CB73ABFA0F9={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFCBFB5AA3F56A9FD={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC37E4F7593526E7={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB338037464A38BA={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD3016DFB43B22DD={lvl=59,scene="Shapers Citadel",type={1},giver='UFCB3AD77472B7FCD'}
,qFBC872B7AC26106D={lvl=59,domain="pvp",giver='U679C15062B0D5DB5'}
,qFEA7E19577A4F037={lvl=59,domain="ia"}
,qFD7B72D54C40D527={lvl=59,domain="ia"}
,qFC7BFECB485696C8={lvl=59,domain="ia"}
,qFAFD3F164AD5EA95={lvl=59,domain="ia"}
,qFA5654D419EFDA48={lvl=59,domain="ia"}
,qFDFBC624EE38A56A={lvl=59,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFC33D1D200C4C1D5={lvl=59,scene="The Northern Ruins",type={13}}
,qFF99E0570D365AF2={lvl=59,domain="ia"}
,qFF0AE2573E7979D4={lvl=59,domain="ia"}
,qFC7F90F948D890DA={lvl=59,domain="ia"}
,qFAC7E7882D7B21B7={lvl=59,domain="ia"}
,qFA42EDE80367D332={lvl=59,domain="ia"}
,q56D6C553BA4915BD={lvl=59}
,qFC6168FA412E879D={lvl=59,domain="ia"}
,qFC6168F9621C213B={lvl=59,domain="ia"}
,qFC6168F83B518558={lvl=59,domain="ia"}
,qFC6168F73785F0CE={lvl=59,domain="ia"}
,qFC6168F67E4DFD9C={lvl=59,domain="ia"}
,qFF65D86BE32376C4={lvl=59,scene="Shapers Citadel",use={{key='IFDC29ACFAFD67AF1,24250663E69BA2C4,,,,,,', count=12}},type={10}}
,qFC22987606429046={lvl=59,domain="pvp",giver='U679C15062B0D5DB5'}
,qFFF596119A70C917={lvl=59,scene="Tower of Dawn",type={1},giver='UFFA85A904A03166B'}
,qFAE263FC44837F4F={lvl=59,domain="ia"}
,qFFDED54C524A88A7={lvl=59,domain="ia"}
,qFE915D484EBA9298={lvl=59,domain="ia"}
,qFCDE79065CD434A7={lvl=59,domain="ia"}
,qFC1FB2F043C07B31={lvl=59,domain="ia"}
,qFB79FCAB7076700A={lvl=59,domain="ia"}
,qFF2957485BE6C58F={lvl=59,domain="ia"}
,qFED2EBBF34441515={lvl=59,domain="ia"}
,qFE34B31A0F732080={lvl=59,domain="ia"}
,qFE07BC855FB2CE98={lvl=59,domain="ia"}
,qFCC41C3B46B68E7A={lvl=59,domain="ia"}
,qFF8171D5691A63A5={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE3C979F0E662D9E={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD59F72F3234570C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBDE09167E4D596C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFAB0C0232077DCE6={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBBA02440AC62C97={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF4D2D7B74C13A9A={lvl=59,scene="Black Strand",domain="ia"}
,qFE8087B61B497F2C={lvl=59,scene="Black Strand",domain="ia"}
,qFD621C3C4496DFD9={lvl=59,scene="Black Strand",domain="ia"}
,qFC2900FC12D47EF2={lvl=59,scene="Black Strand",domain="ia"}
,qFBEA492413A1DC1E={lvl=59,scene="Black Strand",domain="ia"}
,qFA4CB8F36BCA8C6F={lvl=59,scene="Black Strand",domain="ia"}
,qFC39DB4171E05AE9={lvl=59,scene="Shapers Citadel",type={10},giver='UFCB3AD727B1A40BB'}
,qFF923F9F1D85C7A4={lvl=59,scene="The Northern Ruins",type={6},giver='UFA8AE6F71A8CD346'}
,qFE5B438A352004C8={lvl=59,domain="ia"}
,qFFA08BA352B49164={lvl=59,domain="ia"}
,qFF0625B7387BA233={lvl=59,domain="ia"}
,qFD7CE37173D1AD7C={lvl=59,domain="ia"}
,qFBFA49930840F4AB={lvl=59,domain="ia"}
,qFAFF62D4122A075E={lvl=59,domain="ia"}
,qFF058CCD2149B839={lvl=59,domain="ia"}
,qFF058CCC10DB3064={lvl=59,domain="ia"}
,qFF058CCB2281134B={lvl=59,domain="ia"}
,qFF058CCA2766B4D6={lvl=59,domain="ia"}
,qFF058CC9497DD2BF={lvl=59,domain="ia"}
,qFC6946AC52BF04B2={lvl=59,scene="Black Strand",domain="ia"}
,qFF428E0BAE4574FD={lvl=59,type={16,1}}
,q6704C7C5B13C4648={lvl=59}
,qFC342D3ED2257AE8={lvl=59,scene="The Breach",type={1}}
,qFF98C5FFD6FAD713={lvl=59,scene="Den of Kwell",type={6}}
,qFE65575870CA6604={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBB83DBC58672D1B={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB661D920C3FB6E0={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB4737F5779E9688={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB01DDE176F4908C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE3A50E7597518F5={lvl=59,scene="Black Strand",domain="ia"}
,qFE1CB7983910B642={lvl=59,scene="Black Strand",domain="ia"}
,qFC57150E69741B97={lvl=59,scene="Black Strand",domain="ia"}
,qFC044F6F09BAAF73={lvl=59,scene="Black Strand",domain="ia"}
,qFAF2CA8A18FFB897={lvl=59,scene="Black Strand",domain="ia"}
,qFF1DEF4E29EA549D={lvl=59,domain="ia"}
,qFED5B45E315A09C1={lvl=59,domain="ia"}
,qFE7946342CFC3D92={lvl=59,domain="ia"}
,qFB693A714AE373ED={lvl=59,domain="ia"}
,qFA7E50AA2C232C0B={lvl=59,domain="ia"}
,qFBCD758984805B65={lvl=59,scene="Shapers Citadel",type={6}}
,qFFB412B32E3079DC={lvl=59,scene="Black Strand",domain="ia"}
,qFF93C4875C60E290={lvl=59,scene="Black Strand",domain="ia"}
,qFE8A5F0E10638B85={lvl=59,scene="Black Strand",domain="ia"}
,qFDC79959095CF1F4={lvl=59,scene="Black Strand",domain="ia"}
,qFDAF133F78763791={lvl=59,scene="Black Strand",domain="ia"}
,qFBC044B9961D4B32={lvl=59,scene="The Northern Ruins",type={10,8},giver='UFCB3AD727B1A40BB'}
,qFEEB39576B177EA0={lvl=59,scene="Black Strand",domain="ia"}
,qFEC3D38476A83A11={lvl=59,scene="Black Strand",domain="ia"}
,qFDA1DB3F4452A4F2={lvl=59,scene="Black Strand",domain="ia"}
,qFB7312D022036107={lvl=59,scene="Black Strand",domain="ia"}
,qFA19B8E8181640EE={lvl=59,scene="Black Strand",domain="ia"}
,qFF82ED9D08CC7BA0={lvl=59,domain="ia"}
,qFF35AB4A1A6510C5={lvl=59,domain="ia"}
,qFCBE866750752B93={lvl=59,domain="ia"}
,qFB60134F05400E78={lvl=59,domain="ia"}
,qFAF144A57B2CA618={lvl=59,domain="ia"}
,qFFC067EC4BC21B1C={lvl=59,domain="ia"}
,qFF2C42541913B07E={lvl=59,domain="ia"}
,qFCFBBE986C4C5787={lvl=59,domain="ia"}
,qFCE5C14771CBB235={lvl=59,domain="ia"}
,qFC0853212EC0D866={lvl=59,domain="ia"}
,qFDCBB4B354E5458E={lvl=59,domain="ia"}
,qFCD8C7B646C2A558={lvl=59,domain="ia"}
,qFB481B0E35253EC9={lvl=59,domain="ia"}
,qFAFD7ED66BC0D575={lvl=59,domain="ia"}
,qFAABD99305211663={lvl=59,domain="ia"}
,qFDD42A772A054F86={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD773C9155C7ED0D={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD3F25B51F6742AB={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFCDACC211ACFA2A7={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC4606A4064F59A8={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF6E98E24EB813CB={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF1BEFB71B0D781A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE09573505DEC643={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFCDFFC890ADB0D62={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFAD2202021B2F28F={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF36CB3848207E38={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFEC5BA47489ADBF2={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE97E8416276A8F9={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD5CD7903611A9F8={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFAF568634878F7D0={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF04E0225AF92B2F={lvl=59,domain="ia"}
,qFEB296F6157527CB={lvl=59,domain="ia"}
,qFD0A20C76BEA6A01={lvl=59,domain="ia"}
,qFC9B5012217FA6B2={lvl=59,domain="ia"}
,qFB6D80C50354852F={lvl=59,domain="ia"}
,qFC5FCE6528400551={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC37E13747251A3E={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC12DF9132135415={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBB017C42B9E3B89={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBA43E6A4D86C2C0={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFEC28DB45B3930D8={lvl=59,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFEE6A3E034DAEDF3={lvl=59,scene="Black Strand",domain="ia"}
,qFE962B6E1D810451={lvl=59,scene="Black Strand",domain="ia"}
,qFB4BB2D34AB24971={lvl=59,scene="Black Strand",domain="ia"}
,qFB10C1E722C91C24={lvl=59,scene="Black Strand",domain="ia"}
,qFAEE51F520724E94={lvl=59,scene="Black Strand",domain="ia"}
,qFEC24A037F253500={lvl=59,scene="Black Strand",domain="ia"}
,qFD8606E114D634A1={lvl=59,scene="Black Strand",domain="ia"}
,qFCF4CF99505514A4={lvl=59,scene="Black Strand",domain="ia"}
,qFCA41EE93CD23615={lvl=59,scene="Black Strand",domain="ia"}
,qFA2C051B7D6D178B={lvl=59,scene="Black Strand",domain="ia"}
,qFA58F41542ADB20B={lvl=59,domain="ia"}
,qFA58F4141A016F21={lvl=59,domain="ia"}
,qFA58F41331B8EFAC={lvl=59,domain="ia"}
,qFA58F412677D936E={lvl=59,domain="ia"}
,qFA58F4114491CDBC={lvl=59,domain="ia"}
,qFF104129D5ACAE2C={lvl=59,scene="Den of Kwell",type={20},giver='UFCB3AD7304700B88'}
,q1F4BF16DD785FD2F={lvl=59,scene="Den of Kwell",type={20},giver='U0C00B5EC06EBA4FA'}
,q1F93FFBF972C2E58={lvl=59,scene="Den of Kwell",type={20},giver='U56550FDA3B173C76'}
,q247CC86610798912={lvl=59,scene="Den of Kwell",type={20},giver='U496C763154D59C56'}
,q5AFB1F30E12A1971={lvl=59,scene="Den of Kwell",type={20},giver='U496393E70F549560'}
,qFD95F8301DAB5406={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD66716D18CE5623={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC93B0F96403A312={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB35D8EC64FDC20A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA36D57B41438E4A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB7CCFCC36A52BB9={lvl=59,domain="ia"}
,q073E543BBB85BC30={lvl=59,domain="guild"}
,qFF26FB9B05BFB95F={lvl=59,scene="Shapers Citadel",type={1},giver='UFCB3AD7636F2B4FF'}
,qFFB8D7DD47FC1F7E={lvl=59,scene="Halcyon Gates",type={1,14},giver='UFFA88B7C7AB4AA96'}
,qFFBF3EB65B718958={lvl=59,scene="The Armory",type={14},giver='UFF9C3C8B1FA41129'}
,qFAA167F21D8A1CB9={lvl=59,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFF2C2A0FC99AD7D8={lvl=59,scene="Black Strand",type={1},giver='UFCCE9CDB50E48FE6'}
,qFC1DAF3D7B4E1AC1={lvl=59,domain="ia"}
,qFFAD405CDA7360F1={lvl=59,scene="The Armory",type={8},giver='UFF9C3C8B1FA41129'}
,qFE3B5BEA9D5CDB95={lvl=59,scene="Den of Kwell",type={8},giver='UFCB3AD727B1A40BB'}
,qFF71D36547FE6A0B={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF67D4A908880A06={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFEF263903A8B2051={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE31C5281AA9A7CD={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFCE4E1C5632410E9={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD797B641370D4C0={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD4698D8021615FA={lvl=59,scene="Den of Kwell",type={13}}
,qFF3FA06F0E53FE5B={lvl=59,domain="ia"}
,qFF3FA06E4401F402={lvl=59,domain="ia"}
,qFF3FA06D762C62FE={lvl=59,domain="ia"}
,qFF3FA06C51552B56={lvl=59,domain="ia"}
,qFF3FA06B0FCEBE3D={lvl=59,domain="ia"}
,q5BDAABA7794DCC07={lvl=59,type={17}}
,qFA78FB74EF6C11E2={lvl=59,scene="Korolis Valley",type={9,1}}
,qFAB021B2BBD8DFE6={lvl=59,scene="Brink of Angoro",type={1,9}}
,qFD10D32254D50BFC={lvl=59,scene="Black Strand",type={9,1}}
,qFC7E23A531597A14={lvl=59,scene="Brink of Angoro",type={9,1}}
,qFEDC07D74CCE0330={lvl=59,scene="Den of Kwell",type={1,9}}
,qFF678889B29B68C4={lvl=59,scene="Brink of Angoro",type={1,9}}
,qFAAC356055B0D9A2={lvl=59,scene="The Northern Ruins",type={1,9}}
,qFA5E7FA232615C61={lvl=59,scene="Black Strand",type={1,9}}
,q2882BBE4853CB0D8={lvl=59,scene="Arakhosian Hinterlands",type={9,1}}
,qFF3458945A9BAFCB={lvl=59,scene="The Northern Ruins",type={1,9}}
,qFA4DAB2252D7F8B1={lvl=59,scene="The Breach",type={1,9}}
,qFDF82F58830597C8={lvl=59,scene="Black Strand",type={9,1}}
,qFA84A25AAFD2784E={lvl=59,scene="Korolis Valley",type={9,1}}
,qFF5B5B4B4D8A7FEA={lvl=59,scene="Black Strand",type={1,9}}
,q6E6C0CF499203B37={lvl=59,scene="Black Strand",type={9,1}}
,qFADD336B739DB75E={lvl=59,scene="Den of Kwell",type={9,1}}
,qFA71C50D9D4CBBA3={lvl=59,scene="Korolis Valley",type={9,1}}
,qFE44FD288CF3E9BF={lvl=59,scene="The Northern Ruins",type={9,1}}
,qFF792D9BDBC6FA86={lvl=59,scene="Shapers Citadel",type={1,9}}
,qFC54884D67165872={lvl=59,scene="Shapers Citadel",type={9,1}}
,qFEC7D7EC3C6A682B={lvl=59,scene="Tower of Dawn",type={1,9}}
,q134B288A6E334D7D={lvl=59,scene="Arakhosian Hinterlands",type={1,9}}
,qFA4703CCD3B1BCBF={lvl=59,scene="Shapers Citadel",type={1,9}}
,q08B526898DA6B89E={lvl=59,scene="Arakhosian Hinterlands",type={9,1}}
,q718FD4643FB86553={lvl=59,scene="Tower of Dawn",type={1,9}}
,qFF693AEF80824D5D={lvl=59,scene="The Northern Ruins",type={1,9}}
,q6F5F34E71E78B9B5={lvl=59,scene="Tower of Dawn",type={9,1}}
,qFF57E25D564F6B2E={lvl=59,scene="Brink of Angoro",type={1,9}}
,qFDFE570C90EFD163={lvl=59,scene="The Breach",type={9,1}}
,q312747A21166B53A={lvl=59,scene="Black Strand",type={1,9}}
,qFEF969883EC3258C={lvl=59,scene="Black Strand",type={1,9}}
,q4942F7016883C907={lvl=59,scene="Black Strand",type={9,1}}
,qFEE91C492BD832F3={lvl=59,scene="The Northern Ruins",type={1,9}}
,qFCDD002E7C8698AB={lvl=59,scene="Black Strand",type={9,1}}
,q0966A82ABC90944A={lvl=59,scene="Korolis Valley",type={1,9}}
,qFB85AF1F8348B42C={lvl=59,scene="The Breach",type={9,1}}
,qFFB7AD5A37FC022E={lvl=59,domain="ia"}
,qFE39CD6F30BA6FD4={lvl=59,domain="ia"}
,qFBC966386BA8461E={lvl=59,domain="ia"}
,qFB6E0ECE2C650D96={lvl=59,domain="ia"}
,qFA85C5E242696946={lvl=59,domain="ia"}
,qFBF2B363995243D1={lvl=59,scene="Den of Kwell",use={{key='IFB6C80ED7FA91EE9,3C0893359F94AB79,,,,,,', count=1}},type={1,10,6},giver='UFCB3AD7414AECE99'}
,qFB556B9D6A08D084={lvl=59,type={16,1}}
,q363E042329B29F62={lvl=59,type={1,16}}
,qFF01A08C797413ED={lvl=59,domain="ia"}
,qFEDAAF394BA654D3={lvl=59,domain="ia"}
,qFC0C46382EDE9295={lvl=59,domain="ia"}
,qFB7850E02F527F6D={lvl=59,domain="ia"}
,qFADEDEC00A81F6F0={lvl=59,domain="ia"}
,qFFBFD533D0762ABB={lvl=59,scene="The Armory",type={10},giver='UFF9C3C8B1FA41129'}
,qFC6859745E94FF36={lvl=59,domain="ia"}
,qFC68597372A39EAE={lvl=59,domain="ia"}
,qFC6859721F0C07B4={lvl=59,domain="ia"}
,qFC685971065B4BCC={lvl=59,domain="ia"}
,qFC68597042B16E7E={lvl=59,domain="ia"}
,q56AE8B6428B38EDC={lvl=59,scene="Black Strand",type={6,1},giver='U54FDFA6029153F37'}
,q026E45DDC410F1C0={lvl=59,scene="Black Strand",type={6,1},giver='U54FDFA6029153F37'}
,q464B53700ECFF1CF={lvl=59,scene="Black Strand",type={6,1},giver='U54FDFA6029153F37'}
,qFEA4D7811268E99B={lvl=59,domain="ia"}
,qFFB49031B2E10B17={lvl=59,scene="Path of Princes",type={6},giver='UFDB6A6B529EDBFD6'}
,qFF682C116C4D2847={lvl=59,scene="Path of Princes",type={14},giver='UFFA185E427A50A1A'}
,qFDEB542174AFBF4A={lvl=59,domain="ia"}
,qFDEB54205554A78C={lvl=59,domain="ia"}
,qFDEB541F4DA3BF56={lvl=59,domain="ia"}
,qFDEB541E1CD4DCEE={lvl=59,domain="ia"}
,qFDEB541D3C7EB5A8={lvl=59,domain="ia"}
,q4D28F9C842B04B73={lvl=59}
,qFFF5AB315B2E8FEC={lvl=59,domain="ia"}
,qFEDDFD18742E316A={lvl=59,domain="ia"}
,qFB37530B34CC3CFD={lvl=59,domain="ia"}
,qFA48C39C74719174={lvl=59,domain="ia"}
,qFA3303C20504AD8F={lvl=59,domain="ia"}
,qFE6A867270BE2E0A={lvl=59,domain="pvp",giver='U186CEF5C4AB3E0BD'}
,qFD406954DBFB1473={lvl=59,domain="pvp",giver='U679C15062B0D5DB5'}
,qFB1D7D6DF2931BC4={lvl=59,scene="The Northern Ruins",type={4}}
,qFA14CFE6E7768F66={lvl=59,scene="Arlan's Challenge",giver='UFF69C9A616A3E348'}
,qFFDB817A92EB5200={lvl=59,scene="Throne Room",type={1},giver='UFFA85A904A03166B'}
,qFF6A233C56710E60={lvl=59,scene="The Armory",type={8},giver='UFF9C3C8B1FA41129'}
,qFBBD04B251B04463={lvl=59,domain="ia"}
,qFA81A5B513702431={lvl=59,domain="ia"}
,qFE2DDC8014CF14D2={lvl=59,type={17}}
,qFE0801B105C94B54={lvl=59,scene="Black Strand",domain="ia"}
,qFD414931079C69FA={lvl=59,scene="Black Strand",domain="ia"}
,qFD15C36A507E5107={lvl=59,scene="Black Strand",domain="ia"}
,qFC3A024A54DFFF8B={lvl=59,scene="Black Strand",domain="ia"}
,qFBF3B4850914FC3C={lvl=59,scene="Black Strand",domain="ia"}
,qFFAE0BB7FCFD42D5={lvl=59,scene="Path of Princes",type={14},giver='UFA246C264F9C6727'}
,qFDF56BDE5DEDF14C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC9FB68B481CD685={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC8E681765CDD5E4={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB97B6A0285E4632={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA1508085AE79562={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFFBF8056BE2F1C2A={lvl=59,scene="Throne Room",type={1},giver='UFF8556A54C509C84'}
,qFB506D3FB529D9DC={lvl=59,scene="The Armory",type={8}}
,qFBAEC29D260D16B5={lvl=59,scene="Black Strand"}
,qFE2043CB4059DF7A={lvl=59,domain="ia"}
,qFE2043CA3C10F48A={lvl=59,domain="ia"}
,qFE2043C9746F9DC5={lvl=59,domain="ia"}
,qFE2043C81A565CE8={lvl=59,domain="ia"}
,qFE2043C7153A1AD6={lvl=59,domain="ia"}
,q63D4B400A8C288DB={lvl=59,scene="Arlan's Challenge",giver='UFF69C9A616A3E348'}
,qFFEC01FE27BCE07D={lvl=59,scene="Black Strand",domain="ia"}
,qFFA540CE4659F461={lvl=59,scene="Black Strand",domain="ia"}
,qFCC1706005D04D85={lvl=59,scene="Black Strand",domain="ia"}
,qFCB257934E56798B={lvl=59,scene="Black Strand",domain="ia"}
,qFB94C521002449E0={lvl=59,scene="Black Strand",domain="ia"}
,qFF0DBC5B2C1596B1={lvl=59,domain="ia"}
,qFDFA311C0EF83711={lvl=59,domain="ia"}
,qFC350BB414E00F4A={lvl=59,domain="ia"}
,qFBB99D0E5E1E0E4A={lvl=59,domain="ia"}
,qFA8F2E663F77B842={lvl=59,domain="ia"}
,qFFEC32AE69DF1164={lvl=59,domain="ia"}
,qFEF0F7C871A252F7={lvl=59,domain="ia"}
,qFCF7714065CEE01B={lvl=59,domain="ia"}
,qFAA3CFCD0D57A1E3={lvl=59,domain="ia"}
,qFA2C582A6523FF99={lvl=59,domain="ia"}
,qFF390610750109CA={lvl=59,domain="ia"}
,qFE315A6E1B17C526={lvl=59,domain="ia"}
,qFC163F8E7151A7BE={lvl=59,domain="ia"}
,qFB7952446D1877A4={lvl=59,domain="ia"}
,qFA996A284F071992={lvl=59,domain="ia"}
,qFE8E34F6580F38B0={lvl=59,scene="Black Strand",domain="ia"}
,qFCE84D1A1F50BE53={lvl=59,scene="Black Strand",domain="ia"}
,qFB815BF65E0658A5={lvl=59,scene="Black Strand",domain="ia"}
,qFB35D0F5575DC53C={lvl=59,scene="Black Strand",domain="ia"}
,qFA6F05C227534EB2={lvl=59,scene="Black Strand",domain="ia"}
,qFF63700967A56456={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE7E06AD45E64CAE={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBF668174CE459B3={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFAF43C62207DD04E={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA58A8FC425810EE={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFFEFE9EE87753B4B={lvl=59,scene="The Armory",type={8,20},giver='UFFEE19BE0999A17A'}
,qFFFE7FCE41788BF5={lvl=59,scene="Black Strand",domain="ia"}
,qFF366075752FC482={lvl=59,scene="Black Strand",domain="ia"}
,qFD012C2F78C070DA={lvl=59,scene="Black Strand",domain="ia"}
,qFCBE50376DC566E6={lvl=59,scene="Black Strand",domain="ia"}
,qFB1ED1293B9A6A96={lvl=59,scene="Black Strand",domain="ia"}
,qFFAA2AEB4362E78C={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF75BA806837DD25={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE0EC2CA0DB0594A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFDC1447D15103256={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA25D9F109A0A28E={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE55517418C7D999={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC6D3599541214EB={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFAF6C4790DC9DDA1={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA6F29077454D03A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA20305A48893FFA={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF8F477D5878DBDA={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF69951F704DA502={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF0A29194BBD2CC8={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFE82D6ED31AF4980={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFC74138A6517366A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFFE568A57EC7EAEF={lvl=59,scene="Black Strand",domain="ia"}
,qFF93AAFB1FF1E5C5={lvl=59,scene="Black Strand",domain="ia"}
,qFD17EC1308A0A562={lvl=59,scene="Black Strand",domain="ia"}
,qFBC6CE2B2BF4CFCA={lvl=59,scene="Black Strand",domain="ia"}
,qFA6B284B1B156F0E={lvl=59,scene="Black Strand",domain="ia"}
,qFC8E264A6DEB3C32={lvl=59,domain="ia"}
,qFC250AFA02156280={lvl=59,domain="ia"}
,qFA8756454CE6CC04={lvl=59,domain="ia"}
,qFA2ABFCD6444817F={lvl=59,domain="ia"}
,qFA19CC9322AABFA1={lvl=59,domain="ia"}
,qFE54D9CB4C4B4C33={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD7507704344F099={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB7253AD62FB9F52={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFAD4CF0537E02C82={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFA9490484637D216={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFF19B1987F9109A5={lvl=59,domain="ia"}
,qFE07900A7B5D2494={lvl=59,domain="ia"}
,qFD501274430C5723={lvl=59,domain="ia"}
,qFBEDDAC06AEE9E7B={lvl=59,domain="ia"}
,qFB045F0C6E004984={lvl=59,domain="ia"}
,qFE5CA9355E2C3B21={lvl=59,scene="Black Strand",domain="ia"}
,qFDD436A665C6896B={lvl=59,scene="Black Strand",domain="ia"}
,qFDBB2CE74D84CD18={lvl=59,scene="Black Strand",domain="ia"}
,qFC28A8735CBABD23={lvl=59,scene="Black Strand",domain="ia"}
,qFB0DCBAC19F88E7E={lvl=59,scene="Black Strand",domain="ia"}
,qFE8BC3770804550E={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFDAC8F0A662C944B={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD088DBD40304B68={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFBA1F59C7C6EA9E3={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFB663A7E309D317A={lvl=59,scene="Brink of Angoro",domain="ia"}
,qFD42D91B47DB2FE2={lvl=59,domain="ia"}
,qFC5A157330CA964E={lvl=59,domain="ia"}
}) end