%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QBluetoothAddress>
#include <QBluetoothUuid>

%% void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> list );

$prototype=QBluetoothDeviceInfo()
$internalConstructor=5,2,0|new1|

$prototype=QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
$internalConstructor=5,2,0|new2|const QBluetoothAddress &,const QString &,quint32

$prototype=QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)
$internalConstructor=5,2,0|new3|const QBluetoothDeviceInfo &

//[1]QBluetoothDeviceInfo()
//[2]QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
//[3]QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothDeviceInfo_new1();
  }
  else if( ISNUMPAR(3) && ISQBLUETOOTHADDRESS(1) && ISCHAR(2) && ISNUM(3) )
  {
    QBluetoothDeviceInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHDEVICEINFO(1) )
  {
    QBluetoothDeviceInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=bool isCached() const
$method=5,2,0|bool|isCached|

$prototype=void setCached(bool cached)
$method=5,2,0|void|setCached|bool

$prototype=QBluetoothAddress address() const
$method=5,2,0|QBluetoothAddress|address|

$prototype=QString name() const
$method=5,2,0|QString|name|

$prototype=ServiceClasses serviceClasses() const
$method=5,2,0|QBluetoothDeviceInfo::ServiceClasses|serviceClasses|

$prototype=MajorDeviceClass majorDeviceClass() const
$method=5,2,0|QBluetoothDeviceInfo::MajorDeviceClass|majorDeviceClass|

$prototype=quint8 minorDeviceClass() const
$method=5,2,0|quint8|minorDeviceClass|

$prototype=qint16 rssi() const
$method=5,2,0|qint16|rssi|

$prototype=void setRssi(qint16 signal)
$method=5,2,0|void|setRssi|qint16

$prototype=void setServiceUuids(const QList<QBluetoothUuid> &uuids, DataCompleteness completeness)
$method=5,2,0|void|setServiceUuids|const QList<QBluetoothUuid> &,QBluetoothDeviceInfo::DataCompleteness

$prototype=QList<QBluetoothUuid> serviceUuids(DataCompleteness *completeness = 0) const
%% TODO: implementar
%% $method=5,2,0|QList<QBluetoothUuid>|serviceUuids|QBluetoothDeviceInfo::DataCompleteness *=0

$prototype=DataCompleteness serviceUuidsCompleteness() const
$method=5,2,0|QBluetoothDeviceInfo::DataCompleteness|serviceUuidsCompleteness|

$extraMethods

#pragma ENDDUMP
