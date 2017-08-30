$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTOPTION
REQUEST QSIZEF
#endif

CLASS QStaticText

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setText
   METHOD text
   METHOD setTextFormat
   METHOD textFormat
   METHOD setTextWidth
   METHOD textWidth
   METHOD setTextOption
   METHOD textOption
   METHOD size
   METHOD prepare
   METHOD setPerformanceHint
   METHOD performanceHint

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStaticText()
*/
$internalConstructor=|new1|

/*
QStaticText(const QString &text)
*/
$internalConstructor=|new2|const QString &

/*
QStaticText(const QStaticText &other)
*/
$internalConstructor=|new3|const QStaticText &

//[1]QStaticText()
//[2]QStaticText(const QString &text)
//[3]QStaticText(const QStaticText &other)

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStaticText_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStaticText_new2();
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    QStaticText_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QStaticText &other)
*/
$method=|void|swap|QStaticText &

/*
void setText(const QString &text)
*/
$method=|void|setText|const QString &

/*
QString text() const
*/
$method=|QString|text|

/*
void setTextFormat(Qt::TextFormat textFormat)
*/
$method=|void|setTextFormat|Qt::TextFormat

/*
Qt::TextFormat textFormat() const
*/
$method=|Qt::TextFormat|textFormat|

/*
void setTextWidth(qreal textWidth)
*/
$method=|void|setTextWidth|qreal

/*
qreal textWidth() const
*/
$method=|qreal|textWidth|

/*
void setTextOption(const QTextOption &textOption)
*/
$method=|void|setTextOption|const QTextOption &

/*
QTextOption textOption() const
*/
$method=|QTextOption|textOption|

/*
QSizeF size() const
*/
$method=|QSizeF|size|

/*
void prepare(const QTransform &matrix = QTransform(), const QFont &font = QFont())
*/
$method=|void|prepare|const QTransform &=QTransform(),const QFont &=QFont()

/*
void setPerformanceHint(PerformanceHint performanceHint)
*/
$method=|void|setPerformanceHint|QStaticText::PerformanceHint

/*
PerformanceHint performanceHint() const
*/
$method=|QStaticText::PerformanceHint|performanceHint|

$extraMethods

#pragma ENDDUMP
