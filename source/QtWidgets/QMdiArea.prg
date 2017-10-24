/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMDISUBWINDOW
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QMdiArea INHERIT QAbstractScrollArea

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

PROCEDURE destroyObject () CLASS QMdiArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMdiArea>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMdiArea>
#endif

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

HB_FUNC_STATIC( QMDIAREA_DELETE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QMDIAREA_DOCUMENTMODE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->documentMode () );
  }
}

/*
void removeSubWindow ( QWidget * widget )
*/
HB_FUNC_STATIC( QMDIAREA_REMOVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      obj->removeSubWindow ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMDIAREA_SETBACKGROUND )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBRUSH(1) )
    {
      obj->setBackground ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocumentMode ( bool enabled )
*/
HB_FUNC_STATIC( QMDIAREA_SETDOCUMENTMODE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDocumentMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMDIAREA_ACTIVATENEXTSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->activateNextSubWindow ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void activatePreviousSubWindow ()
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVATEPREVIOUSSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->activatePreviousSubWindow ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cascadeSubWindows ()
*/
HB_FUNC_STATIC( QMDIAREA_CASCADESUBWINDOWS )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cascadeSubWindows ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void closeActiveSubWindow ()
*/
HB_FUNC_STATIC( QMDIAREA_CLOSEACTIVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->closeActiveSubWindow ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void closeAllSubWindows ()
*/
HB_FUNC_STATIC( QMDIAREA_CLOSEALLSUBWINDOWS )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->closeAllSubWindows ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMDIAREA_TILESUBWINDOWS )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->tileSubWindows ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tabsClosable () const
*/
HB_FUNC_STATIC( QMDIAREA_TABSCLOSABLE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->tabsClosable () );
  }
}

/*
void setTabsClosable ( bool closable )
*/
HB_FUNC_STATIC( QMDIAREA_SETTABSCLOSABLE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTabsClosable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tabsMovable () const
*/
HB_FUNC_STATIC( QMDIAREA_TABSMOVABLE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->tabsMovable () );
  }
}

/*
void setTabsMovable ( bool movable )
*/
HB_FUNC_STATIC( QMDIAREA_SETTABSMOVABLE )
{
  QMdiArea * obj = (QMdiArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTabsMovable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
