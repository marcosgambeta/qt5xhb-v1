/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsEffect INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
#include <QGraphicsEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsEffect>
#endif


HB_FUNC_STATIC( QGRAPHICSEFFECT_DELETE )
{
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
}

/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECT )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECTFOR )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_ISENABLED )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled () );
  }
}


/*
void setEnabled ( bool enable )
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_SETENABLED )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update ()
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_UPDATE )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->update ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
