/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
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

   DATA class_id INIT Class_Id_QApplication
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
   METHOD font1
   METHOD font2
   METHOD font3
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
   METHOD palette1
   METHOD palette2
   METHOD palette3
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
   METHOD setStyle1
   METHOD setStyle2
   METHOD setStyle
   METHOD setWheelScrollLines
   METHOD setWindowIcon
   METHOD startDragDistance
   METHOD startDragTime
   METHOD style
   METHOD topLevelAt1
   METHOD topLevelAt2
   METHOD topLevelAt
   METHOD topLevelWidgets
   METHOD wheelScrollLines
   METHOD widgetAt1
   METHOD widgetAt2
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
    hb_retl( obj->isSessionRestored (  ) );
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
    hb_retc( (const char *) obj->sessionId (  ).toLatin1().data() );
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
    hb_retc( (const char *) obj->sessionKey (  ).toLatin1().data() );
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
    hb_retc( (const char *) obj->styleSheet (  ).toLatin1().data() );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->notify ( par1, par2 ) );
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
    obj->aboutQt (  );
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
    obj->closeAllWindows (  );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setStyleSheet ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QWidget * activeModalWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEMODALWIDGET )
{
  QWidget * ptr = QApplication::activeModalWidget (  );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}


/*
static QWidget * activePopupWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEPOPUPWIDGET )
{
  QWidget * ptr = QApplication::activePopupWidget (  );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}


/*
static QWidget * activeWindow ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEWINDOW )
{
  QWidget * ptr = QApplication::activeWindow (  );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}


/*
static void alert ( QWidget * widget, int msec = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_ALERT )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QApplication::alert ( par1, (int) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QWidgetList allWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_ALLWIDGETS )
{
  QWidgetList list = QApplication::allWidgets (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWIDGET" );
  #else
  pDynSym = hb_dynsymFindName( "QWIDGET" );
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
  QApplication::beep (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void changeOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_CHANGEOVERRIDECURSOR )
{
  QCursor * par1 = (QCursor *) _qt5xhb_itemGetPtr(1);
  QApplication::changeOverrideCursor ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QClipboard * clipboard ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QApplication::clipboard (  );
  _qt5xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}


/*
static int colorSpec ()
*/
HB_FUNC_STATIC( QAPPLICATION_COLORSPEC )
{
  hb_retni( QApplication::colorSpec (  ) );
}


/*
static int cursorFlashTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_CURSORFLASHTIME )
{
  hb_retni( QApplication::cursorFlashTime (  ) );
}


/*
static QDesktopWidget * desktop ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOP )
{
  QDesktopWidget * ptr = QApplication::desktop (  );
  _qt5xhb_createReturnClass ( ptr, "QDESKTOPWIDGET" );
}


/*
static bool desktopSettingsAware ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOPSETTINGSAWARE )
{
  hb_retl( QApplication::desktopSettingsAware (  ) );
}


/*
static int doubleClickInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_DOUBLECLICKINTERVAL )
{
  hb_retni( QApplication::doubleClickInterval (  ) );
}


/*
static int exec ()
*/
HB_FUNC_STATIC( QAPPLICATION_EXEC )
{
  hb_retni( QApplication::exec (  ) );
}


