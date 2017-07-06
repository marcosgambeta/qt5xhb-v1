$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSPLITTERHANDLE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QSplitter INHERIT QFrame

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

$destructor

#pragma BEGINDUMP

$includes

/*
QSplitter ( QWidget * parent = 0 )
*/
void QSplitter_new1 ()
{
  QSplitter * o = new QSplitter ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
void QSplitter_new2 ()
{
  QSplitter * o = new QSplitter ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
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

$deleteMethod

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
      obj->addWidget ( PQWIDGET(1) );
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
    RBOOL( obj->childrenCollapsible () );
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
    RINT( obj->count () );
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
      obj->getRange ( PINT(1), &par2, &par3 );
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
      QSplitterHandle * ptr = obj->handle ( PINT(1) );
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
    RINT( obj->handleWidth () );
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
      RINT( obj->indexOf ( PQWIDGET(1) ) );
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
      obj->insertWidget ( PINT(1), PQWIDGET(2) );
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
      RBOOL( obj->isCollapsible ( PINT(1) ) );
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
    RBOOL( obj->opaqueResize () );
  }
}

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void refresh ()
*/
$method=|void|refresh|

/*
bool restoreState ( const QByteArray & state )
*/
$method=|bool|restoreState|const QByteArray &

/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QSPLITTER_SAVESTATE )
{
  QSplitter * obj = (QSplitter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setChildrenCollapsible ( bool )
*/
$method=|void|setChildrenCollapsible|bool

/*
void setCollapsible ( int index, bool collapse )
*/
$method=|void|setCollapsible|int,bool

/*
void setHandleWidth ( int )
*/
$method=|void|setHandleWidth|int

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
      obj->setOpaqueResize ( OPBOOL(1,true) );
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
$method=|void|setOrientation|Qt::Orientation

/*
void setStretchFactor ( int index, int stretch )
*/
$method=|void|setStretchFactor|int,int

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
      QWidget * ptr = obj->widget ( PINT(1) );
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
    QSize * ptr = new QSize( obj->minimumSizeHint () );
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
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
