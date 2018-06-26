%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD createMask
   METHOD toHBITMAP
   METHOD fromHBITMAP
   METHOD toHICON
   METHOD imageFromHBITMAP
   METHOD fromHICON
   METHOD toHRGN
   METHOD fromHRGN
   METHOD stringFromHresult
   METHOD errorStringFromHresult
   METHOD colorizationColor
   METHOD realColorizationColor
   METHOD setWindowExcludedFromPeek
   METHOD isWindowExcludedFromPeek
   METHOD setWindowDisallowPeek
   METHOD isWindowPeekDisallowed
   METHOD setWindowFlip3DPolicy
   METHOD windowFlip3DPolicy
   METHOD extendFrameIntoClientArea1
   METHOD extendFrameIntoClientArea2
   METHOD extendFrameIntoClientArea
   METHOD resetExtendedFrame
   METHOD enableBlurBehindWindow1
   METHOD enableBlurBehindWindow2
   METHOD enableBlurBehindWindow
   METHOD disableBlurBehindWindow
   METHOD isCompositionEnabled
   METHOD setCompositionEnabled
   METHOD isCompositionOpaque
   METHOD setCurrentProcessExplicitAppUserModelID
   METHOD markFullscreenWindow
   METHOD taskbarActivateTab
   METHOD taskbarActivateTabAlt
   METHOD taskbarAddTab
   METHOD taskbarDeleteTab

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=static HBITMAP createMask(const QBitmap &bitmap)
HB_FUNC_STATIC( QTWIN_CREATEMASK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retptr( (HBITMAP) QtWin::createMask ( *PQBITMAP(1) ) );
#endif
}

$prototype=static HBITMAP toHBITMAP(const QPixmap &p, HBitmapFormat format = HBitmapNoAlpha)
HB_FUNC_STATIC( QTWIN_TOHBITMAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par2 = ISNIL(2)? (int) QtWin::HBitmapNoAlpha : hb_parni(2);
  hb_retptr( (HBITMAP) QtWin::toHBITMAP ( *PQPIXMAP(1), (QtWin::HBitmapFormat) par2 ) );
#endif
}

