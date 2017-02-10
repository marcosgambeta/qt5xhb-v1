/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF

CLASS QGraphicsGridLayout INHERIT QGraphicsLayout

   DATA class_id INIT Class_Id_QGraphicsGridLayout
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD alignment
   METHOD columnAlignment
   METHOD columnCount
   METHOD columnMaximumWidth
   METHOD columnMinimumWidth
   METHOD columnPreferredWidth
   METHOD columnSpacing
   METHOD columnStretchFactor
   METHOD horizontalSpacing
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD removeItem
   METHOD rowAlignment
   METHOD rowCount
   METHOD rowMaximumHeight
   METHOD rowMinimumHeight
   METHOD rowPreferredHeight
   METHOD rowSpacing
   METHOD rowStretchFactor
   METHOD setAlignment
   METHOD setColumnAlignment
   METHOD setColumnFixedWidth
   METHOD setColumnMaximumWidth
   METHOD setColumnMinimumWidth
   METHOD setColumnPreferredWidth
   METHOD setColumnSpacing
   METHOD setColumnStretchFactor
   METHOD setHorizontalSpacing
   METHOD setRowAlignment
   METHOD setRowFixedHeight
   METHOD setRowMaximumHeight
   METHOD setRowMinimumHeight
   METHOD setRowPreferredHeight
   METHOD setRowSpacing
   METHOD setRowStretchFactor
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsGridLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsGridLayout>
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
#include <QGraphicsGridLayout>
#endif
#endif

/*
QGraphicsGridLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qtxhb_itemGetPtr(1);
  QGraphicsGridLayout * o = new QGraphicsGridLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsGridLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM1 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qtxhb_itemGetPtr(1);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    obj->addItem ( par1, (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5),  (Qt::Alignment) par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM2 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qtxhb_itemGetPtr(1);
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->addItem ( par1, (int) hb_parni(2), (int) hb_parni(3),  (Qt::Alignment) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
//[2]void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM )
{
  if( ISBETWEEN(5,6) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ADDITEM1 );
  }
  else if( ISBETWEEN(3,4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ADDITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qtxhb_itemGetPtr(1);
    int i = obj->alignment ( par1 );
    hb_retni( i );
  }
}


/*
Qt::Alignment columnAlignment ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->columnAlignment ( (int) hb_parni(1) );
    hb_retni( i );
  }
}


/*
int columnCount () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnCount (  ) );
  }
}


/*
qreal columnMaximumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->columnMaximumWidth ( (int) hb_parni(1) ) );
  }
}


/*
qreal columnMinimumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->columnMinimumWidth ( (int) hb_parni(1) ) );
  }
}


/*
qreal columnPreferredWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->columnPreferredWidth ( (int) hb_parni(1) ) );
  }
}


/*
qreal columnSpacing ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->columnSpacing ( (int) hb_parni(1) ) );
  }
}


/*
int columnStretchFactor ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnStretchFactor ( (int) hb_parni(1) ) );
  }
}


/*
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_HORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->horizontalSpacing (  ) );
  }
}


/*
QGraphicsLayoutItem * itemAt ( int row, int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT1 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT2 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


//[1]QGraphicsLayoutItem * itemAt ( int row, int column ) const
//[2]virtual QGraphicsLayoutItem * itemAt ( int index ) const

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ITEMAT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEITEM )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qtxhb_itemGetPtr(1);
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment rowAlignment ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->rowAlignment ( (int) hb_parni(1) );
    hb_retni( i );
  }
}


/*
int rowCount () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}


/*
qreal rowMaximumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rowMaximumHeight ( (int) hb_parni(1) ) );
  }
}


/*
qreal rowMinimumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rowMinimumHeight ( (int) hb_parni(1) ) );
  }
}


/*
qreal rowPreferredHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rowPreferredHeight ( (int) hb_parni(1) ) );
  }
}


/*
qreal rowSpacing ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rowSpacing ( (int) hb_parni(1) ) );
  }
}


/*
int rowStretchFactor ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowStretchFactor ( (int) hb_parni(1) ) );
  }
}


/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setAlignment ( par1,  (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnAlignment ( int column, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setColumnAlignment ( (int) hb_parni(1),  (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnFixedWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNFIXEDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setColumnFixedWidth ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnMaximumWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setColumnMaximumWidth ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnMinimumWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setColumnMinimumWidth ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnPreferredWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setColumnPreferredWidth ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnSpacing ( int column, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setColumnSpacing ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnStretchFactor ( int column, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnStretchFactor ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setHorizontalSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowAlignment ( int row, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setRowAlignment ( (int) hb_parni(1),  (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowFixedHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWFIXEDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setRowFixedHeight ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowMaximumHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setRowMaximumHeight ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowMinimumHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setRowMinimumHeight ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowPreferredHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setRowPreferredHeight ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowSpacing ( int row, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    obj->setRowSpacing ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowStretchFactor ( int row, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowStretchFactor ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETVERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_VERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->verticalSpacing (  ) );
  }
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_INVALIDATE )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEAT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAt ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETGEOMETRY )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSizeF  sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SIZEHINT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) _qtxhb_itemGetPtr(2);
    QSizeF * ptr = new QSizeF( obj->sizeHint (  (Qt::SizeHint) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



#pragma ENDDUMP
