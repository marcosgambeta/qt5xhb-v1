$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QLOCALE
#endif

CLASS QInputMethod INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD cursorRectangle
   METHOD inputDirection
   METHOD inputItemTransform
   METHOD isAnimating
   METHOD isVisible
   METHOD keyboardRectangle
   METHOD locale
   METHOD setInputItemTransform
   METHOD setVisible
   METHOD commit
   METHOD hide
   METHOD invokeAction
   METHOD reset
   METHOD show
   METHOD update

   METHOD onAnimatingChanged
   METHOD onCursorRectangleChanged
   METHOD onInputDirectionChanged
   METHOD onKeyboardRectangleChanged
   METHOD onLocaleChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QRectF>
#include <QTransform>
#include <QLocale>

/*
QRectF cursorRectangle() const
*/
$method=|QRectF|cursorRectangle|

/*
Qt::LayoutDirection inputDirection() const
*/
$method=|Qt::LayoutDirection|inputDirection|

/*
QTransform inputItemTransform() const
*/
$method=|QTransform|inputItemTransform|

/*
bool isAnimating() const
*/
$method=|bool|isAnimating|

/*
bool isVisible() const
*/
$method=|bool|isVisible|

/*
QRectF keyboardRectangle() const
*/
$method=|QRectF|keyboardRectangle|

/*
QLocale locale() const
*/
$method=|QLocale|locale|

/*
void setInputItemTransform(const QTransform & transform)
*/
$method=|void|setInputItemTransform|const QTransform &

/*
void setVisible(bool visible)
*/
$method=|void|setVisible|bool

/*
void commit()
*/
$method=|void|commit|

/*
void hide()
*/
$method=|void|hide|

/*
void invokeAction(Action a, int cursorPosition)
*/
$method=|void|invokeAction|QInputMethod::Action,int

/*
void reset()
*/
$method=|void|reset|

/*
void show()
*/
$method=|void|show|

/*
void update(Qt::InputMethodQueries queries)
*/
$method=|void|update|Qt::InputMethodQueries

#pragma ENDDUMP
