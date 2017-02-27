/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QGRAPHICSANCHOR
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsAnchorLayout INHERIT QGraphicsLayout

   DATA class_id INIT Class_Id_QGraphicsAnchorLayout
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addAnchor
   METHOD addAnchors
   METHOD addCornerAnchors
   METHOD anchor
   METHOD horizontalSpacing
   METHOD setHorizontalSpacing
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsAnchorLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsAnchorLayout>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsAnchorLayout>
#endif
#endif

/*
QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsAnchorLayout * o = new QGraphicsAnchorLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QGraphicsLayoutItem * par3 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(3);
    int par4 = hb_parni(4);
    QGraphicsAnchor * ptr = obj->addAnchor ( par1,  (Qt::AnchorPoint) par2, par3,  (Qt::AnchorPoint) par4 );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSANCHOR" );
  }
}


/*
void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    QGraphicsLayoutItem * par2 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) Qt::Horizontal | Qt::Vertical : hb_parni(3);
    obj->addAnchors ( par1, par2,  (Qt::Orientations) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDCORNERANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QGraphicsLayoutItem * par3 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(3);
    int par4 = hb_parni(4);
    obj->addCornerAnchors ( par1,  (Qt::Corner) par2, par3,  (Qt::Corner) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QGraphicsLayoutItem * par3 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(3);
    int par4 = hb_parni(4);
    QGraphicsAnchor * ptr = obj->anchor ( par1,  (Qt::AnchorPoint) par2, par3,  (Qt::AnchorPoint) par4 );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSANCHOR" );
  }
}


/*
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_HORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->horizontalSpacing (  ) );
  }
}


/*
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setHorizontalSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETVERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setVerticalSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal verticalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_VERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->verticalSpacing (  ) );
  }
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_COUNT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_INVALIDATE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ITEMAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_REMOVEAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAt ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGeometry ( const QRectF & geom )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETGEOMETRY )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