/*
static QWidget * focusWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_FOCUSWIDGET )
{
  QWidget * ptr = QApplication::focusWidget (  );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}


/*
static QFont font ()
*/
HB_FUNC_STATIC( QAPPLICATION_FONT1 )
{
  QFont * ptr = new QFont( QApplication::font (  ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const QWidget * widget )
*/
HB_FUNC_STATIC( QAPPLICATION_FONT2 )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QFont * ptr = new QFont( QApplication::font ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const char * className )
*/
HB_FUNC_STATIC( QAPPLICATION_FONT3 )
{
  const char * par1 = hb_parc(1);
  QFont * ptr = new QFont( QApplication::font (  (const char *) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}


//[1]QFont font ()
//[2]QFont font ( const QWidget * widget )
//[3]QFont font ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAPPLICATION_FONT1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_FONT2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_FONT3 );
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
  QFontMetrics * ptr = new QFontMetrics( QApplication::fontMetrics (  ) );
  _qt5xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
}


/*
static QSize globalStrut ()
*/
HB_FUNC_STATIC( QAPPLICATION_GLOBALSTRUT )
{
  QSize * ptr = new QSize( QApplication::globalStrut (  ) );
  _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
}


/*
static bool isEffectEnabled ( Qt::UIEffect effect )
*/
HB_FUNC_STATIC( QAPPLICATION_ISEFFECTENABLED )
{
  int par1 = hb_parni(1);
  hb_retl( QApplication::isEffectEnabled (  (Qt::UIEffect) par1 ) );
}


/*
static bool isLeftToRight ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISLEFTTORIGHT )
{
  hb_retl( QApplication::isLeftToRight (  ) );
}


/*
static bool isRightToLeft ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISRIGHTTOLEFT )
{
  hb_retl( QApplication::isRightToLeft (  ) );
}



/*
static int keyboardInputInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTINTERVAL )
{
  hb_retni( QApplication::keyboardInputInterval (  ) );
}



/*
static Qt::KeyboardModifiers keyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDMODIFIERS )
{
  hb_retni( QApplication::keyboardModifiers (  ) );
}



/*
static Qt::LayoutDirection layoutDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_LAYOUTDIRECTION )
{
  hb_retni( QApplication::layoutDirection (  ) );
}


/*
static Qt::MouseButtons mouseButtons ()
*/
HB_FUNC_STATIC( QAPPLICATION_MOUSEBUTTONS )
{
  hb_retni( QApplication::mouseButtons (  ) );
}



/*
static QCursor * overrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QApplication::overrideCursor (  );
  _qt5xhb_createReturnClass ( ptr, "QCURSOR" );
}


/*
static QPalette palette ()
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE1 )
{
  QPalette * ptr = new QPalette( QApplication::palette (  ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const QWidget * widget )
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE2 )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QPalette * ptr = new QPalette( QApplication::palette ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const char * className )
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE3 )
{
  const char * par1 = hb_parc(1);
  QPalette * ptr = new QPalette( QApplication::palette (  (const char *) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}


//[1]QPalette palette ()
//[2]QPalette palette ( const QWidget * widget )
//[3]QPalette palette ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAPPLICATION_PALETTE1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_PALETTE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_PALETTE3 );
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
  hb_retni( QApplication::queryKeyboardModifiers (  ) );
}


/*
static bool quitOnLastWindowClosed ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUITONLASTWINDOWCLOSED )
{
  hb_retl( QApplication::quitOnLastWindowClosed (  ) );
}





/*
static void restoreOverrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_RESTOREOVERRIDECURSOR )
{
  QApplication::restoreOverrideCursor (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setActiveWindow ( QWidget * active )
*/
HB_FUNC_STATIC( QAPPLICATION_SETACTIVEWINDOW )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QApplication::setActiveWindow ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setColorSpec ( int spec )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCOLORSPEC )
{
  QApplication::setColorSpec ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setCursorFlashTime ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCURSORFLASHTIME )
{
  QApplication::setCursorFlashTime ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDesktopSettingsAware ( bool on )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
  QApplication::setDesktopSettingsAware ( (bool) hb_parl(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDoubleClickInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDOUBLECLICKINTERVAL )
{
  QApplication::setDoubleClickInterval ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
*/
HB_FUNC_STATIC( QAPPLICATION_SETEFFECTENABLED )
{
  int par1 = hb_parni(1);
  QApplication::setEffectEnabled (  (Qt::UIEffect) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setFont ( const QFont & font, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETFONT )
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  QApplication::setFont ( *par1,  (const char *) par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setGlobalStrut ( const QSize & )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGLOBALSTRUT )
{
  QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
  QApplication::setGlobalStrut ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static void setKeyboardInputInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETKEYBOARDINPUTINTERVAL )
{
  QApplication::setKeyboardInputInterval ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QAPPLICATION_SETLAYOUTDIRECTION )
{
  int par1 = hb_parni(1);
  QApplication::setLayoutDirection (  (Qt::LayoutDirection) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static void setOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_SETOVERRIDECURSOR )
{
  QCursor * par1 = (QCursor *) _qt5xhb_itemGetPtr(1);
  QApplication::setOverrideCursor ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setPalette ( const QPalette & palette, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETPALETTE )
{
  QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  QApplication::setPalette ( *par1,  (const char *) par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setQuitOnLastWindowClosed ( bool quit )
*/
HB_FUNC_STATIC( QAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
  QApplication::setQuitOnLastWindowClosed ( (bool) hb_parl(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setStartDragDistance ( int l )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGDISTANCE )
{
  QApplication::setStartDragDistance ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setStartDragTime ( int ms )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGTIME )
{
  QApplication::setStartDragTime ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLE1 )
{
  QStyle * par1 = (QStyle *) _qt5xhb_itemGetPtr(1);
  QApplication::setStyle ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QStyle * setStyle ( const QString & style )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLE2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QStyle * ptr = QApplication::setStyle ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}


//[1]void setStyle ( QStyle * style )
//[2]QStyle * setStyle ( const QString & style )

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_SETSTYLE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_SETSTYLE2 );
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
  QApplication::setWheelScrollLines ( (int) hb_parni(1) );
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
  hb_retni( QApplication::startDragDistance (  ) );
}


/*
static int startDragTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGTIME )
{
  hb_retni( QApplication::startDragTime (  ) );
}


/*
static QStyle * style ()
*/
HB_FUNC_STATIC( QAPPLICATION_STYLE )
{
  QStyle * ptr = QApplication::style (  );
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}



/*
static QWidget * topLevelAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT1 )
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QWidget * ptr = QApplication::topLevelAt ( *par1 );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}

/*
static QWidget * topLevelAt ( int x, int y )
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT2 )
{
  QWidget * ptr = QApplication::topLevelAt ( (int) hb_parni(1), (int) hb_parni(2) );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}


//[1]QWidget * topLevelAt ( const QPoint & point )
//[2]QWidget * topLevelAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_TOPLEVELAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QAPPLICATION_TOPLEVELAT2 );
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
  QWidgetList list = QApplication::topLevelWidgets (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWIDGET" );
  #else
  pDynSym = hb_dynsymFindName( "QWIDGET" );
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
  hb_retni( QApplication::wheelScrollLines (  ) );
}


/*
static QWidget * widgetAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QAPPLICATION_WIDGETAT1 )
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QWidget * ptr = QApplication::widgetAt ( *par1 );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}

/*
static QWidget * widgetAt ( int x, int y )
*/
HB_FUNC_STATIC( QAPPLICATION_WIDGETAT2 )
{
  QWidget * ptr = QApplication::widgetAt ( (int) hb_parni(1), (int) hb_parni(2) );
  _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
}


//[1]QWidget * widgetAt ( const QPoint & point )
//[2]QWidget * widgetAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_WIDGETAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QAPPLICATION_WIDGETAT2 );
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
  QIcon * ptr = new QIcon( QApplication::windowIcon (  ) );
  _qt5xhb_createReturnClass ( ptr, "QICON", true );
}




#pragma ENDDUMP
