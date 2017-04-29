/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMediaStreamsControl INHERIT QMediaControl

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isActive
   METHOD metaData
   METHOD setActive
   METHOD streamCount
   METHOD streamType

   METHOD onActiveStreamsChanged
   METHOD onStreamsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaStreamsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaStreamsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaStreamsControl>
#endif


HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_DELETE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isActive(int stream) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ISACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive ( (int) hb_parni(1) ) );
  }
}


/*
virtual QVariant metaData(int stream, const QString & key) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_METADATA )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->metaData ( (int) hb_parni(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setActive(int stream, bool state) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_SETACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActive ( (int) hb_parni(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int streamCount() = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMCOUNT )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->streamCount (  ) );
  }
}


/*
virtual StreamType streamType(int stream) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMTYPE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->streamType ( (int) hb_parni(1) ) );
  }
}




#pragma ENDDUMP
