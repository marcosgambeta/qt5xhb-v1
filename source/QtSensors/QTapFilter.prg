/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTapFilter INHERIT QSensorFilter

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapFilter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapFilter>
#endif
#endif


HB_FUNC_STATIC( QTAPFILTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapFilter * obj = (QTapFilter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool filter(QTapReading *reading) = 0
*/
HB_FUNC_STATIC( QTAPFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapFilter * obj = (QTapFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTapReading * par1 = (QTapReading *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->filter ( par1 ) );
  }
#endif
}



#pragma ENDDUMP
