/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET
#endif

CLASS QLayoutItem

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD alignment
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setAlignment
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem
   METHOD widget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLayoutItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLayoutItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLayoutItem>
#endif

HB_FUNC_STATIC( QLAYOUTITEM_DELETE )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_ALIGNMENT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}

/*
QSizePolicy::ControlTypes controlTypes () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_CONTROLTYPES )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->controlTypes (  ) );
  }
}

/*
virtual Qt::Orientations expandingDirections () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_EXPANDINGDIRECTIONS )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->expandingDirections (  ) );
  }
}

/*
virtual QRect geometry () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_GEOMETRY )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_HASHEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLAYOUTITEM_HEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_INVALIDATE )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->invalidate (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEmpty () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_ISEMPTY )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}

/*
virtual QLayout * layout ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_LAYOUT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayout * ptr = obj->layout (  );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
virtual QSize maximumSize () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_MAXIMUMSIZE )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual int minimumHeightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLAYOUTITEM_MINIMUMHEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->minimumHeightForWidth ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize minimumSize () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_MINIMUMSIZE )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUTITEM_SETALIGNMENT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRect & r ) = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_SETGEOMETRY )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_SIZEHINT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSpacerItem * spacerItem ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_SPACERITEM )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSpacerItem * ptr = obj->spacerItem (  );
    _qt5xhb_createReturnClass ( ptr, "QSPACERITEM" );
  }
}

/*
virtual QWidget * widget ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_WIDGET )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->widget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

HB_FUNC_STATIC( QLAYOUTITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QLAYOUTITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLAYOUTITEM_NEWFROM );
}

HB_FUNC_STATIC( QLAYOUTITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLAYOUTITEM_NEWFROM );
}

HB_FUNC_STATIC( QLAYOUTITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLAYOUTITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
