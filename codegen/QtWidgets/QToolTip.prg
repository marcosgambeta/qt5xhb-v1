%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QFont font()
$method=|QFont|font|

$prototype=void hideText()
$method=|void|hideText|

$prototype=bool isVisible()
$method=|bool|isVisible|

$prototype=QPalette palette()
$method=|QPalette|palette|

$prototype=void setFont(const QFont & font)
$method=|void|setFont|const QFont &

$prototype=void setPalette(const QPalette & palette)
$method=|void|setPalette|const QPalette &

$prototype=void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
$internalMethod=|void|showText,showText1|const QPoint &,const QString &,QWidget *,const QRect &

$prototype=void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
$internalMethod=|void|showText,showText2|const QPoint &,const QString &,QWidget *=0

//[1]void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
//[2]void showText(const QPoint & pos, const QString & text, QWidget * w = 0)

HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT )
{
  if( ISNUMPAR(4) && ISQPOINT(1) && ISCHAR(2) && ISQWIDGET(3) && ISQRECT(4) )
  {
    QToolTip_showText1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINT(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QToolTip_showText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString text()
$method=|QString|text|

$extraMethods

#pragma ENDDUMP
