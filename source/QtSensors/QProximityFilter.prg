/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QProximityFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProximityFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QProximityFilter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QProximityFilter>
#endif
#endif


HB_FUNC_STATIC( QPROXIMITYFILTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityFilter * obj = (QProximityFilter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool filter(QProximityReading *reading) = 0
*/
HB_FUNC_STATIC( QPROXIMITYFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityFilter * obj = (QProximityFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProximityReading * par1 = (QProximityReading *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->filter ( par1 ) );
  }
#endif
}



#pragma ENDDUMP
