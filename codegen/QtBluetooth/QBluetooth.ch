%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

/*
enum QBluetooth::Security
flags QBluetooth::SecurityFlags
*/
#define QBluetooth_NoSecurity                                        0x00
#define QBluetooth_Authorization                                     0x01
#define QBluetooth_Authentication                                    0x02
#define QBluetooth_Encryption                                        0x04
#define QBluetooth_Secure                                            0x08
