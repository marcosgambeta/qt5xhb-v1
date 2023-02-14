/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QMenuBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isDefaultUp
   METHOD setDefaultUp
   METHOD isNativeMenuBar
   METHOD setNativeMenuBar
   METHOD setActiveAction
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setVisible
   METHOD actionGeometry
   METHOD actionAt
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD setDefaultAction
   METHOD defaultAction
   METHOD wceCommands
   METHOD wceRefresh
   METHOD toNSMenu

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMenuBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMenuBar>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QMenuBar>
#endif

/*
QMenuBar( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENUBAR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QMenuBar * obj = new QMenuBar( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMENUBAR_DELETE )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAction * activeAction() const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->activeAction();
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addAction( const QString & text )
    */
    QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQSTRING(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(3) && HB_ISCHAR(1) && ISQOBJECT(2) && HB_ISCHAR(3) )
  {
    /*
    QAction * addAction( const QString & text, const QObject * receiver, const char * member )
    */
    QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    /*
    void addAction( QAction * action )
    */
    QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addAction( PQACTION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    /*
    QAction * addMenu( QMenu * menu )
    */
    QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QAction * ptr = obj->addMenu( PQMENU(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QMenu * addMenu( const QString & title )
    */
    QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QMenu * ptr = obj->addMenu( PQSTRING(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU");
    }
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||HB_ISCHAR(1)) && HB_ISCHAR(2) )
  {
    /*
    QMenu * addMenu( const QIcon & icon, const QString & title )
    */
    QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QMenu * ptr = obj->addMenu( HB_ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAction * addSeparator()
*/
HB_FUNC_STATIC( QMENUBAR_ADDSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->addSeparator();
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QMENUBAR_CLEAR )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAction * insertMenu( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTMENU )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQMENU(2) )
    {
#endif
      QAction * ptr = obj->insertMenu( PQACTION(1), PQMENU(2) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAction * insertSeparator( QAction * before )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QAction * ptr = obj->insertSeparator( PQACTION(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isDefaultUp() const
*/
HB_FUNC_STATIC( QMENUBAR_ISDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDefaultUp() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setDefaultUp( bool )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDefaultUp( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isNativeMenuBar() const
*/
HB_FUNC_STATIC( QMENUBAR_ISNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNativeMenuBar() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setNativeMenuBar( bool nativeMenuBar )
*/
HB_FUNC_STATIC( QMENUBAR_SETNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setNativeMenuBar( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setActiveAction( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setActiveAction( PQACTION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int heightForWidth( int ) const
*/
HB_FUNC_STATIC( QMENUBAR_HEIGHTFORWIDTH )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->heightForWidth( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QMENUBAR_MINIMUMSIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QMENUBAR_SIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setVisible( bool visible )
*/
HB_FUNC_STATIC( QMENUBAR_SETVISIBLE )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect actionGeometry( QAction * ) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONGEOMETRY )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QRect * ptr = new QRect( obj->actionGeometry( PQACTION(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAction * actionAt( const QPoint & ) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONAT )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QAction * ptr = obj->actionAt( *PQPOINT(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QWidget * cornerWidget( Qt::Corner corner = Qt::TopRightCorner ) const
*/
HB_FUNC_STATIC( QMENUBAR_CORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      QWidget * ptr = obj->cornerWidget( HB_ISNIL(1)? (Qt::Corner) Qt::TopRightCorner : (Qt::Corner) hb_parni(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCornerWidget( QWidget * w, Qt::Corner corner = Qt::TopRightCorner )
*/
HB_FUNC_STATIC( QMENUBAR_SETCORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->setCornerWidget( PQWIDGET(1), HB_ISNIL(2)? (Qt::Corner) Qt::TopRightCorner : (Qt::Corner) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setDefaultAction( PQACTION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENUBAR_DEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->defaultAction();
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
static void wceCommands(uint command)
*/
HB_FUNC_STATIC( QMENUBAR_WCECOMMANDS )
{
#ifdef Q_OS_WINCE
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QMenuBar::wceCommands( PUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void wceRefresh()
*/
HB_FUNC_STATIC( QMENUBAR_WCEREFRESH )
{
#ifdef Q_OS_WINCE
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QMenuBar::wceRefresh();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
NSMenu * QMenuBar::toNSMenu()
*/
HB_FUNC_STATIC( QMENUBAR_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenuBar * obj = (QMenuBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( (NSMenu *) obj->toNSMenu() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
#endif
}

void QMenuBarSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMENUBAR_ONHOVERED )
{
  QMenuBarSlots_connect_signal("hovered(QAction*)", "hovered(QAction*)");
}

HB_FUNC_STATIC( QMENUBAR_ONTRIGGERED )
{
  QMenuBarSlots_connect_signal("triggered(QAction*)", "triggered(QAction*)");
}

#pragma ENDDUMP
