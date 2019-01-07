%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=static HBITMAP createMask(const QBitmap &bitmap)
$staticMethod=5,2,0|HBITMAP|createMask|const QBitmap &

$prototype=static HBITMAP toHBITMAP(const QPixmap &p, HBitmapFormat format = HBitmapNoAlpha)
$staticMethod=5,2,0|HBITMAP|toHBITMAP|const QPixmap &,QtWin::HBitmapFormat=QtWin::HBitmapNoAlpha

$prototype=static QPixmap fromHBITMAP(HBITMAP bitmap, HBitmapFormat format = HBitmapNoAlpha)
$staticMethod=5,2,0|QPixmap|fromHBITMAP|HBITMAP,QtWin::HBitmapFormat=QtWin::HBitmapNoAlpha

$prototype=static HICON toHICON(const QPixmap &p)
$staticMethod=5,2,0|HICON|toHICON|const QPixmap &

$prototype=static QImage imageFromHBITMAP(HDC hdc, HBITMAP bitmap, int width, int height)
$staticMethod=5,2,0|QImage|imageFromHBITMAP|HDC,HBITMAP,int,int

$prototype=static QPixmap fromHICON(HICON icon)
$staticMethod=5,2,0|QPixmap|fromHICON|HICON

$prototype=static HRGN toHRGN(const QRegion &region)
$staticMethod=5,2,0|HRGN|toHRGN|const QRegion &

$prototype=static QRegion fromHRGN(HRGN hrgn)
$staticMethod=5,2,0|QRegion|fromHRGN|HRGN

$prototype=static QString stringFromHresult(HRESULT hresult)
$staticMethod=5,2,0|QString|stringFromHresult|HRESULT|#ifndef Q_OS_WIN64

$prototype=static QString errorStringFromHresult(HRESULT hresult)
$staticMethod=5,2,0|QString|errorStringFromHresult|HRESULT|#ifndef Q_OS_WIN64

$prototype=static QColor colorizationColor(bool *opaqueBlend = 0)
$staticMethod=5,2,0|QColor|colorizationColor|bool *=0

$prototype=static QColor realColorizationColor()
$staticMethod=5,2,0|QColor|realColorizationColor|

$prototype=static void setWindowExcludedFromPeek(QWindow *window, bool exclude)
$staticMethod=5,2,0|void|setWindowExcludedFromPeek|QWindow *,bool

$prototype=static bool isWindowExcludedFromPeek(QWindow *window)
$staticMethod=5,2,0|bool|isWindowExcludedFromPeek|QWindow *

$prototype=static void setWindowDisallowPeek(QWindow *window, bool disallow)
$staticMethod=5,2,0|void|setWindowDisallowPeek|QWindow *,bool

$prototype=static bool isWindowPeekDisallowed(QWindow *window)
$staticMethod=5,2,0|bool|isWindowPeekDisallowed|QWindow *

$prototype=static void setWindowFlip3DPolicy(QWindow *window, WindowFlip3DPolicy policy)
$staticMethod=5,2,0|void|setWindowFlip3DPolicy|QWindow *,QtWin::WindowFlip3DPolicy

$prototype=static WindowFlip3DPolicy windowFlip3DPolicy(QWindow *)
$staticMethod=5,2,0|QtWin::WindowFlip3DPolicy|windowFlip3DPolicy|QWindow *

$prototype=static void extendFrameIntoClientArea(QWindow *window, int left, int top, int right, int bottom)
$internalStaticMethod=5,2,0|void|extendFrameIntoClientArea,extendFrameIntoClientArea1|QWindow *,int,int,int,int

$prototype=static void extendFrameIntoClientArea(QWindow *window, const QMargins &margins)
$internalStaticMethod=5,2,0|void|extendFrameIntoClientArea,extendFrameIntoClientArea2|QWindow *,const QMargins &

//[1]void extendFrameIntoClientArea(QWindow *window, int left, int top, int right, int bottom)
//[2]void extendFrameIntoClientArea(QWindow *window, const QMargins &margins)

HB_FUNC_STATIC( QTWIN_EXTENDFRAMEINTOCLIENTAREA )
{
  if( ISNUMPAR(5) && ISQWINDOW(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QtWin_extendFrameIntoClientArea1();
  }
  else if( ISNUMPAR(2) && ISQWINDOW(1) && ISQMARGINS(2) )
  {
    QtWin_extendFrameIntoClientArea2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=extendFrameIntoClientArea

$prototype=static void resetExtendedFrame(QWindow *window)
$staticMethod=5,2,0|void|resetExtendedFrame|QWindow *

$prototype=static void enableBlurBehindWindow(QWindow *window, const QRegion &region)
$internalStaticMethod=5,2,0|void|enableBlurBehindWindow,enableBlurBehindWindow1|QWindow *,const QRegion &

$prototype=static void enableBlurBehindWindow(QWindow *window)
$internalStaticMethod=5,2,0|void|enableBlurBehindWindow,enableBlurBehindWindow2|QWindow *

//[1]void enableBlurBehindWindow(QWindow *window, const QRegion &region)
//[2]void enableBlurBehindWindow(QWindow *window)

HB_FUNC_STATIC( QTWIN_ENABLEBLURBEHINDWINDOW )
{
  if( ISNUMPAR(1) && ISQWINDOW(1) && ISQREGION(2) )
  {
    QtWin_enableBlurBehindWindow1();
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    QtWin_enableBlurBehindWindow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=enableBlurBehindWindow

$prototype=static void disableBlurBehindWindow(QWindow *window)
$staticMethod=5,2,0|void|disableBlurBehindWindow|QWindow *

$prototype=static bool isCompositionEnabled()
$staticMethod=5,2,0|bool|isCompositionEnabled|

$prototype=static void setCompositionEnabled(bool enabled)
$staticMethod=5,2,0|void|setCompositionEnabled|bool

$prototype=static bool isCompositionOpaque()
$staticMethod=5,2,0|bool|isCompositionOpaque|

$prototype=static void setCurrentProcessExplicitAppUserModelID(const QString &id)
$staticMethod=5,2,0|void|setCurrentProcessExplicitAppUserModelID|const QString &

$prototype=static void markFullscreenWindow(QWindow *, bool fullscreen = true)
$staticMethod=5,2,0|void|markFullscreenWindow|QWindow *,bool=true

$prototype=static void taskbarActivateTab(QWindow *)
$staticMethod=5,2,0|void|taskbarActivateTab|QWindow *

$prototype=static void taskbarActivateTabAlt(QWindow *)
$staticMethod=5,2,0|void|taskbarActivateTabAlt|QWindow *

$prototype=static void taskbarAddTab(QWindow *)
$staticMethod=5,2,0|void|taskbarAddTab|QWindow *

$prototype=static void taskbarDeleteTab(QWindow *)
$staticMethod=5,2,0|void|taskbarDeleteTab|QWindow *

$extraMethods

#pragma ENDDUMP
