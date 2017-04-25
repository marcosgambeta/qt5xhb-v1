/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsBlurEffect INHERIT QGraphicsWidget

   //DATA class_id INIT Class_Id_QGraphicsBlurEffect
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD blurHints
   METHOD blurRadius
   METHOD boundingRectFor
   METHOD setBlurHints
   METHOD setBlurRadius

   METHOD onBlurHintsChanged
   METHOD onBlurRadiusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsBlurEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsBlurEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsBlurEffect>
#endif

/*
QGraphicsBlurEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QGraphicsBlurEffect * o = new QGraphicsBlurEffect ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_DELETE )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
BlurHints blurHints () const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blurHints (  ) );
  }
}


/*
qreal blurRadius () const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->blurRadius (  ) );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BOUNDINGRECTFOR )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setBlurHints ( BlurHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBlurHints (  (QGraphicsBlurEffect::BlurHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlurRadius ( qreal blurRadius )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlurRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
