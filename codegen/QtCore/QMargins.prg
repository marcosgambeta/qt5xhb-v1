$header

#include "hbclass.ch"

CLASS QMargins

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD left
   METHOD top
   METHOD right
   METHOD bottom
   METHOD setLeft
   METHOD setTop
   METHOD setRight
   METHOD setBottom

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
QMargins()
*/
$internalConstructor=|new1|

/*
QMargins(int left, int top, int right, int bottom)
*/
$internalConstructor=|new2|int,int,int,int

//[1]QMargins()
//[2]QMargins(int left, int top, int right, int bottom)

HB_FUNC_STATIC( QMARGINS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMargins_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMargins_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
int left() const
*/
$method=|int|left|

/*
int top() const
*/
$method=|int|top|

/*
int right() const
*/
$method=|int|right|

/*
int bottom() const
*/
$method=|int|bottom|

/*
void setLeft(int left)
*/
$method=|void|setLeft|int

/*
void setTop(int top)
*/
$method=|void|setTop|int

/*
void setRight(int right)
*/
$method=|void|setRight|int

/*
void setBottom(int bottom)
*/
$method=|void|setBottom|int

$extraMethods

#pragma ENDDUMP
