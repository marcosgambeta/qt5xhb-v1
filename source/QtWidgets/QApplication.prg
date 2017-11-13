/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QCLIPBOARD
REQUEST QDESKTOPWIDGET
REQUEST QFONT
REQUEST QFONTMETRICS
REQUEST QSIZE
REQUEST QCURSOR
REQUEST QPALETTE
REQUEST QSTYLE
REQUEST QICON
#endif

CLASS QApplication INHERIT QGuiApplication

   METHOD new
   METHOD delete
   METHOD isSessionRestored
   METHOD sessionId
   METHOD sessionKey
   METHOD styleSheet
   METHOD notify
   METHOD aboutQt
   METHOD closeAllWindows
   METHOD setStyleSheet
   METHOD activeModalWidget
   METHOD activePopupWidget
   METHOD activeWindow
   METHOD alert
   METHOD allWidgets
   METHOD beep
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD colorSpec
   METHOD cursorFlashTime
   METHOD desktop
   METHOD desktopSettingsAware
   METHOD doubleClickInterval
   METHOD exec
   METHOD focusWidget
   METHOD font
   METHOD fontMetrics
   METHOD globalStrut
   METHOD isEffectEnabled
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardInputInterval
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD setActiveWindow
   METHOD setColorSpec
   METHOD setCursorFlashTime
   METHOD setDesktopSettingsAware
   METHOD setDoubleClickInterval
   METHOD setEffectEnabled
   METHOD setFont
   METHOD setGlobalStrut
   METHOD setKeyboardInputInterval
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD setStartDragDistance
   METHOD setStartDragTime
   METHOD setStyle
   METHOD setWheelScrollLines
   METHOD setWindowIcon
   METHOD startDragDistance
   METHOD startDragTime
   METHOD style
   METHOD topLevelAt
   METHOD topLevelWidgets
   METHOD wheelScrollLines
   METHOD widgetAt
   METHOD windowIcon

   METHOD onAboutToReleaseGpuResources
   METHOD onAboutToUseGpuResources
   METHOD onCommitDataRequest
   METHOD onFocusChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onSaveStateRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QApplication>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QApplication>
#endif

#include <QFont>
#include <QLocale>
#include <QIcon>
#include <QSessionManager>
#include <QFontMetrics>
#include <QPalette>

//QApplication ( int & argc, char ** argv )
//QApplication ( int & argc, char ** argv, bool GUIenabled )
//QApplication ( int & argc, char ** argv, Type type )
//QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )


/*
QApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QApplication * o = NULL;
  o = new QApplication( argc, argv );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QAPPLICATION_DELETE )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isSessionRestored () const
*/
HB_FUNC_STATIC( QAPPLICATION_ISSESSIONRESTORED )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSessionRestored () );
  }
}






/*
QString sessionId () const
*/
HB_FUNC_STATIC( QAPPLICATION_SESSIONID )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sessionId () );
  }
}


/*
QString sessionKey () const
*/
HB_FUNC_STATIC( QAPPLICATION_SESSIONKEY )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sessionKey () );
  }
}



/*
QString styleSheet () const
*/
HB_FUNC_STATIC( QAPPLICATION_STYLESHEET )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->styleSheet () );
  }
}






/*
virtual bool notify ( QObject * receiver, QEvent * e )
*/
HB_FUNC_STATIC( QAPPLICATION_NOTIFY )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->notify ( PQOBJECT(1), PQEVENT(2) ) );
  }
}


