$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTFRAMEFORMAT
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMELAYOUTDATA
#endif

CLASS QTextFrame INHERIT QTextObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setFrameFormat
   METHOD frameFormat
   METHOD firstCursorPosition
   METHOD lastCursorPosition
   METHOD firstPosition
   METHOD lastPosition
   METHOD layoutData
   METHOD setLayoutData
   METHOD childFrames
   METHOD parentFrame

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCursor>

/*
QTextFrame(QTextDocument *doc)
*/
$constructor=|new|

$deleteMethod

/*
void setFrameFormat(const QTextFrameFormat &format)
*/
$method=|void|setFrameFormat|const QTextFrameFormat &

/*
QTextFrameFormat frameFormat() const
*/
$method=|QTextFrameFormat|frameFormat|

/*
QTextCursor firstCursorPosition() const
*/
$method=|QTextCursor|firstCursorPosition|

/*
QTextCursor lastCursorPosition() const
*/
$method=|QTextCursor|lastCursorPosition|

/*
int firstPosition() const
*/
$method=|int|firstPosition|

/*
int lastPosition() const
*/
$method=|int|lastPosition|

/*
QTextFrameLayoutData *layoutData() const
*/
$method=|QTextFrameLayoutData *|layoutData|

/*
void setLayoutData(QTextFrameLayoutData *data)
*/
$method=|void|setLayoutData|QTextFrameLayoutData *

/*
QList<QTextFrame *> childFrames() const
*/
$method=|QList<QTextFrame *>|childFrames|

/*
QTextFrame *parentFrame() const
*/
$method=|QTextFrame *|parentFrame|

#pragma ENDDUMP