$prototype=static QPixmap fromHBITMAP(HBITMAP bitmap, HBitmapFormat format = HBitmapNoAlpha)
HB_FUNC_STATIC( QTWIN_FROMHBITMAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  HBITMAP par1 = (HBITMAP) hb_parptr(1);
  int par2 = ISNIL(2)? (int) QtWin::HBitmapNoAlpha : hb_parni(2);
  QPixmap * ptr = new QPixmap( QtWin::fromHBITMAP ( par1, (QtWin::HBitmapFormat) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
#endif
}

$prototype=static HICON toHICON(const QPixmap &p)
HB_FUNC_STATIC( QTWIN_TOHICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retptr( (HICON) QtWin::toHICON ( *PQPIXMAP(1) ) );
#endif
}

$prototype=static QImage imageFromHBITMAP(HDC hdc, HBITMAP bitmap, int width, int height)
HB_FUNC_STATIC( QTWIN_IMAGEFROMHBITMAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  HDC par1 = (HDC) hb_parptr(1);
  HBITMAP par2 = (HBITMAP) hb_parptr(2);
  QImage * ptr = new QImage( QtWin::imageFromHBITMAP ( par1, par2, PINT(3), PINT(4) ) );
  _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
#endif
}

$prototype=static QPixmap fromHICON(HICON icon)
HB_FUNC_STATIC( QTWIN_FROMHICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  HICON par1 = (HICON) hb_parptr(1);
  QPixmap * ptr = new QPixmap( QtWin::fromHICON ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
#endif
}

$prototype=static HRGN toHRGN(const QRegion &region)
HB_FUNC_STATIC( QTWIN_TOHRGN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retptr( (HRGN) QtWin::toHRGN ( *PQREGION(1) ) );
#endif
}

$prototype=static QRegion fromHRGN(HRGN hrgn)
HB_FUNC_STATIC( QTWIN_FROMHRGN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  HRGN par1 = (HRGN) hb_parptr(1);
  QRegion * ptr = new QRegion( QtWin::fromHRGN ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QREGION", true );
#endif
}

$prototype=static QString stringFromHresult(HRESULT hresult)
HB_FUNC_STATIC( QTWIN_STRINGFROMHRESULT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef Q_OS_WIN64
  HRESULT par1 = (HRESULT) hb_parptr(1);
  RQSTRING( QtWin::stringFromHresult ( par1 ) );
#endif
#endif
}

$prototype=static QString errorStringFromHresult(HRESULT hresult)
HB_FUNC_STATIC( QTWIN_ERRORSTRINGFROMHRESULT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef Q_OS_WIN64
  HRESULT par1 = (HRESULT) hb_parptr(1);
  RQSTRING( QtWin::errorStringFromHresult ( par1 ) );
#endif
#endif
}

$prototype=static QColor colorizationColor(bool *opaqueBlend = 0)
HB_FUNC_STATIC( QTWIN_COLORIZATIONCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  bool par1;
  QColor * ptr = new QColor( QtWin::colorizationColor ( &par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  hb_storl( par1, 1 );
#endif
}

$prototype=static QColor realColorizationColor()
HB_FUNC_STATIC( QTWIN_REALCOLORIZATIONCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QColor * ptr = new QColor( QtWin::realColorizationColor () );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
#endif
}

$prototype=static void setWindowExcludedFromPeek(QWindow *window, bool exclude)
HB_FUNC_STATIC( QTWIN_SETWINDOWEXCLUDEDFROMPEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::setWindowExcludedFromPeek ( par1, PBOOL(2) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static bool isWindowExcludedFromPeek(QWindow *window)
HB_FUNC_STATIC( QTWIN_ISWINDOWEXCLUDEDFROMPEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  RBOOL( QtWin::isWindowExcludedFromPeek ( par1 ) );
#endif
}

$prototype=static void setWindowDisallowPeek(QWindow *window, bool disallow)
HB_FUNC_STATIC( QTWIN_SETWINDOWDISALLOWPEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::setWindowDisallowPeek ( par1, PBOOL(2) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static bool isWindowPeekDisallowed(QWindow *window)
HB_FUNC_STATIC( QTWIN_ISWINDOWPEEKDISALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  RBOOL( QtWin::isWindowPeekDisallowed ( par1 ) );
#endif
}

$prototype=static void setWindowFlip3DPolicy(QWindow *window, WindowFlip3DPolicy policy)
HB_FUNC_STATIC( QTWIN_SETWINDOWFLIP3DPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QtWin::setWindowFlip3DPolicy ( PQWINDOW(1), (QtWin::WindowFlip3DPolicy) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static WindowFlip3DPolicy windowFlip3DPolicy(QWindow *)
HB_FUNC_STATIC( QTWIN_WINDOWFLIP3DPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  hb_retni( QtWin::windowFlip3DPolicy ( par1 ) );
#endif
}

$prototype=static void extendFrameIntoClientArea(QWindow *window, int left, int top, int right, int bottom)
HB_FUNC_STATIC( QTWIN_EXTENDFRAMEINTOCLIENTAREA1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::extendFrameIntoClientArea ( par1, PINT(2), PINT(3), PINT(4), PINT(5) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void extendFrameIntoClientArea(QWindow *window, const QMargins &margins)
HB_FUNC_STATIC( QTWIN_EXTENDFRAMEINTOCLIENTAREA2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QMargins * par2 = (QMargins *) _qt5xhb_itemGetPtr(2);
  QtWin::extendFrameIntoClientArea ( par1, *par2 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void extendFrameIntoClientArea(QWindow *window, int left, int top, int right, int bottom)
//[2]void extendFrameIntoClientArea(QWindow *window, const QMargins &margins)

HB_FUNC_STATIC( QTWIN_EXTENDFRAMEINTOCLIENTAREA )
{
  if( ISNUMPAR(5) && ISQWINDOW(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QTWIN_EXTENDFRAMEINTOCLIENTAREA1 );
  }
  else if( ISNUMPAR(2) && ISQWINDOW(1) && ISQMARGINS(2) )
  {
    HB_FUNC_EXEC( QTWIN_EXTENDFRAMEINTOCLIENTAREA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static void resetExtendedFrame(QWindow *window)
HB_FUNC_STATIC( QTWIN_RESETEXTENDEDFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::resetExtendedFrame ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void enableBlurBehindWindow(QWindow *window, const QRegion &region)
HB_FUNC_STATIC( QTWIN_ENABLEBLURBEHINDWINDOW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::enableBlurBehindWindow ( par1, *PQREGION(2) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void enableBlurBehindWindow(QWindow *window)
HB_FUNC_STATIC( QTWIN_ENABLEBLURBEHINDWINDOW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::enableBlurBehindWindow ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void enableBlurBehindWindow(QWindow *window, const QRegion &region)
//[2]void enableBlurBehindWindow(QWindow *window)

HB_FUNC_STATIC( QTWIN_ENABLEBLURBEHINDWINDOW )
{
  if( ISNUMPAR(1) && ISQWINDOW(1) && ISQREGION(2) )
  {
    HB_FUNC_EXEC( QTWIN_ENABLEBLURBEHINDWINDOW1 );
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    HB_FUNC_EXEC( QTWIN_ENABLEBLURBEHINDWINDOW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static void disableBlurBehindWindow(QWindow *window)
HB_FUNC_STATIC( QTWIN_DISABLEBLURBEHINDWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::disableBlurBehindWindow ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static bool isCompositionEnabled()
HB_FUNC_STATIC( QTWIN_ISCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RBOOL( QtWin::isCompositionEnabled () );
#endif
}

$prototype=static void setCompositionEnabled(bool enabled)
HB_FUNC_STATIC( QTWIN_SETCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QtWin::setCompositionEnabled ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static bool isCompositionOpaque()
HB_FUNC_STATIC( QTWIN_ISCOMPOSITIONOPAQUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RBOOL( QtWin::isCompositionOpaque () );
#endif
}

$prototype=static void setCurrentProcessExplicitAppUserModelID(const QString &id)
HB_FUNC_STATIC( QTWIN_SETCURRENTPROCESSEXPLICITAPPUSERMODELID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QtWin::setCurrentProcessExplicitAppUserModelID ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void markFullscreenWindow(QWindow *, bool fullscreen = true)
HB_FUNC_STATIC( QTWIN_MARKFULLSCREENWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::markFullscreenWindow ( par1, OPBOOL(2,true) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void taskbarActivateTab(QWindow *)
HB_FUNC_STATIC( QTWIN_TASKBARACTIVATETAB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::taskbarActivateTab ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void taskbarActivateTabAlt(QWindow *)
HB_FUNC_STATIC( QTWIN_TASKBARACTIVATETABALT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::taskbarActivateTabAlt ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void taskbarAddTab(QWindow *)
HB_FUNC_STATIC( QTWIN_TASKBARADDTAB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::taskbarAddTab ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void taskbarDeleteTab(QWindow *)
HB_FUNC_STATIC( QTWIN_TASKBARDELETETAB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QtWin::taskbarDeleteTab ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$extraMethods

#pragma ENDDUMP