/*
void aboutQt ()
*/
HB_FUNC_STATIC( QAPPLICATION_ABOUTQT )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->aboutQt ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void closeAllWindows ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLOSEALLWINDOWS )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->closeAllWindows ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void setStyleSheet ( const QString & sheet )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLESHEET )
{
  QApplication * obj = (QApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStyleSheet ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QWidget * activeModalWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEMODALWIDGET )
{
  QWidget * ptr = QApplication::activeModalWidget ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}


/*
static QWidget * activePopupWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEPOPUPWIDGET )
{
  QWidget * ptr = QApplication::activePopupWidget ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}


/*
static QWidget * activeWindow ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEWINDOW )
{
  QWidget * ptr = QApplication::activeWindow ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}


/*
static void alert ( QWidget * widget, int msec = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_ALERT )
{
  QApplication::alert ( PQWIDGET(1), OPINT(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QWidgetList allWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_ALLWIDGETS )
{
  QWidgetList list = QApplication::allWidgets ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QWIDGET" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QWidget *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static void beep ()
*/
HB_FUNC_STATIC( QAPPLICATION_BEEP )
{
  QApplication::beep ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void changeOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_CHANGEOVERRIDECURSOR )
{
  QApplication::changeOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QClipboard * clipboard ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QApplication::clipboard ();
  _qt5xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}


/*
static int colorSpec ()
*/
HB_FUNC_STATIC( QAPPLICATION_COLORSPEC )
{
  RINT( QApplication::colorSpec () );
}


/*
static int cursorFlashTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_CURSORFLASHTIME )
{
  RINT( QApplication::cursorFlashTime () );
}


/*
static QDesktopWidget * desktop ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOP )
{
  QDesktopWidget * ptr = QApplication::desktop ();
  _qt5xhb_createReturnClass ( ptr, "QDESKTOPWIDGET" );
}


/*
static bool desktopSettingsAware ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOPSETTINGSAWARE )
{
  RBOOL( QApplication::desktopSettingsAware () );
}


/*
static int doubleClickInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_DOUBLECLICKINTERVAL )
{
  RINT( QApplication::doubleClickInterval () );
}


/*
static int exec ()
*/
HB_FUNC_STATIC( QAPPLICATION_EXEC )
{
  RINT( QApplication::exec () );
}


/*
static QWidget * focusWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_FOCUSWIDGET )
{
  QWidget * ptr = QApplication::focusWidget ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}


/*
static QFont font ()
*/
void QApplication_font1 ()
{
  QFont * ptr = new QFont( QApplication::font () );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const QWidget * widget )
*/
void QApplication_font2 ()
{
  QFont * ptr = new QFont( QApplication::font ( PQWIDGET(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const char * className )
*/
void QApplication_font3 ()
{
  QFont * ptr = new QFont( QApplication::font ( PCONSTCHAR(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}


//[1]QFont font ()
//[2]QFont font ( const QWidget * widget )
//[3]QFont font ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    QApplication_font1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_font2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_font3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QFontMetrics fontMetrics ()
*/
HB_FUNC_STATIC( QAPPLICATION_FONTMETRICS )
{
  QFontMetrics * ptr = new QFontMetrics( QApplication::fontMetrics () );
  _qt5xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
}


/*
static QSize globalStrut ()
*/
HB_FUNC_STATIC( QAPPLICATION_GLOBALSTRUT )
{
  QSize * ptr = new QSize( QApplication::globalStrut () );
  _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
}


/*
static bool isEffectEnabled ( Qt::UIEffect effect )
*/
HB_FUNC_STATIC( QAPPLICATION_ISEFFECTENABLED )
{
  RBOOL( QApplication::isEffectEnabled ( (Qt::UIEffect) hb_parni(1) ) );
}


/*
static bool isLeftToRight ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISLEFTTORIGHT )
{
  RBOOL( QApplication::isLeftToRight () );
}


/*
static bool isRightToLeft ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISRIGHTTOLEFT )
{
  RBOOL( QApplication::isRightToLeft () );
}



/*
static int keyboardInputInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTINTERVAL )
{
  RINT( QApplication::keyboardInputInterval () );
}



/*
static Qt::KeyboardModifiers keyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDMODIFIERS )
{
  hb_retni( QApplication::keyboardModifiers () );
}



/*
static Qt::LayoutDirection layoutDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_LAYOUTDIRECTION )
{
  hb_retni( QApplication::layoutDirection () );
}


/*
static Qt::MouseButtons mouseButtons ()
*/
HB_FUNC_STATIC( QAPPLICATION_MOUSEBUTTONS )
{
  hb_retni( QApplication::mouseButtons () );
}



/*
static QCursor * overrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QApplication::overrideCursor ();
  _qt5xhb_createReturnClass ( ptr, "QCURSOR" );
}


/*
static QPalette palette ()
*/
void QApplication_palette1 ()
{
  QPalette * ptr = new QPalette( QApplication::palette () );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const QWidget * widget )
*/
void QApplication_palette2 ()
{
  QPalette * ptr = new QPalette( QApplication::palette ( PQWIDGET(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const char * className )
*/
void QApplication_palette3 ()
{
  QPalette * ptr = new QPalette( QApplication::palette ( PCONSTCHAR(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}


//[1]QPalette palette ()
//[2]QPalette palette ( const QWidget * widget )
//[3]QPalette palette ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    QApplication_palette1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_palette2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_palette3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static Qt::KeyboardModifiers queryKeyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
  hb_retni( QApplication::queryKeyboardModifiers () );
}


/*
static bool quitOnLastWindowClosed ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUITONLASTWINDOWCLOSED )
{
  RBOOL( QApplication::quitOnLastWindowClosed () );
}





/*
static void restoreOverrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_RESTOREOVERRIDECURSOR )
{
  QApplication::restoreOverrideCursor ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setActiveWindow ( QWidget * active )
*/
HB_FUNC_STATIC( QAPPLICATION_SETACTIVEWINDOW )
{
  QApplication::setActiveWindow ( PQWIDGET(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setColorSpec ( int spec )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCOLORSPEC )
{
  if( ISNUM(1) )
  {
    QApplication::setColorSpec ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setCursorFlashTime ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCURSORFLASHTIME )
{
  if( ISNUM(1) )
  {
    QApplication::setCursorFlashTime ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDesktopSettingsAware ( bool on )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
  if( ISLOG(1) )
  {
    QApplication::setDesktopSettingsAware ( PBOOL(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDoubleClickInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDOUBLECLICKINTERVAL )
{
  if( ISNUM(1) )
  {
    QApplication::setDoubleClickInterval ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
*/
HB_FUNC_STATIC( QAPPLICATION_SETEFFECTENABLED )
{
  QApplication::setEffectEnabled ( (Qt::UIEffect) hb_parni(1), OPBOOL(2,true) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setFont ( const QFont & font, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETFONT )
{
  QApplication::setFont ( *PQFONT(1), OPCONSTCHAR(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setGlobalStrut ( const QSize & )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGLOBALSTRUT )
{
  QApplication::setGlobalStrut ( *PQSIZE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static void setKeyboardInputInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETKEYBOARDINPUTINTERVAL )
{
  if( ISNUM(1) )
  {
    QApplication::setKeyboardInputInterval ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QAPPLICATION_SETLAYOUTDIRECTION )
{
  QApplication::setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static void setOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_SETOVERRIDECURSOR )
{
  QApplication::setOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setPalette ( const QPalette & palette, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETPALETTE )
{
  QApplication::setPalette ( *PQPALETTE(1), OPCONSTCHAR(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setQuitOnLastWindowClosed ( bool quit )
*/
HB_FUNC_STATIC( QAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
  if( ISLOG(1) )
  {
    QApplication::setQuitOnLastWindowClosed ( PBOOL(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setStartDragDistance ( int l )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGDISTANCE )
{
  if( ISNUM(1) )
  {
    QApplication::setStartDragDistance ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setStartDragTime ( int ms )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGTIME )
{
  if( ISNUM(1) )
  {
    QApplication::setStartDragTime ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setStyle ( QStyle * style )
*/
void QApplication_setStyle1 ()
{
  QApplication::setStyle ( PQSTYLE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QStyle * setStyle ( const QString & style )
*/
void QApplication_setStyle2 ()
{
  QStyle * ptr = QApplication::setStyle ( PQSTRING(1) );
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}


//[1]void setStyle ( QStyle * style )
//[2]QStyle * setStyle ( const QString & style )

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QApplication_setStyle1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_setStyle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setWheelScrollLines ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWHEELSCROLLLINES )
{
  if( ISNUM(1) )
  {
    QApplication::setWheelScrollLines ( PINT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWINDOWICON )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QApplication::setWindowIcon ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static int startDragDistance ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGDISTANCE )
{
  RINT( QApplication::startDragDistance () );
}


/*
static int startDragTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGTIME )
{
  RINT( QApplication::startDragTime () );
}


/*
static QStyle * style ()
*/
HB_FUNC_STATIC( QAPPLICATION_STYLE )
{
  QStyle * ptr = QApplication::style ();
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}



/*
static QWidget * topLevelAt ( const QPoint & point )
*/
void QApplication_topLevelAt1 ()
{
  QWidget * ptr = QApplication::topLevelAt ( *PQPOINT(1) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * topLevelAt ( int x, int y )
*/
void QApplication_topLevelAt2 ()
{
  QWidget * ptr = QApplication::topLevelAt ( PINT(1), PINT(2) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}


//[1]QWidget * topLevelAt ( const QPoint & point )
//[2]QWidget * topLevelAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_topLevelAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_topLevelAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QWidgetList topLevelWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELWIDGETS )
{
  QWidgetList list = QApplication::topLevelWidgets ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QWIDGET" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QWidget *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}



/*
static int wheelScrollLines ()
*/
HB_FUNC_STATIC( QAPPLICATION_WHEELSCROLLLINES )
{
  RINT( QApplication::wheelScrollLines () );
}


/*
static QWidget * widgetAt ( const QPoint & point )
*/
void QApplication_widgetAt1 ()
{
  QWidget * ptr = QApplication::widgetAt ( *PQPOINT(1) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * widgetAt ( int x, int y )
*/
void QApplication_widgetAt2 ()
{
  QWidget * ptr = QApplication::widgetAt ( PINT(1), PINT(2) );
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}


//[1]QWidget * widgetAt ( const QPoint & point )
//[2]QWidget * widgetAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_widgetAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_widgetAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QIcon windowIcon ()
*/
HB_FUNC_STATIC( QAPPLICATION_WINDOWICON )
{
  QIcon * ptr = new QIcon( QApplication::windowIcon () );
  _qt5xhb_createReturnClass ( ptr, "QICON", true );
}




#pragma ENDDUMP
