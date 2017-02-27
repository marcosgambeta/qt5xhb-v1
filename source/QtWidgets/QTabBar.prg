/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QICON
REQUEST QRECT
REQUEST QCOLOR
#endif

CLASS QTabBar INHERIT QWidget

   DATA class_id INIT Class_Id_QTabBar
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addTab1
   METHOD addTab2
   METHOD addTab
   METHOD count
   METHOD currentIndex
   METHOD documentMode
   METHOD drawBase
   METHOD elideMode
   METHOD expanding
   METHOD iconSize
   METHOD insertTab1
   METHOD insertTab2
   METHOD insertTab
   METHOD isMovable
   METHOD isTabEnabled
   METHOD moveTab
   METHOD removeTab
   METHOD selectionBehaviorOnRemove
   METHOD setDocumentMode
   METHOD setDrawBase
   METHOD setElideMode
   METHOD setExpanding
   METHOD setIconSize
   METHOD setMovable
   METHOD setSelectionBehaviorOnRemove
   METHOD setShape
   METHOD setTabButton
   METHOD setTabData
   METHOD setTabEnabled
   METHOD setTabIcon
   METHOD setTabText
   METHOD setTabTextColor
   METHOD setTabToolTip
   METHOD setTabWhatsThis
   METHOD setTabsClosable
   METHOD setUsesScrollButtons
   METHOD shape
   METHOD tabAt
   METHOD tabButton
   METHOD tabData
   METHOD tabIcon
   METHOD tabRect
   METHOD tabText
   METHOD tabTextColor
   METHOD tabToolTip
   METHOD tabWhatsThis
   METHOD tabsClosable
   METHOD usesScrollButtons
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentIndex
   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabMoved
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTabBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTabBar>
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
#include <QTabBar>
#endif
#endif

#include <QVariant>
#include <QIcon>

/*
QTabBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABBAR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QTabBar * o = new QTabBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTabBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTABBAR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int addTab ( const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_ADDTAB1 )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->addTab ( par1 ) );
  }
}

/*
int addTab ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_ADDTAB2 )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retni( obj->addTab ( par1, par2 ) );
  }
}


//[1]int addTab ( const QString & text )
//[2]int addTab ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QTABBAR_ADDTAB )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTABBAR_ADDTAB1 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTABBAR_ADDTAB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QTABBAR_COUNT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QTABBAR_CURRENTINDEX )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}


/*
bool documentMode () const
*/
HB_FUNC_STATIC( QTABBAR_DOCUMENTMODE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->documentMode (  ) );
  }
}


/*
bool drawBase () const
*/
HB_FUNC_STATIC( QTABBAR_DRAWBASE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->drawBase (  ) );
  }
}


/*
Qt::TextElideMode elideMode () const
*/
HB_FUNC_STATIC( QTABBAR_ELIDEMODE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elideMode (  ) );
  }
}


/*
bool expanding () const
*/
HB_FUNC_STATIC( QTABBAR_EXPANDING )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->expanding (  ) );
  }
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTABBAR_ICONSIZE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int insertTab ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_INSERTTAB1 )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retni( obj->insertTab ( (int) hb_parni(1), par2 ) );
  }
}

/*
int insertTab ( int index, const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_INSERTTAB2 )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qtxhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retni( obj->insertTab ( (int) hb_parni(1), par2, par3 ) );
  }
}


//[1]int insertTab ( int index, const QString & text )
//[2]int insertTab ( int index, const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QTABBAR_INSERTTAB )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTABBAR_INSERTTAB1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABBAR_INSERTTAB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isMovable () const
*/
HB_FUNC_STATIC( QTABBAR_ISMOVABLE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMovable (  ) );
  }
}


/*
bool isTabEnabled ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_ISTABENABLED )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTabEnabled ( (int) hb_parni(1) ) );
  }
}


/*
void moveTab ( int from, int to )
*/
HB_FUNC_STATIC( QTABBAR_MOVETAB )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->moveTab ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeTab ( int index )
*/
HB_FUNC_STATIC( QTABBAR_REMOVETAB )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeTab ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SelectionBehavior selectionBehaviorOnRemove () const
*/
HB_FUNC_STATIC( QTABBAR_SELECTIONBEHAVIORONREMOVE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectionBehaviorOnRemove (  ) );
  }
}


