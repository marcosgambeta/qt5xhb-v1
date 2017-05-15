/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSGVertexColorMaterial INHERIT QSGMaterial

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGVertexColorMaterial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGVertexColorMaterial>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGVertexColorMaterial>
#endif

/*
QSGVertexColorMaterial()
*/
HB_FUNC_STATIC( QSGVERTEXCOLORMATERIAL_NEW )
{
  QSGVertexColorMaterial * o = new QSGVertexColorMaterial ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSGVERTEXCOLORMATERIAL_DELETE )
{
  QSGVertexColorMaterial * obj = (QSGVertexColorMaterial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


#pragma ENDDUMP
