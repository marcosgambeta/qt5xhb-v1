/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF

CLASS QGraphicsEffect INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsEffect
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD boundingRect
   METHOD boundingRectFor
   METHOD isEnabled
   METHOD setEnabled
   METHOD update
   METHOD onEnabledChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsEffect>
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
#include <QGraphicsEffect>
#endif
#endif


HB_FUNC_STATIC( QGRAPHICSEFFECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECT )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECTFOR )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_ISENABLED )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
void setEnabled ( bool enable )
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_SETENABLED )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update ()
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_UPDATE )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->update (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
