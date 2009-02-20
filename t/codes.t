#!/usr/bin/env perl
#
# test the codes data.
#

use strict;
use Test::More tests => 1041;

use_ok('Number::Phone::CountryCode') or exit 1;

while (<DATA>) {
    chomp;
    my ($country, $prefix, $idd, $ndd) = split /:/;

    $idd = undef unless length $idd;
    $ndd = undef unless length $ndd;

    my $obj = Number::Phone::CountryCode->new($country);
    isa_ok $obj, 'Number::Phone::CountryCode';

    SKIP: {
        skip "no data for $country", 4 unless defined $obj;
        is $obj->country, $country;
        is $obj->country_code, $prefix;
        is $obj->idd_prefix, $idd;
        is $obj->ndd_prefix, $ndd;
    }
}

__END__
AD:376:00:
AE:971:00:
AF:93:00:0
AG:1:011:1
AI:1:011:1
AL:355:00:0
AM:374:00:0
AN:599:00:0
AO:244:00:0
AQ:672::
AR:54:00:0
AS:684:00:
AT:963:00:
AU:61:0011:
AW:297:00:
AZ:994:00:0
BA:387:00:0
BB:1:011:1
BD:880:00:0
BE:32:00:0
BF:226:00:
BG:359:00:0
BH:973:00:
BI:257:90:
BJ:229:00:
BM:1:011:1
BN:7:810:
BO:591:00:0
BR:55:00:0
BS:1:011:1
BT:975:00:
BW:267:00:
BY:375:810:8
BZ:501:00:0
CA:1:011:1
CD:243:00:
CF:236:00:
CH:41:00:0
CI:225:00:0
CL:56:00:0
CM:237:00:
CO:57:009:09
CR:506:00:
CV:238:0:
CX:61:0011:0
CY:357:00:
CZ:420:00:
DE:49:00:0
DJ:253:00:
DK:45:00:
DO:1:011:
DZ:213:00:7
EC:593:00:0
EE:676:00:
EG:20:00:0
EH:685:0:
ER:291:00:
ET:251:00:0
FI:358:00:0
FJ:679:00:
FK:500:00:
FM:691:011:1
FO:298:00:
FR:33:00:
GA:241:00:
GB:44:00:0
GD:1:011:4
GF:592:001:0
GH:233:00:
GI:350:00:
GL:299:00:
GM:260:00:0
GP:590:00:
GQ:240:00:
GR:30:00:
GS:995:810:8
GT:502:00:
GW:245:00:
HK:852:001:
HN:504:00:0
HR:385:00:0
HT:509:00:0
HU:36:00:06
ID:62:001:
IE:354:00:0
IL:972:00:
IO:98:00:0
IR:964:00:0
IT:39:00:
JM:1:011:1
JO:962:00:0
JP:81:001:
KE:254:000:
KG:996:00:0
KH:855:001:0
KI:686:00:0
KM:269:00:
KN:1:011:1
KP:850:00:0
KR:82:001:
KW:965:00:0
KY:1:011:1
KZ:7:810:8
LB:961:00:
LC:1:011:1
LI:423:00:
LK:94:00:0
LR:231:00:22
LS:266:00:0
LT:370:00:8
LU:352:00:
LV:371:00:8
LY:223:00:0
MA:212:00:
MC:377:00:0
MD:373:00:0
MG:261:00:0
MH:692:011:1
MK:389:00:0
MN:976:001:0
MO:853:00:0
MP:1:011:1
MQ:596:00:0
MR:222:00:0
MS:1:011:
MU:230:00:0
MV:960:00:0
MW:265:00:
MX:52:00:01
MY:60:00:0
MZ:258:00:0
NA:264:09:0
NC:687:00:0
NE:227:00:0
NF:672:00:
NG:234:009:0
NI:505:00:0
NL:31:00:0
NO:47:00:
NR:674:00:0
NU:683:00:0
NZ:64:00:0
PA:507:00:
PE:51:00:0
PF:689:00:
PG:1:011:1
PH:63:00:0
PK:92:00:0
PL:48:00:0
PM:34:00:
PR:1:011:1
PS:970:00:0
PT:351:00:
PW:680:011:
PY:595:002:0
QA:974:0:0
RE:262:00:0
RO:40:00:0
RS:381:99:0
RW:250:00:0
SA:966:00:0
SB:677:00:
SC:248:00:0
SD:249:00:0
SE:46:00:0
SG:65:001:
SH:290:00:
SI:386:00:0
SK:421:00:0
SL:232:00:0
SM:378:00:0
SN:221:00:0
SO:252:00:
SR:597:00:
ST:239:00:0
SV:503:00:
SZ:268:00:
TC:1:011:1
TG:228:00:
TH:66:001:
TJ:992:810:8
TK:690:00:
TL:670:00:
TM:993:810:8
TN:216:00:0
TR:90:00:0
TT:1:011:1
TV:688:00:
TW:886:002:
TZ:255:000:
UA:380:810:8
UG:256:000:
US:1:011:1
UY:598:00:0
UZ:998:810:8
VA:379:00:
VC:1:011:1
VE:58:00:
VG:1:011:1
VI:1:011:1
VN:84:00:0
VU:678:00:
WF:681:19:
WS:685:0:
YE:967:00:0
YT:269:00:
ZA:27:09:0
ZW:263:110:0
