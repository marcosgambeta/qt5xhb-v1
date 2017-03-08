/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsLinearLayout INHERIT QGraphicsLayout

   DATA class_id INIT Class_Id_QGraphicsLinearLayout
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addStretch
   METHOD alignment
   METHOD insertItem
   METHOD insertStretch
   METHOD itemSpacing
   METHOD orientation
   METHOD removeItem
   METHOD setAlignment
   METHOD setItemSpacing
   METHOD setOrientation
   METHOD setSpacing
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretchFactor
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLinearLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsLinearLayout>
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
#include <QGraphicsLinearLayout>
#endif

/*
QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW1 )
{
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsLinearLayout * o = new QGraphicsLinearLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW2 )
{
  int par1 = hb_parni(1);
  QGraphicsLayoutItem * par2 = ISNIL(2)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsLinearLayout * o = new QGraphicsLinearLayout (  (Qt::Orientation) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
//[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEARLAYOUT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEARLAYOUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_DELETE )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ADDITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addStretch ( int stretch = 1 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ADDSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addStretch ( (int) ISNIL(1)? 1 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->alignment ( par1 ) );
  }
}


/*
void insertItem ( int index, QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INSERTITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par2 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(2);
    obj->insertItem ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertStretch ( int index, int stretch = 1 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INSERTSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertStretch ( (int) hb_parni(1), (int) ISNIL(2)? 1 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal itemSpacing ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->itemSpacing ( (int) hb_parni(1) ) );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ORIENTATION )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}


/*
void removeItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_REMOVEITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setAlignment ( par1,  (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemSpacing ( int index, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setItemSpacing ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETORIENTATION )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStretchFactor ( QGraphicsLayoutItem * item, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETSTRETCHFACTOR )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->setStretchFactor ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal spacing () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->spacing (  ) );
  }
}


/*
int stretchFactor ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_STRETCHFACTOR )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->stretchFactor ( par1 ) );
  }
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_COUNT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INVALIDATE )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ITEMAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_REMOVEAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAt ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETGEOMETRY )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SIZEHINT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) _qt5xhb_itemGetPtr(2);
    QSizeF * ptr = new QSizeF( obj->sizeHint (  (Qt::SizeHint) par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



#pragma ENDDUMP
