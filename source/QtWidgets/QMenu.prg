/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QACTION
REQUEST QRECT
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   DATA class_id INIT Class_Id_QMenu
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD setActiveAction
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction4
   METHOD addAction5
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD setDefaultAction
   METHOD exec1
   METHOD exec2
   METHOD exec3
   METHOD exec
   METHOD hideTearOffMenu
   METHOD icon
   METHOD setIcon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD setTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setSeparatorsCollapsible
   METHOD title
   METHOD setTitle
   METHOD sizeHint
   METHOD wceMenu
   METHOD addSection1
   METHOD addSection2
   METHOD addSection
   METHOD insertSection1
   METHOD insertSection2
   METHOD insertSection
   METHOD setNoReplayFor
   METHOD setAsDockMenu
   METHOD toolTipsVisible
   METHOD setToolTipsVisible
   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMenu
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMenu>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMenu>
#endif
#endif

/*
explicit QMenu ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENU_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QMenu * o = new QMenu ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMenu *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
explicit QMenu ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENU_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QMenu * o = new QMenu ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMenu *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]explicit QMenu ( QWidget * parent = 0 )
//[2]explicit QMenu ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMENU_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMENU_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMENU_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * actionAt ( const QPoint & pt ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONAT )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->actionAt ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QRect actionGeometry ( QAction * act ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONGEOMETRY )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->actionGeometry ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENU_ACTIVEACTION )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->activeAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETACTIVEACTION )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->setActiveAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QMENU_ADDACTION1 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAction * ptr = obj->addAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QMENU_ADDACTION2 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QAction * ptr = obj->addAction ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
HB_FUNC_STATIC( QMENU_ADDACTION3 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const QObject * par2 = (const QObject *) _qtxhb_itemGetPtr(2);
    const char * par3 = hb_parc(3);
    QKeySequence par4 = ISNIL(4)? 0 : *(QKeySequence *) _qtxhb_itemGetPtr(4);
    QAction * ptr = obj->addAction ( par1, par2,  (const char *) par3, par4 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
HB_FUNC_STATIC( QMENU_ADDACTION4 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    const QObject * par3 = (const QObject *) _qtxhb_itemGetPtr(3);
    const char * par4 = hb_parc(4);
    QKeySequence par5 = ISNIL(5)? 0 : *(QKeySequence *) _qtxhb_itemGetPtr(5);
    QAction * ptr = obj->addAction ( par1, par2, par3,  (const char *) par4, par5 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QMENU_ADDACTION5 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->addAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION1 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION2 );
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQKEYSEQUENCE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION3 );
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && (ISQKEYSEQUENCE(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION4 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_ADDMENU1 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QMENU_ADDMENU2 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QMENU_ADDMENU3 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
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

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENU_ADDSEPARATOR )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->addSeparator (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QMENU_CLEAR )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENU_DEFAULTACTION )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->defaultAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETDEFAULTACTION )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->setDefaultAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * exec ()
*/
HB_FUNC_STATIC( QMENU_EXEC1 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->exec (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * exec ( const QPoint & pos, QAction * at = 0 )
*/
HB_FUNC_STATIC( QMENU_EXEC2 )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QAction * par2 = ISNIL(2)? 0 : (QAction *) _qtxhb_itemGetPtr(2);
    QAction * ptr = obj->exec ( *par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)
*/
HB_FUNC_STATIC( QMENU_EXEC3 )
{
  QList<QAction *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QPoint * par2 = (QPoint *) _qtxhb_itemGetPtr(2);
  QAction * par3 = ISNIL(3)? 0 : (QAction *) _qtxhb_itemGetPtr(3);
  QWidget * par4 = ISNIL(4)? 0 : (QWidget *) _qtxhb_itemGetPtr(4);
  QAction * ptr = QMenu::exec ( par1, *par2, par3, par4 );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}


//[1]QAction * exec ()
//[2]QAction * exec ( const QPoint & pos, QAction * at = 0 )
//[3]static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMENU_EXEC1 );
  }
  else if( ISBETWEEN(1,2) && ISQPOINT(1) && (ISQACTION(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMENU_EXEC2 );
  }
  else if( ISBETWEEN(2,4) && ISARRAY(1) && ISQPOINT(2) && (ISQACTION(3)||ISNIL(3)) && (ISQWIDGET(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMENU_EXEC3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void hideTearOffMenu ()
*/
HB_FUNC_STATIC( QMENU_HIDETEAROFFMENU )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideTearOffMenu (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QMENU_ICON )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QMENU_SETICON )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_INSERTMENU )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QMENU_INSERTSEPARATOR )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->insertSeparator ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QMENU_ISEMPTY )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isTearOffEnabled () const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFENABLED )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTearOffEnabled (  ) );
  }
}

