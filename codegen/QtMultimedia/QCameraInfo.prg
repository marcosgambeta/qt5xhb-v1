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

$includes=5,3,0

$prototype=explicit QCameraInfo(const QByteArray &name = QByteArray())
$internalConstructor=5,3,0|new1|const QByteArray &=QByteArray()

$prototype=explicit QCameraInfo(const QCamera &camera)
$internalConstructor=5,3,0|new2|const QCamera &

$prototype=QCameraInfo(const QCameraInfo& other)
$internalConstructor=5,3,0|new3|const QCameraInfo &

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
$deleteMethod=5,3,0

$prototype=bool isNull() const
$method=5,3,0|bool|isNull|

$prototype=QString deviceName() const
$method=5,3,0|QString|deviceName|

$prototype=QString description() const
$method=5,3,0|QString|description|

$prototype=QCamera::Position position() const
$method=5,3,0|QCamera::Position|position|

$prototype=int orientation() const
$method=5,3,0|int|orientation|

$prototype=static QCameraInfo defaultCamera()
$staticMethod=5,3,0|QCameraInfo|defaultCamera|

$prototype=static QList<QCameraInfo> availableCameras(QCamera::Position position = QCamera::UnspecifiedPosition)
$staticMethod=5,3,0|QList<QCameraInfo>|availableCameras|QCamera::Position=QCamera::UnspecifiedPosition

#pragma ENDDUMP
