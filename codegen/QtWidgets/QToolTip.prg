$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QPALETTE
#endif

CLASS QToolTip

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD font
   METHOD hideText
   METHOD isVisible
   METHOD palette
   METHOD setFont
   METHOD setPalette
   METHOD showText
   METHOD text

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

$deleteMethod

/*
QFont font()
*/
$method=|QFont|font|

/*
void hideText()
*/
$method=|void|hideText|

/*
bool isVisible()
*/
$method=|bool|isVisible|

/*
QPalette palette()
*/
$method=|QPalette|palette|

/*
void setFont(const QFont & font)
*/
$method=|void|setFont|const QFont &

/*
void setPalette(const QPalette & palette)
*/
$method=|void|setPalette|const QPalette &

/*
void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
*/
$internalMethod=|void|showText,showText1|const QPoint &,const QString &,QWidget *,const QRect &

/*
void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
*/
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

/*
QString text()
*/
$method=|QString|text|

$extraMethods

#pragma ENDDUMP
