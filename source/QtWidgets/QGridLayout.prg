/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QSIZE
#endif

CLASS QGridLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QGridLayout
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addLayout1
   METHOD addLayout2
   METHOD addLayout
   METHOD addWidget1
   METHOD addWidget2
   METHOD addWidget
   METHOD cellRect
   METHOD columnCount
   METHOD columnMinimumWidth
   METHOD columnStretch
   METHOD getItemPosition
   METHOD horizontalSpacing
   METHOD itemAtPosition
   METHOD originCorner
   METHOD rowCount
   METHOD rowMinimumHeight
   METHOD rowStretch
   METHOD setColumnMinimumWidth
   METHOD setColumnStretch
   METHOD setHorizontalSpacing
   METHOD setOriginCorner
   METHOD setRowMinimumHeight
   METHOD setRowStretch
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD spacing
   METHOD verticalSpacing
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGridLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGridLayout>
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
#include <QGridLayout>
#endif

/*
QGridLayout ( QWidget * parent )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_NEW1 )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QGridLayout * o = new QGridLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGridLayout ()
*/
HB_FUNC_STATIC( QGRIDLAYOUT_NEW2 )
{
  QGridLayout * o = new QGridLayout (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGridLayout ( QWidget * parent )
//[2]QGridLayout ()

HB_FUNC_STATIC( QGRIDLAYOUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QGRIDLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGRIDLAYOUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRIDLAYOUT_DELETE )
{
  QGridLayout * obj = (QGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( QLayoutItem * item, int row, int column, int rowSpan = 1, int columnSpan = 1, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ADDITEM )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) _qt5xhb_itemGetPtr(1);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    obj->addItem ( par1, (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 1 : hb_parni(4), (int) ISNIL(5)? 1 : hb_parni(5),  (Qt::Alignment) par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT1 )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->addLayout ( par1, (int) hb_parni(2), (int) hb_parni(3),  (Qt::Alignment) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT2 )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    obj->addLayout ( par1, (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5),  (Qt::Alignment) par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
//[2]void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT )
{
  if( ISBETWEEN(3,4) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRIDLAYOUT_ADDLAYOUT1 );
  }
  else if( ISBETWEEN(5,6) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRIDLAYOUT_ADDLAYOUT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET1 )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->addWidget ( par1, (int) hb_parni(2), (int) hb_parni(3),  (Qt::Alignment) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET2 )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    obj->addWidget ( par1, (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5),  (Qt::Alignment) par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
//[2]void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET )
{
  if( ISBETWEEN(3,4) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRIDLAYOUT_ADDWIDGET1 );
  }
  else if( ISBETWEEN(5,6) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRIDLAYOUT_ADDWIDGET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect cellRect ( int row, int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_CELLRECT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->cellRect ( (int) hb_parni(1), (int) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int columnCount () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COLUMNCOUNT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnCount (  ) );
  }
}


/*
int columnMinimumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COLUMNMINIMUMWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnMinimumWidth ( (int) hb_parni(1) ) );
  }
}


/*
int columnStretch ( int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COLUMNSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnStretch ( (int) hb_parni(1) ) );
  }
}


/*
void getItemPosition ( int index, int * row, int * column, int * rowSpan, int * columnSpan )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_GETITEMPOSITION )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    int par4;
    int par5;
    obj->getItemPosition ( (int) hb_parni(1), &par2, &par3, &par4, &par5 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_HORIZONTALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->horizontalSpacing (  ) );
  }
}


/*
QLayoutItem * itemAtPosition ( int row, int column ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ITEMATPOSITION )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->itemAtPosition ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}


/*
Qt::Corner originCorner () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ORIGINCORNER )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->originCorner (  ) );
  }
}


/*
int rowCount () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ROWCOUNT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}


/*
int rowMinimumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ROWMINIMUMHEIGHT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowMinimumHeight ( (int) hb_parni(1) ) );
  }
}


/*
int rowStretch ( int row ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ROWSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowStretch ( (int) hb_parni(1) ) );
  }
}


/*
void setColumnMinimumWidth ( int column, int minSize )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETCOLUMNMINIMUMWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnMinimumWidth ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnStretch ( int column, int stretch )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETCOLUMNSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnStretch ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETHORIZONTALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHorizontalSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOriginCorner ( Qt::Corner corner )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETORIGINCORNER )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOriginCorner (  (Qt::Corner) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowMinimumHeight ( int row, int minSize )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETROWMINIMUMHEIGHT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowMinimumHeight ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowStretch ( int row, int stretch )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETROWSTRETCH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowStretch ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETVERTICALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVerticalSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int spacing () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->spacing (  ) );
  }
}


/*
int verticalSpacing () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_VERTICALSPACING )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalSpacing (  ) );
  }
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_COUNT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_EXPANDINGDIRECTIONS )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expandingDirections (  ) );
  }
}


/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_HASHEIGHTFORWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}


/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_HEIGHTFORWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRIDLAYOUT_INVALIDATE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_ITEMAT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}


/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_MAXIMUMSIZE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual int minimumHeightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_MINIMUMHEIGHTFORWIDTH )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimumHeightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_MINIMUMSIZE )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SETGEOMETRY )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QGRIDLAYOUT_SIZEHINT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QGRIDLAYOUT_TAKEAT )
{
  QGridLayout * obj = (QGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->takeAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}



#pragma ENDDUMP
