$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMDISUBWINDOW
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QMdiArea INHERIT QAbstractScrollArea

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activationOrder
   METHOD activeSubWindow
   METHOD addSubWindow
   METHOD background
   METHOD currentSubWindow
   METHOD documentMode
   METHOD removeSubWindow
   METHOD setActivationOrder
   METHOD setBackground
   METHOD setDocumentMode
   METHOD setOption
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setViewMode
   METHOD subWindowList
   METHOD tabPosition
   METHOD tabShape
   METHOD testOption
   METHOD viewMode
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD activateNextSubWindow
   METHOD activatePreviousSubWindow
   METHOD cascadeSubWindows
   METHOD closeActiveSubWindow
   METHOD closeAllSubWindows
   METHOD setActiveSubWindow
   METHOD tileSubWindows
   METHOD tabsClosable
   METHOD setTabsClosable
   METHOD tabsMovable
   METHOD setTabsMovable

   METHOD onSubWindowActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMdiArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMDIAREA_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMdiArea * o = new QMdiArea ( OPQWIDGET(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
WindowOrder activationOrder () const
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVATIONORDER )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->activationOrder () );
  }
}

/*
QMdiSubWindow * activeSubWindow () const
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMdiSubWindow * ptr = obj->activeSubWindow ();
    _qt5xhb_createReturnClass ( ptr, "QMDISUBWINDOW" );
  }
}

/*
QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
*/
HB_FUNC_STATIC( QMDIAREA_ADDSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
      QMdiSubWindow * ptr = obj->addSubWindow ( PQWIDGET(1), (Qt::WindowFlags) par2 );
      _qt5xhb_createReturnClass ( ptr, "QMDISUBWINDOW" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBrush background () const
*/
HB_FUNC_STATIC( QMDIAREA_BACKGROUND )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
QMdiSubWindow * currentSubWindow () const
*/
HB_FUNC_STATIC( QMDIAREA_CURRENTSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMdiSubWindow * ptr = obj->currentSubWindow ();
    _qt5xhb_createReturnClass ( ptr, "QMDISUBWINDOW" );
  }
}

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
void removeSubWindow ( QWidget * widget )
*/
$method=|void|removeSubWindow|QWidget *

/*
void setActivationOrder ( WindowOrder order )
*/
HB_FUNC_STATIC( QMDIAREA_SETACTIVATIONORDER )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setActivationOrder ( (QMdiArea::WindowOrder) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackground ( const QBrush & background )
*/
$method=|void|setBackground|const QBrush &

/*
void setDocumentMode ( bool enabled )
*/
$method=|void|setDocumentMode|bool

/*
void setOption ( AreaOption option, bool on = true )
*/
HB_FUNC_STATIC( QMDIAREA_SETOPTION )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setOption ( (QMdiArea::AreaOption) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabPosition ( QTabWidget::TabPosition position )
*/
HB_FUNC_STATIC( QMDIAREA_SETTABPOSITION )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTabPosition ( (QTabWidget::TabPosition) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabShape ( QTabWidget::TabShape shape )
*/
HB_FUNC_STATIC( QMDIAREA_SETTABSHAPE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTabShape ( (QTabWidget::TabShape) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewMode ( ViewMode mode )
*/
HB_FUNC_STATIC( QMDIAREA_SETVIEWMODE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setViewMode ( (QMdiArea::ViewMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
*/
HB_FUNC_STATIC( QMDIAREA_SUBWINDOWLIST )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QMdiArea::CreationOrder : hb_parni(1);
      QList<QMdiSubWindow *> list = obj->subWindowList ( (QMdiArea::WindowOrder) par1 );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QMDISUBWINDOW" );
      #else
      pDynSym = hb_dynsymFindName( "QMDISUBWINDOW" );
      #endif
      PHB_ITEM pArray;
      pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          #ifdef __XHARBOUR__
          hb_vmPushSymbol( pDynSym->pSymbol );
          #else
          hb_vmPushDynSym( pDynSym );
          #endif
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QMdiSubWindow *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
          hb_itemRelease( pItem );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTabWidget::TabPosition tabPosition () const
*/
HB_FUNC_STATIC( QMDIAREA_TABPOSITION )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->tabPosition () );
  }
}

/*
QTabWidget::TabShape tabShape () const
*/
HB_FUNC_STATIC( QMDIAREA_TABSHAPE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->tabShape () );
  }
}

/*
bool testOption ( AreaOption option ) const
*/
HB_FUNC_STATIC( QMDIAREA_TESTOPTION )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->testOption ( (QMdiArea::AreaOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QMDIAREA_VIEWMODE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->viewMode () );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMDIAREA_MINIMUMSIZEHINT )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMDIAREA_SIZEHINT )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void activateNextSubWindow ()
*/
$method=|void|activateNextSubWindow|

/*
void activatePreviousSubWindow ()
*/
$method=|void|activatePreviousSubWindow|

/*
void cascadeSubWindows ()
*/
$method=|void|cascadeSubWindows|

/*
void closeActiveSubWindow ()
*/
$method=|void|closeActiveSubWindow|

/*
void closeAllSubWindows ()
*/
$method=|void|closeAllSubWindows|

/*
void setActiveSubWindow ( QMdiSubWindow * window )
*/
HB_FUNC_STATIC( QMDIAREA_SETACTIVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMDISUBWINDOW(1)||ISNIL(1)) )
    {
      QMdiSubWindow * par1 = ISNIL(1)? 0 : (QMdiSubWindow *) _qt5xhb_itemGetPtr(1);
      obj->setActiveSubWindow ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void tileSubWindows ()
*/
$method=|void|tileSubWindows|

/*
bool tabsClosable () const
*/
$method=|bool|tabsClosable|

/*
void setTabsClosable ( bool closable )
*/
$method=|void|setTabsClosable|bool

/*
bool tabsMovable () const
*/
$method=|bool|tabsMovable|

/*
void setTabsMovable ( bool movable )
*/
$method=|void|setTabsMovable|bool

#pragma ENDDUMP
