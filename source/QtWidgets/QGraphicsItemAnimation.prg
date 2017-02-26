/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QMATRIX
REQUEST QPOINTF
REQUEST QTIMELINE
#endif

CLASS QGraphicsItemAnimation INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsItemAnimation
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsItemAnimation>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsItemAnimation>
#endif
#endif

#include <QMatrix>
#include <QPointF>

/*
QGraphicsItemAnimation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QGraphicsItemAnimation * o = new QGraphicsItemAnimation ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsItemAnimation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void clear ()
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_CLEAR )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal horizontalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->horizontalScaleAt ( par1 ) );
  }
}


/*
qreal horizontalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->horizontalShearAt ( par1 ) );
  }
}


/*
QGraphicsItem * item () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * ptr = obj->item (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QMatrix matrixAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_MATRIXAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QMatrix * ptr = new QMatrix( obj->matrixAt ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
QPointF posAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_POSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QPointF * ptr = new QPointF( obj->posAt ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



/*
qreal rotationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->rotationAt ( par1 ) );
  }
}




/*
void setItem ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qtxhb_itemGetPtr(1);
    obj->setItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosAt ( qreal step, const QPointF & point )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETPOSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
    obj->setPosAt ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRotationAt ( qreal step, qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setRotationAt ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaleAt ( qreal step, qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->setScaleAt ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShearAt ( qreal step, qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->setShearAt ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeLine ( QTimeLine * timeLine )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTimeLine * par1 = (QTimeLine *) _qtxhb_itemGetPtr(1);
    obj->setTimeLine ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTranslationAt ( qreal step, qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->setTranslationAt ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QTimeLine * timeLine () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_TIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTimeLine * ptr = obj->timeLine (  );
    _qt4xhb_createReturnClass ( ptr, "QTIMELINE" );
  }
}



/*
qreal verticalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->verticalScaleAt ( par1 ) );
  }
}


/*
qreal verticalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->verticalShearAt ( par1 ) );
  }
}


/*
qreal xTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_XTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->xTranslationAt ( par1 ) );
  }
}


/*
qreal yTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_YTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->yTranslationAt ( par1 ) );
  }
}


/*
void setStep ( qreal step )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSTEP )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