/*
void setDocumentMode ( bool set )
*/
HB_FUNC_STATIC( QTABBAR_SETDOCUMENTMODE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDocumentMode ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDrawBase ( bool drawTheBase )
*/
HB_FUNC_STATIC( QTABBAR_SETDRAWBASE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDrawBase ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setElideMode ( Qt::TextElideMode )
*/
HB_FUNC_STATIC( QTABBAR_SETELIDEMODE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setElideMode (  (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpanding ( bool enabled )
*/
HB_FUNC_STATIC( QTABBAR_SETEXPANDING )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExpanding ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QTABBAR_SETICONSIZE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTABBAR_SETMOVABLE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMovable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectionBehaviorOnRemove ( SelectionBehavior behavior )
*/
HB_FUNC_STATIC( QTABBAR_SETSELECTIONBEHAVIORONREMOVE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionBehaviorOnRemove (  (QTabBar::SelectionBehavior) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShape ( Shape shape )
*/
HB_FUNC_STATIC( QTABBAR_SETSHAPE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShape (  (QTabBar::Shape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabButton ( int index, ButtonPosition position, QWidget * widget )
*/
HB_FUNC_STATIC( QTABBAR_SETTABBUTTON )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QWidget * par3 = (QWidget *) _qtxhb_itemGetPtr(3);
    obj->setTabButton ( (int) hb_parni(1),  (QTabBar::ButtonPosition) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabData ( int index, const QVariant & data )
*/
HB_FUNC_STATIC( QTABBAR_SETTABDATA )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setTabData ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabEnabled ( int index, bool enabled )
*/
HB_FUNC_STATIC( QTABBAR_SETTABENABLED )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabEnabled ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTABBAR_SETTABICON )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qtxhb_itemGetPtr(2) : QIcon(hb_parc(2));
    obj->setTabIcon ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabText ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_SETTABTEXT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setTabText ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabTextColor ( int index, const QColor & color )
*/
HB_FUNC_STATIC( QTABBAR_SETTABTEXTCOLOR )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qtxhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->setTabTextColor ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabToolTip ( int index, const QString & tip )
*/
HB_FUNC_STATIC( QTABBAR_SETTABTOOLTIP )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setTabToolTip ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabWhatsThis ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_SETTABWHATSTHIS )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setTabWhatsThis ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabsClosable ( bool closable )
*/
HB_FUNC_STATIC( QTABBAR_SETTABSCLOSABLE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabsClosable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUsesScrollButtons ( bool useButtons )
*/
HB_FUNC_STATIC( QTABBAR_SETUSESSCROLLBUTTONS )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUsesScrollButtons ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Shape shape () const
*/
HB_FUNC_STATIC( QTABBAR_SHAPE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shape (  ) );
  }
}


/*
int tabAt ( const QPoint & position ) const
*/
HB_FUNC_STATIC( QTABBAR_TABAT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->tabAt ( *par1 ) );
  }
}


/*
QWidget * tabButton ( int index, ButtonPosition position ) const
*/
HB_FUNC_STATIC( QTABBAR_TABBUTTON )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QWidget * ptr = obj->tabButton ( (int) hb_parni(1),  (QTabBar::ButtonPosition) par2 );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
QVariant tabData ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABDATA )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->tabData ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QIcon tabIcon ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABICON )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->tabIcon ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QRect tabRect ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABRECT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->tabRect ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QString tabText ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTEXT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->tabText ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QColor tabTextColor ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTEXTCOLOR )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->tabTextColor ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QString tabToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTOOLTIP )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->tabToolTip ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString tabWhatsThis ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABWHATSTHIS )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->tabWhatsThis ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
bool tabsClosable () const
*/
HB_FUNC_STATIC( QTABBAR_TABSCLOSABLE )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->tabsClosable (  ) );
  }
}


/*
bool usesScrollButtons () const
*/
HB_FUNC_STATIC( QTABBAR_USESSCROLLBUTTONS )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->usesScrollButtons (  ) );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTABBAR_MINIMUMSIZEHINT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QTABBAR_SIZEHINT )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QTABBAR_SETCURRENTINDEX )
{
  QTabBar * obj = (QTabBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
