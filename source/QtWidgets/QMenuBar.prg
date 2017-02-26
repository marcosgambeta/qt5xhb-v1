/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QMenuBar INHERIT QWidget

   DATA class_id INIT Class_Id_QMenuBar
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMenuBar>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMenuBar>
#endif
#endif

/*
explicit QMenuBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENUBAR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QMenuBar * o = new QMenuBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMenuBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMENUBAR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->activeAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION1 )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAction * ptr = obj->addAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION2 )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    char * par3 = (char *) _qtxhb_itemGetPtr(3);
    QAction * ptr = obj->addAction ( par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION3 )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
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
    HB_FUNC_EXEC( QMENUBAR_ADDACTION1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION2 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU1 )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * par1 = (QMenu *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->addMenu ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU2 )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QMenu * ptr = obj->addMenu ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU3 )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QMenu * ptr = obj->addMenu ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU3 );
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
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->addSeparator (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QMENUBAR_CLEAR )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTMENU )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QMenu * par2 = (QMenu *) _qtxhb_itemGetPtr(2);
    QAction * ptr = obj->insertMenu ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->insertSeparator ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool isDefaultUp () const
*/
HB_FUNC_STATIC( QMENUBAR_ISDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDefaultUp (  ) );
  }
}

/*
void setDefaultUp ( bool )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultUp ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isNativeMenuBar () const
*/
HB_FUNC_STATIC( QMENUBAR_ISNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNativeMenuBar (  ) );
  }
}

/*
void setNativeMenuBar ( bool nativeMenuBar )
*/
HB_FUNC_STATIC( QMENUBAR_SETNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNativeMenuBar ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->setActiveAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int heightForWidth ( int ) const
*/
HB_FUNC_STATIC( QMENUBAR_HEIGHTFORWIDTH )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_MINIMUMSIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_SIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMENUBAR_SETVISIBLE )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect actionGeometry(QAction *) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONGEOMETRY )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->actionGeometry ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QAction *actionAt(const QPoint &) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONAT )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->actionAt ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QWidget *cornerWidget(Qt::Corner corner = Qt::TopRightCorner) const
*/
HB_FUNC_STATIC( QMENUBAR_CORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TopRightCorner : hb_parni(1);
    QWidget * ptr = obj->cornerWidget (  (Qt::Corner) par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}

/*
void setCornerWidget(QWidget *w, Qt::Corner corner = Qt::TopRightCorner)
*/
HB_FUNC_STATIC( QMENUBAR_SETCORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::TopRightCorner : hb_parni(2);
    obj->setCornerWidget ( par1,  (Qt::Corner) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->setDefaultAction ( par1 );
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
  QMenuBar * obj = (QMenuBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->defaultAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}


/*
static void wceCommands(uint command)
*/
HB_FUNC_STATIC( QMENUBAR_WCECOMMANDS )
{
#ifdef Q_OS_WINCE
  QMenuBar::wceCommands ( (uint) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static void wceRefresh()
*/
HB_FUNC_STATIC( QMENUBAR_WCEREFRESH )
{
#ifdef Q_OS_WINCE
  QMenuBar::wceRefresh (  );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
