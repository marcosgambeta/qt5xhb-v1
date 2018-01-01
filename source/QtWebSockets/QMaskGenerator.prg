/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QMaskGenerator INHERIT QObject

   METHOD delete
   METHOD seed
   METHOD nextMask

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMaskGenerator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QMaskGenerator>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QMaskGenerator>
#endif
#endif


HB_FUNC_STATIC( QMASKGENERATOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QMaskGenerator * obj = (QMaskGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool seed() = 0
*/
HB_FUNC_STATIC( QMASKGENERATOR_SEED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QMaskGenerator * obj = (QMaskGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->seed () );
  }
#endif
}


/*
virtual quint32 nextMask() = 0
*/
HB_FUNC_STATIC( QMASKGENERATOR_NEXTMASK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QMaskGenerator * obj = (QMaskGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->nextMask () );
  }
#endif
}



#pragma ENDDUMP
