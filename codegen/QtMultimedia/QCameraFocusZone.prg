%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraFocusZone()

$prototype=QCameraFocusZone(const QRectF &area, FocusZoneStatus status = Selected)

$prototype=QCameraFocusZone(const QCameraFocusZone &other)
$constructor=|new|const QCameraFocusZone &

%% TODO: [1] and [2] not present in the documentation
//[1]QCameraFocusZone()
//[2]QCameraFocusZone(const QRectF &area, FocusZoneStatus status = Selected)
//[3]QCameraFocusZone(const QCameraFocusZone &other)

%% HB_FUNC_STATIC( QCAMERAFOCUSZONE_NEW )
%% {
%% }

$prototype=~QCameraFocusZone()
$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QRectF area() const
$method=|QRectF|area|

$prototype=FocusZoneStatus status() const
$method=|QCameraFocusZone::FocusZoneStatus|status|

$prototype=void setStatus(FocusZoneStatus status)
%% TODO: not presente in the documentation
%% $method=|void|setStatus|QCameraFocusZone::FocusZoneStatus

$extraMethods

#pragma ENDDUMP
