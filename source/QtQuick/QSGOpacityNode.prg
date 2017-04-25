/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QSGOpacityNode INHERIT QSGNode

   //DATA class_id INIT Class_Id_QSGOpacityNode
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD setOpacity

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGOpacityNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGOpacityNode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGOpacityNode>
#endif

/*
QSGOpacityNode()
*/
HB_FUNC_STATIC( QSGOPACITYNODE_NEW )
{
  QSGOpacityNode * o = new QSGOpacityNode (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSGOPACITYNODE_DELETE )
{
  QSGOpacityNode * obj = (QSGOpacityNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal opacity() const
*/
HB_FUNC_STATIC( QSGOPACITYNODE_OPACITY )
{
  QSGOpacityNode * obj = (QSGOpacityNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->opacity (  ) );
  }
}


/*
void setOpacity(qreal opacity)
*/
HB_FUNC_STATIC( QSGOPACITYNODE_SETOPACITY )
{
  QSGOpacityNode * obj = (QSGOpacityNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
