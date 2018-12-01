%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPurchasing

$header

$includes

$beginSlotsClass
$signal=|productRegistered( QInAppProduct * product )
$signal=|productUnknown( QInAppProduct::ProductType productType, const QString & identifier )
$signal=|transactionReady( QInAppTransaction * transaction )
$endSlotsClass