/*
void setTearOffEnabled ( bool )
*/
HB_FUNC_STATIC( QMENU_SETTEAROFFENABLED )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTearOffEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isTearOffMenuVisible () const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFMENUVISIBLE )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTearOffMenuVisible (  ) );
  }
}



/*
QAction * menuAction () const
*/
HB_FUNC_STATIC( QMENU_MENUACTION )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->menuAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void popup ( const QPoint & pos, QAction * at = 0 )
*/
HB_FUNC_STATIC( QMENU_POPUP )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QAction * par2 = ISNIL(2)? 0 : (QAction *) _qtxhb_itemGetPtr(2);
    obj->popup ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool separatorsCollapsible () const
*/
HB_FUNC_STATIC( QMENU_SEPARATORSCOLLAPSIBLE )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->separatorsCollapsible (  ) );
  }
}

/*
void setSeparatorsCollapsible ( bool collapse )
*/
HB_FUNC_STATIC( QMENU_SETSEPARATORSCOLLAPSIBLE )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSeparatorsCollapsible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QMENU_TITLE )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}

/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QMENU_SETTITLE )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENU_SIZEHINT )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
HMENU wceMenu ()
*/
HB_FUNC_STATIC( QMENU_WCEMENU )
{
#ifdef Q_OS_WINCE
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (HMENU) obj->wceMenu (  ) );
  }
#endif
}




/*
QAction *addSection(const QString &text)
*/
HB_FUNC_STATIC( QMENU_ADDSECTION1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAction * ptr = obj->addSection ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}

/*
QAction *addSection(const QIcon &icon, const QString &text)
*/
HB_FUNC_STATIC( QMENU_ADDSECTION2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QAction * ptr = obj->addSection ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}


//[1]QAction *addSection(const QString &text)
//[2]QAction *addSection(const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_ADDSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDSECTION1 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDSECTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QAction *insertSection(QAction *before, const QString &text)
*/
HB_FUNC_STATIC( QMENU_INSERTSECTION1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QAction * ptr = obj->insertSection ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}

/*
QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)
*/
HB_FUNC_STATIC( QMENU_INSERTSECTION2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qtxhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QString par3 = QLatin1String( hb_parc(3) );
    QAction * ptr = obj->insertSection ( par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}


//[1]QAction *insertSection(QAction *before, const QString &text)
//[2]QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_INSERTSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(2) && ISQACTION(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_INSERTSECTION1 );
  }
  else if( ISNUMPAR(3) && ISQACTION(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QMENU_INSERTSECTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void setNoReplayFor(QWidget *widget)
*/
HB_FUNC_STATIC( QMENU_SETNOREPLAYFOR )
{
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->setNoReplayFor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void setAsDockMenu()
*/
HB_FUNC_STATIC( QMENU_SETASDOCKMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAsDockMenu (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}


/*
bool toolTipsVisible() const
*/
HB_FUNC_STATIC( QMENU_TOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->toolTipsVisible (  ) );
  }
#endif
}

/*
void setToolTipsVisible(bool visible)
*/
HB_FUNC_STATIC( QMENU_SETTOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setToolTipsVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
