/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QMATRIX
REQUEST QPOINTF
REQUEST QTIMELINE
#endif

CLASS QGraphicsItemAnimation INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD horizontalScaleAt
   METHOD horizontalShearAt
   METHOD item
   METHOD matrixAt
   METHOD posAt
   METHOD rotationAt
   METHOD setItem
   METHOD setPosAt
   METHOD setRotationAt
   METHOD setScaleAt
   METHOD setShearAt
   METHOD setTimeLine
   METHOD setTranslationAt
   METHOD timeLine
   METHOD verticalScaleAt
   METHOD verticalShearAt
   METHOD xTranslationAt
   METHOD yTranslationAt
   METHOD setStep

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsItemAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsItemAnimation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsItemAnimation>
#endif

#include <QMatrix>
#include <QPointF>

/*
QGraphicsItemAnimation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_NEW )
{
  QGraphicsItemAnimation * o = new QGraphicsItemAnimation ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_DELETE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_CLEAR )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal horizontalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->horizontalScaleAt ( PQREAL(1) ) );
  }
}


/*
qreal horizontalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->horizontalShearAt ( PQREAL(1) ) );
  }
}


/*
QGraphicsItem * item () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * ptr = obj->item ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QMatrix matrixAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_MATRIXAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrixAt ( PQREAL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
QPointF posAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_POSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->posAt ( PQREAL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



/*
qreal rotationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rotationAt ( PQREAL(1) ) );
  }
}




/*
void setItem ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setItem ( PQGRAPHICSITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosAt ( qreal step, const QPointF & point )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETPOSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosAt ( PQREAL(1), *PQPOINTF(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRotationAt ( qreal step, qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRotationAt ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaleAt ( qreal step, qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setScaleAt ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShearAt ( qreal step, qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setShearAt ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeLine ( QTimeLine * timeLine )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimeLine ( PQTIMELINE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTranslationAt ( qreal step, qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTranslationAt ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QTimeLine * timeLine () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_TIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTimeLine * ptr = obj->timeLine ();
    _qt5xhb_createReturnClass ( ptr, "QTIMELINE" );
  }
}



/*
qreal verticalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->verticalScaleAt ( PQREAL(1) ) );
  }
}


/*
qreal verticalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->verticalShearAt ( PQREAL(1) ) );
  }
}


/*
qreal xTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_XTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->xTranslationAt ( PQREAL(1) ) );
  }
}


/*
qreal yTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_YTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->yTranslationAt ( PQREAL(1) ) );
  }
}


/*
void setStep ( qreal step )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSTEP )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStep ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
