/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QSGClipNode INHERIT QSGBasicGeometryNode

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clipRect
   METHOD isRectangular
   METHOD setClipRect
   METHOD setIsRectangular

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGClipNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGClipNode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGClipNode>
#endif

/*
QSGClipNode()
*/
HB_FUNC_STATIC( QSGCLIPNODE_NEW )
{
  QSGClipNode * o = new QSGClipNode (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSGCLIPNODE_DELETE )
{
  QSGClipNode * obj = (QSGClipNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRectF clipRect() const
*/
HB_FUNC_STATIC( QSGCLIPNODE_CLIPRECT )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->clipRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool isRectangular() const
*/
HB_FUNC_STATIC( QSGCLIPNODE_ISRECTANGULAR )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRectangular (  ) );
  }
}


/*
void setClipRect(const QRectF & rect)
*/
HB_FUNC_STATIC( QSGCLIPNODE_SETCLIPRECT )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->setClipRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIsRectangular(bool rectHint)
*/
HB_FUNC_STATIC( QSGCLIPNODE_SETISRECTANGULAR )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIsRectangular ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
