/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QMediaRecorderControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QMediaRecorderControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD applySettings
   METHOD duration
   METHOD isMuted
   METHOD outputLocation
   METHOD setOutputLocation
   METHOD state
   METHOD status
   METHOD volume
   METHOD setMuted
   METHOD setState
   METHOD setVolume
   METHOD onActualLocationChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaRecorderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaRecorderControl>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaRecorderControl>
#endif

#include <QUrl>


HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DELETE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void applySettings() = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_APPLYSETTINGS )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->applySettings (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DURATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration (  ) );
  }
}


/*
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ISMUTED )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMuted (  ) );
  }
}


/*
virtual QUrl outputLocation() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_OUTPUTLOCATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->outputLocation (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual bool setOutputLocation(const QUrl & location) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETOUTPUTLOCATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->setOutputLocation ( *par1 ) );
  }
}


/*
virtual QMediaRecorder::State state() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_STATE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
virtual QMediaRecorder::Status status() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_STATUS )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}


/*
virtual qreal volume() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_VOLUME )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->volume (  ) );
  }
}


/*
virtual void setMuted(bool muted) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETMUTED )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setState(QMediaRecorder::State state) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETSTATE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setState (  (QMediaRecorder::State) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVolume(qreal gain) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETVOLUME )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setVolume ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
