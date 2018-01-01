%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QStaticText()
$internalConstructor=|new1|

$prototype=QStaticText(const QString &text)
$internalConstructor=|new2|const QString &

$prototype=QStaticText(const QStaticText &other)
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

$prototype=void swap(QStaticText &other)
$method=|void|swap|QStaticText &

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototype=QString text() const
$method=|QString|text|

$prototype=void setTextFormat(Qt::TextFormat textFormat)
$method=|void|setTextFormat|Qt::TextFormat

$prototype=Qt::TextFormat textFormat() const
$method=|Qt::TextFormat|textFormat|

$prototype=void setTextWidth(qreal textWidth)
$method=|void|setTextWidth|qreal

$prototype=qreal textWidth() const
$method=|qreal|textWidth|

$prototype=void setTextOption(const QTextOption &textOption)
$method=|void|setTextOption|const QTextOption &

$prototype=QTextOption textOption() const
$method=|QTextOption|textOption|

$prototype=QSizeF size() const
$method=|QSizeF|size|

$prototype=void prepare(const QTransform &matrix = QTransform(), const QFont &font = QFont())
$method=|void|prepare|const QTransform &=QTransform(),const QFont &=QFont()

$prototype=void setPerformanceHint(PerformanceHint performanceHint)
$method=|void|setPerformanceHint|QStaticText::PerformanceHint

$prototype=PerformanceHint performanceHint() const
$method=|QStaticText::PerformanceHint|performanceHint|

$extraMethods

#pragma ENDDUMP
