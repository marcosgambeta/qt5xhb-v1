$header

#include "hbclass.ch"

CLASS QStyleOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD init
   METHOD initFrom

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
QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
*/
$internalConstructor=|new1|int=QStyleOption::Version,int=QStyleOption::SO_Default

/*
QStyleOption(const QStyleOption &other)
*/
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

$deleteMethod

/*
void init(const QWidget *w)
*/
$method=|void|init|const QWidget *

/*
void initFrom(const QWidget *w)
*/
$method=|void|initFrom|const QWidget *

$extraMethods

#pragma ENDDUMP
