/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
REQUEST QICON
REQUEST QTABBAR
#endif

CLASS QTabWidget INHERIT QWidget

   //DATA class_id INIT Class_Id_QTabWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addTab1
   METHOD addTab2
   METHOD addTab
   METHOD clear
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD count
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD currentWidget
   METHOD setCurrentWidget
   METHOD documentMode
   METHOD setDocumentMode
   METHOD elideMode
   METHOD setElideMode
   METHOD iconSize
   METHOD setIconSize
   METHOD indexOf
   METHOD insertTab1
   METHOD insertTab2
   METHOD insertTab
   METHOD isMovable
   METHOD setMovable
   METHOD isTabEnabled
   METHOD setTabEnabled
   METHOD removeTab
   METHOD tabIcon
   METHOD setTabIcon
   METHOD tabPosition
   METHOD setTabPosition
   METHOD tabShape
   METHOD setTabShape
   METHOD tabText
   METHOD setTabText
   METHOD tabToolTip
   METHOD setTabToolTip
   METHOD tabWhatsThis
   METHOD setTabWhatsThis
   METHOD usesScrollButtons
   METHOD setUsesScrollButtons
   METHOD tabsClosable
   METHOD setTabsClosable
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD heightForWidth
   METHOD hasHeightForWidth
   METHOD tabBarAutoHide
   METHOD setTabBarAutoHide
   METHOD tabBar

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabBarClicked
   METHOD onTabBarDoubleClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTabWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTabWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTabWidget>
#endif

/*
explicit QTabWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABWIDGET_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QTabWidget * o = new QTabWidget ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTABWIDGET_DELETE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int addTab ( QWidget * page, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_ADDTAB1 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retni( obj->addTab ( par1, par2 ) );
  }
}

/*
int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_ADDTAB2 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retni( obj->addTab ( par1, par2, par3 ) );
  }
}


//[1]int addTab ( QWidget * page, const QString & label )
//[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTABWIDGET_ADDTAB1 );
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABWIDGET_ADDTAB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTABWIDGET_CLEAR )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
*/
HB_FUNC_STATIC( QTABWIDGET_CORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TopRightCorner : hb_parni(1);
    QWidget * ptr = obj->cornerWidget (  (Qt::Corner) par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::TopRightCorner : hb_parni(2);
    obj->setCornerWidget ( par1,  (Qt::Corner) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QTABWIDGET_COUNT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QTABWIDGET_CURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QTABWIDGET_CURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool documentMode () const
*/
HB_FUNC_STATIC( QTABWIDGET_DOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->documentMode (  ) );
  }
}

/*
void setDocumentMode ( bool set )
*/
HB_FUNC_STATIC( QTABWIDGET_SETDOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDocumentMode ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::TextElideMode elideMode () const
*/
HB_FUNC_STATIC( QTABWIDGET_ELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elideMode (  ) );
  }
}

/*
void setElideMode ( Qt::TextElideMode )
*/
HB_FUNC_STATIC( QTABWIDGET_SETELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setElideMode (  (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTABWIDGET_ICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QTABWIDGET_SETICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexOf ( QWidget * w ) const
*/
HB_FUNC_STATIC( QTABWIDGET_INDEXOF )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
int insertTab ( int index, QWidget * page, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_INSERTTAB1 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retni( obj->insertTab ( (int) hb_parni(1), par2, par3 ) );
  }
}

/*
int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_INSERTTAB2 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    QIcon par3 = ISOBJECT(3)? *(QIcon *) _qt5xhb_itemGetPtr(3) : QIcon(hb_parc(3));
    QString par4 = QLatin1String( hb_parc(4) );
    hb_retni( obj->insertTab ( (int) hb_parni(1), par2, par3, par4 ) );
  }
}


//[1]int insertTab ( int index, QWidget * page, const QString & label )
//[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABWIDGET_INSERTTAB1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTABWIDGET_INSERTTAB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isMovable () const
*/
HB_FUNC_STATIC( QTABWIDGET_ISMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMovable (  ) );
  }
}

/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setMovable ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isTabEnabled ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_ISTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->isTabEnabled ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTabEnabled ( int index, bool enable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setTabEnabled ( (int) hb_parni(1), (bool) hb_parl(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeTab ( int index )
*/
HB_FUNC_STATIC( QTABWIDGET_REMOVETAB )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeTab ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIcon tabIcon ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABICON )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QIcon * ptr = new QIcon( obj->tabIcon ( (int) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTabIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABICON )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    obj->setTabIcon ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
TabPosition tabPosition () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tabPosition (  ) );
  }
}

/*
void setTabPosition ( TabPosition )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabPosition (  (QTabWidget::TabPosition) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
TabShape tabShape () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tabShape (  ) );
  }
}

/*
void setTabShape ( TabShape s )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabShape (  (QTabWidget::TabShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tabText ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABTEXT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retc( (const char *) obj->tabText ( (int) hb_parni(1) ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTabText ( int index, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABTEXT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setTabText ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tabToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retc( (const char *) obj->tabToolTip ( (int) hb_parni(1) ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTabToolTip ( int index, const QString & tip )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setTabToolTip ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString tabWhatsThis ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retc( (const char *) obj->tabWhatsThis ( (int) hb_parni(1) ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTabWhatsThis ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setTabWhatsThis ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool usesScrollButtons () const
*/
HB_FUNC_STATIC( QTABWIDGET_USESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->usesScrollButtons (  ) );
  }
}

/*
void setUsesScrollButtons ( bool useButtons )
*/
HB_FUNC_STATIC( QTABWIDGET_SETUSESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setUsesScrollButtons ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tabsClosable () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->tabsClosable (  ) );
  }
}

/*
void setTabsClosable ( bool closeable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTabsClosable ( (bool) hb_parl(1) );
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
HB_FUNC_STATIC( QTABWIDGET_WIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
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
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTABWIDGET_MINIMUMSIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QTABWIDGET_SIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int heightForWidth(int width) const
*/
HB_FUNC_STATIC( QTABWIDGET_HEIGHTFORWIDTH )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QTABWIDGET_HASHEIGHTFORWIDTH )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}


/*
bool tabBarAutoHide() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABBARAUTOHIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->tabBarAutoHide (  ) );
  }
#endif
}

/*
void setTabBarAutoHide(bool enabled)
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABBARAUTOHIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabBarAutoHide ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QTabBar* tabBar() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABBAR )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTabBar * ptr = obj->tabBar (  );
    _qt5xhb_createReturnClass ( ptr, "QTABBAR" );
  }
}




#pragma ENDDUMP
