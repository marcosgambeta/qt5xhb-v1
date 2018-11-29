%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTouchDevice()
$constructor=|new|

$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=DeviceType type() const
$method=|QTouchDevice::DeviceType|type|

$prototype=Capabilities capabilities() const
$method=|QTouchDevice::Capabilities|capabilities|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=void setType(DeviceType devType)
$method=|void|setType|QTouchDevice::DeviceType

$prototype=void setCapabilities(Capabilities caps)
$method=|void|setCapabilities|QTouchDevice::Capabilities

$prototype=static QList<const QTouchDevice *> devices()
$staticMethod=|QList<const QTouchDevice *>|devices|

$extraMethods

#pragma ENDDUMP
