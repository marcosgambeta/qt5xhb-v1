/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QSIZE

CLASS QSpacerItem INHERIT QLayoutItem

   DATA class_id INIT Class_Id_QSpacerItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD changeSize
   METHOD expandingDirections
   METHOD geometry
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSpacerItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSpacerItem>
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
#include <QSpacerItem>
#endif
#endif

/*
QSpacerItem(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
*/
HB_FUNC_STATIC( QSPACERITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
  QSpacerItem * o = new QSpacerItem ( par1, par2,  (QSizePolicy::Policy) par3,  (QSizePolicy::Policy) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSpacerItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSPACERITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void changeSize(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
*/
HB_FUNC_STATIC( QSPACERITEM_CHANGESIZE )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
    int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
    obj->changeSize ( (int) hb_parni(1), (int) hb_parni(2),  (QSizePolicy::Policy) par3,  (QSizePolicy::Policy) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QSPACERITEM_EXPANDINGDIRECTIONS )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->expandingDirections (  );
    hb_retni( i );
  }
}


/*
virtual QRect geometry() const
*/
HB_FUNC_STATIC( QSPACERITEM_GEOMETRY )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QSPACERITEM_ISEMPTY )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
virtual QSize maximumSize() const
*/
HB_FUNC_STATIC( QSPACERITEM_MAXIMUMSIZE )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize minimumSize() const
*/
HB_FUNC_STATIC( QSPACERITEM_MINIMUMSIZE )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry(const QRect & r)
*/
HB_FUNC_STATIC( QSPACERITEM_SETGEOMETRY )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QSPACERITEM_SIZEHINT )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSpacerItem * spacerItem()
*/
HB_FUNC_STATIC( QSPACERITEM_SPACERITEM )
{
  QSpacerItem * obj = (QSpacerItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSpacerItem * ptr = obj->spacerItem (  );
    _qt4xhb_createReturnClass ( ptr, "QSPACERITEM" );
  }
}



#pragma ENDDUMP
