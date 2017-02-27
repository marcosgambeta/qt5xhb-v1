/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMEDIACONTENT
#endif

CLASS QMediaGaplessPlaybackControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QMediaGaplessPlaybackControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD crossfadeTime
   METHOD isCrossfadeSupported
   METHOD nextMedia
   METHOD setCrossfadeTime
   METHOD setNextMedia
   METHOD onAdvancedToNextMedia
   METHOD onCrossfadeTimeChanged
   METHOD onNextMediaChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaGaplessPlaybackControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMediaGaplessPlaybackControl>
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMediaGaplessPlaybackControl>
#endif
#endif


HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual qreal crossfadeTime() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_CROSSFADETIME )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->crossfadeTime (  ) );
  }
}


/*
virtual bool isCrossfadeSupported() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_ISCROSSFADESUPPORTED )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCrossfadeSupported (  ) );
  }
}


/*
virtual QMediaContent nextMedia() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_NEXTMEDIA )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->nextMedia (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
virtual void setCrossfadeTime(qreal crossfadeTime) = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_SETCROSSFADETIME )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCrossfadeTime ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setNextMedia(const QMediaContent & media) = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_SETNEXTMEDIA )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * par1 = (QMediaContent *) _qt5xhb_itemGetPtr(1);
    obj->setNextMedia ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
