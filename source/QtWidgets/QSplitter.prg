/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSPLITTERHANDLE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QSplitter INHERIT QFrame

   DATA class_id INIT Class_Id_QSplitter
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD childrenCollapsible
   METHOD count
   METHOD getRange
   METHOD handle
   METHOD handleWidth
   METHOD indexOf
   METHOD insertWidget
   METHOD isCollapsible
   METHOD opaqueResize
   METHOD orientation
   METHOD refresh
   METHOD restoreState
   METHOD saveState
   METHOD setChildrenCollapsible
   METHOD setCollapsible
   METHOD setHandleWidth
   METHOD setOpaqueResize
   METHOD setOrientation
   METHOD setStretchFactor
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onSplitterMoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSplitter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSplitter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSplitter>
#endif

/*
QSplitter ( QWidget * parent = 0 )
*/
void QSplitter_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QSplitter * o = new QSplitter ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
void QSplitter_new2 ()
{
  int par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QSplitter * o = new QSplitter (  (Qt::Orientation) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QSplitter ( QWidget * parent = 0 )
//[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSplitter_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QSplitter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSPLITTER_DELETE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSPLITTER_ADDWIDGET )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
      obj->addWidget ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool childrenCollapsible () const
*/
HB_FUNC_STATIC( QSPLITTER_CHILDRENCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->childrenCollapsible (  ) );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QSPLITTER_COUNT )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}

/*
void getRange ( int index, int * min, int * max ) const
*/
HB_FUNC_STATIC( QSPLITTER_GETRANGE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
      int par2;
      int par3;
      obj->getRange ( (int) hb_parni(1), &par2, &par3 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSplitterHandle * handle ( int index ) const
*/
HB_FUNC_STATIC( QSPLITTER_HANDLE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QSplitterHandle * ptr = obj->handle ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QSPLITTERHANDLE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int handleWidth () const
*/
HB_FUNC_STATIC( QSPLITTER_HANDLEWIDTH )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->handleWidth (  ) );
  }
}

/*
int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QSPLITTER_INDEXOF )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->indexOf ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSPLITTER_INSERTWIDGET )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQWIDGET(2) )
    {
      QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
      obj->insertWidget ( (int) hb_parni(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCollapsible ( int index ) const
*/
HB_FUNC_STATIC( QSPLITTER_ISCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->isCollapsible ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool opaqueResize () const
*/
HB_FUNC_STATIC( QSPLITTER_OPAQUERESIZE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->opaqueResize (  ) );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QSPLITTER_ORIENTATION )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}

/*
void refresh ()
*/
HB_FUNC_STATIC( QSPLITTER_REFRESH )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->refresh (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool restoreState ( const QByteArray & state )
*/
HB_FUNC_STATIC( QSPLITTER_RESTORESTATE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->restoreState ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QSPLITTER_SAVESTATE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setChildrenCollapsible ( bool )
*/
HB_FUNC_STATIC( QSPLITTER_SETCHILDRENCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setChildrenCollapsible ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCollapsible ( int index, bool collapse )
*/
HB_FUNC_STATIC( QSPLITTER_SETCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setCollapsible ( (int) hb_parni(1), (bool) hb_parl(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHandleWidth ( int )
*/
HB_FUNC_STATIC( QSPLITTER_SETHANDLEWIDTH )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHandleWidth ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpaqueResize ( bool opaque = true )
*/
HB_FUNC_STATIC( QSPLITTER_SETOPAQUERESIZE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      obj->setOpaqueResize ( (bool) ISNIL(1)? true : hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QSPLITTER_SETORIENTATION )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setOrientation (  (Qt::Orientation) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStretchFactor ( int index, int stretch )
*/
HB_FUNC_STATIC( QSPLITTER_SETSTRETCHFACTOR )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setStretchFactor ( (int) hb_parni(1), (int) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSPLITTER_WIDGET )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->widget ( (int) hb_parni(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QSPLITTER_MINIMUMSIZEHINT )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSPLITTER_SIZEHINT )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
