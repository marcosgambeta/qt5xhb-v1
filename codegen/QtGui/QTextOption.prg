$header

#include "hbclass.ch"

CLASS QTextOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setAlignment
   METHOD alignment
   METHOD setTextDirection
   METHOD textDirection
   METHOD setWrapMode
   METHOD wrapMode
   METHOD setFlags
   METHOD flags
   METHOD setTabStop
   METHOD tabStop
   METHOD setTabArray
   METHOD tabArray
   METHOD setUseDesignMetrics
   METHOD useDesignMetrics

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

#include <QList>

/*
QTextOption()
*/
$internalConstructor=|new1|

/*
QTextOption(Qt::Alignment alignment)
*/
$internalConstructor=|new2|Qt::Alignment

/*
QTextOption(const QTextOption &o)
*/
$internalConstructor=|new3|const QTextOption &

//[1]QTextOption()
//[2]QTextOption(Qt::Alignment alignment)
//[3]QTextOption(const QTextOption &o)

HB_FUNC_STATIC( QTEXTOPTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextOption_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextOption_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
  {
    QTextOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setAlignment(Qt::Alignment alignment)
*/
$method=|void|setAlignment|Qt::Alignment

/*
Qt::Alignment alignment() const
*/
$method=|Qt::Alignment|alignment|

/*
void setTextDirection(Qt::LayoutDirection aDirection)
*/
$method=|void|setTextDirection|Qt::LayoutDirection

/*
Qt::LayoutDirection textDirection() const
*/
$method=|Qt::LayoutDirection|textDirection|

/*
void setWrapMode(WrapMode wrap)
*/
$method=|void|setWrapMode|QTextOption::WrapMode

/*
WrapMode wrapMode() const
*/
$method=|QTextOption::WrapMode|wrapMode|

/*
void setFlags(Flags flags)
*/
$method=|void|setFlags|QTextOption::Flags

/*
Flags flags() const
*/
$method=|QTextOption::Flags|flags|

/*
void setTabStop(qreal tabStop)
*/
$method=|void|setTabStop|qreal

/*
qreal tabStop() const
*/
$method=|qreal|tabStop|

/*
void setTabArray(const QList<qreal> &tabStops)
*/
$method=|void|setTabArray|const QList<qreal> &

/*
QList<qreal> tabArray() const
*/
$method=|QList<qreal>|tabArray|

/*
void setUseDesignMetrics(bool b)
*/
$method=|void|setUseDesignMetrics|bool

/*
bool useDesignMetrics() const
*/
$method=|bool|useDesignMetrics|

$extraMethods

#pragma ENDDUMP
