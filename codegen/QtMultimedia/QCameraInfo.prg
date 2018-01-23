%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD availableCameras
   METHOD defaultCamera
   METHOD description
   METHOD deviceName
   METHOD isNull
   METHOD orientation
   METHOD position

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraInfo(const QByteArray &name = QByteArray())
$internalConstructor=|new1|const QByteArray &=QByteArray()

$prototype=explicit QCameraInfo(const QCamera &camera)
$internalConstructor=|new2|const QCamera &

$prototype=QCameraInfo(const QCameraInfo& other)
$internalConstructor=|new3|const QCameraInfo &

//[1]explicit QCameraInfo(const QByteArray &name = QByteArray())
//[2]explicit QCameraInfo(const QCamera &camera)
//[3]QCameraInfo(const QCameraInfo& other)

HB_FUNC_STATIC( QCAMERAINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISQBYTEARRAY(1) )
  {
    QCameraInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQCAMERA(1) )
  {
    QCameraInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQCAMERAINFO(1) )
  {
    QCameraInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCameraInfo()
$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QString deviceName() const
$method=|QString|deviceName|

$prototype=QString description() const
$method=|QString|description|

$prototype=QCamera::Position position() const
$method=|QCamera::Position|position|

$prototype=int orientation() const
$method=|int|orientation|

$prototype=static QCameraInfo defaultCamera()
$staticMethod=|QCameraInfo|defaultCamera|

$prototype=static QList<QCameraInfo> availableCameras(QCamera::Position position = QCamera::UnspecifiedPosition)
$staticMethod=|QList<QCameraInfo>|availableCameras|QCamera::Position=QCamera::UnspecifiedPosition

#pragma ENDDUMP
