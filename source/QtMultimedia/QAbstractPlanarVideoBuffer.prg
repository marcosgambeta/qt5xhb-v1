/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAbstractPlanarVideoBuffer INHERIT QAbstractVideoBuffer

   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractPlanarVideoBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractPlanarVideoBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractPlanarVideoBuffer>
#endif

/*
QAbstractPlanarVideoBuffer(HandleType type) (abstract)
*/

/*
virtual ~QAbstractPlanarVideoBuffer()
*/
HB_FUNC_STATIC( QABSTRACTPLANARVIDEOBUFFER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QAbstractPlanarVideoBuffer * obj = (QAbstractPlanarVideoBuffer *) _qt5xhb_itemGetPtrStackSelfItem();

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
uchar *map(MapMode mode, int *numBytes, int *bytesPerLine) override;
*/

/*
virtual int map(MapMode mode, int *numBytes, int bytesPerLine[4], uchar *data[4]) = 0;
*/

#pragma ENDDUMP