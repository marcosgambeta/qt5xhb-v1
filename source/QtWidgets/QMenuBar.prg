/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QMenuBar INHERIT QWidget

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QMenuBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMenuBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMenuBar>
#endif

/*
explicit QMenuBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENUBAR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMenuBar * o = new QMenuBar ( OPQWIDGET(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMENUBAR_DELETE )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->activeAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
void QMenuBar_addAction1 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
void QMenuBar_addAction2 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1), PQOBJECT(2), (const char *) hb_parc(3) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
void QMenuBar_addAction3 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    obj->addAction ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addAction1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QMenuBar_addAction2();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenuBar_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
void QMenuBar_addMenu1 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * par1 = (QMenu *) _qt5xhb_itemGetPtr(1);
    QAction * ptr = obj->addMenu ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
void QMenuBar_addMenu2 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->addMenu ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
void QMenuBar_addMenu3 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QMenu * ptr = obj->addMenu ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenuBar_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenuBar_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENUBAR_ADDSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addSeparator ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QMENUBAR_CLEAR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTMENU )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) && ISQMENU(2) )
    {
      QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
      QMenu * par2 = (QMenu *) _qt5xhb_itemGetPtr(2);
      QAction * ptr = obj->insertMenu ( par1, par2 );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
      QAction * ptr = obj->insertSeparator ( par1 );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDefaultUp () const
*/
HB_FUNC_STATIC( QMENUBAR_ISDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isDefaultUp () );
  }
}

/*
void setDefaultUp ( bool )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDefaultUp ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNativeMenuBar () const
*/
HB_FUNC_STATIC( QMENUBAR_ISNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNativeMenuBar () );
  }
}

/*
void setNativeMenuBar ( bool nativeMenuBar )
*/
HB_FUNC_STATIC( QMENUBAR_SETNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNativeMenuBar ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
      obj->setActiveAction ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int heightForWidth ( int ) const
*/
HB_FUNC_STATIC( QMENUBAR_HEIGHTFORWIDTH )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->heightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_MINIMUMSIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_SIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMENUBAR_SETVISIBLE )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect actionGeometry(QAction *) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONGEOMETRY )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
      QRect * ptr = new QRect( obj->actionGeometry ( par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction *actionAt(const QPoint &) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONAT )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      QAction * ptr = obj->actionAt ( *par1 );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget *cornerWidget(Qt::Corner corner = Qt::TopRightCorner) const
*/
HB_FUNC_STATIC( QMENUBAR_CORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) Qt::TopRightCorner : hb_parni(1);
      QWidget * ptr = obj->cornerWidget ( (Qt::Corner) par1 );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCornerWidget(QWidget *w, Qt::Corner corner = Qt::TopRightCorner)
*/
HB_FUNC_STATIC( QMENUBAR_SETCORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::TopRightCorner : hb_parni(2);
      obj->setCornerWidget ( PQWIDGET(1), (Qt::Corner) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
      obj->setDefaultAction ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENUBAR_DEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->defaultAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}

/*
static void wceCommands(uint command)
*/
HB_FUNC_STATIC( QMENUBAR_WCECOMMANDS )
{
#ifdef Q_OS_WINCE
  if( ISNUM(1) )
  {
    QMenuBar::wceCommands ( (uint) hb_parni(1) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void wceRefresh()
*/
HB_FUNC_STATIC( QMENUBAR_WCEREFRESH )
{
#ifdef Q_OS_WINCE
  QMenuBar::wceRefresh ();
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
NSMenu * QMenuBar::toNSMenu()
*/
HB_FUNC_STATIC( QMENUBAR_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (NSMenu *) obj->toNSMenu () );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

#pragma ENDDUMP
