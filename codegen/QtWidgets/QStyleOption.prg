$header

#include "hbclass.ch"

CLASS QStyleOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD init
   METHOD initFrom

   METHOD version
   METHOD type
   METHOD state
   METHOD direction
   METHOD rect
   METHOD fontMetrics
   METHOD palette
   METHOD styleObject

   METHOD setVersion
   METHOD setType
   METHOD setState
   METHOD setDirection
   METHOD setRect
   METHOD setFontMetrics
   METHOD setPalette
   METHOD setStyleObject

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

$prototype=QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
$internalConstructor=|new1|int=QStyleOption::Version,int=QStyleOption::SO_Default

$prototype=QStyleOption(const QStyleOption &other)
$internalConstructor=|new2|const QStyleOption &

//[1]QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
//[2]QStyleOption(const QStyleOption &other)

HB_FUNC_STATIC( QSTYLEOPTION_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QStyleOption_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTION(1) )
  {
    QStyleOption_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QStyleOption()
$deleteMethod

$prototype=void init(const QWidget *w)
$method=|void|init|const QWidget *

$prototype=void initFrom(const QWidget *w)
$method=|void|initFrom|const QWidget *

$prototype=int version
$variableMethod=|int|version|
$variableMethod=|void|version,setVersion|int

$prototype=int type
$variableMethod=|int|type|
$variableMethod=|void|type,setType|int

$prototype=QStyle::State state
$variableMethod=|QStyle::State|state|
$variableMethod=|void|state,setState|QStyle::State

$prototype=Qt::LayoutDirection direction
$variableMethod=|Qt::LayoutDirection|direction|
$variableMethod=|void|direction,setDirection|Qt::LayoutDirection

$prototype=QRect rect
$variableMethod=|QRect|rect|
$variableMethod=|void|rect,setRect|QRect

$prototype=QFontMetrics fontMetrics
$variableMethod=|QFontMetrics|fontMetrics|
$variableMethod=|void|fontMetrics,setFontMetrics|QFontMetrics

$prototype=QPalette palette
$variableMethod=|QPalette|palette|
$variableMethod=|void|palette,setPalette|QPalette

$prototype=QObject *styleObject
$variableMethod=|QObject *|styleObject|
$variableMethod=|void|styleObject,setStyleObject|QObject *

$extraMethods

#pragma ENDDUMP
