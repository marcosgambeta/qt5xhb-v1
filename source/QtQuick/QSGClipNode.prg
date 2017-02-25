/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QSGClipNode INHERIT QSGBasicGeometryNode

   DATA class_id INIT Class_Id_QSGClipNode
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGClipNode>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGClipNode>
#endif
#endif

/*
QSGClipNode()
*/
HB_FUNC_STATIC( QSGCLIPNODE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGClipNode * o = new QSGClipNode (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSGClipNode *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSGCLIPNODE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QRectF clipRect() const
*/
HB_FUNC_STATIC( QSGCLIPNODE_CLIPRECT )
{
  QSGClipNode * obj = (QSGClipNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->clipRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool isRectangular() const
*/
HB_FUNC_STATIC( QSGCLIPNODE_ISRECTANGULAR )
{
  QSGClipNode * obj = (QSGClipNode *) _qtxhb_itemGetPtrStackSelfItem();
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
  QSGClipNode * obj = (QSGClipNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->setClipRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIsRectangular(bool rectHint)
*/
HB_FUNC_STATIC( QSGCLIPNODE_SETISRECTANGULAR )
{
  QSGClipNode * obj = (QSGClipNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIsRectangular ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
