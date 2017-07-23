$header

#include "hbclass.ch"

CLASS QPoint

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD manhattanLength
   METHOD setX
   METHOD setY
   METHOD x
   METHOD y

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
QPoint()
*/
$internalConstructor=|new1|

/*
QPoint(int xpos, int ypos)
*/
$internalConstructor=|new2|int,int

//[1]QPoint()
//[2]QPoint(int xpos, int ypos)

HB_FUNC_STATIC( QPOINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPoint_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPoint_new2();
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
int manhattanLength() const
*/
$method=|int|manhattanLength|

/*
void setX(int x)
*/
$method=|void|setX|int

/*
void setY(int y)
*/
$method=|void|setY|int

/*
int x() const
*/
$method=|int|x|

/*
int y() const
*/
$method=|int|y|

$extraMethods

#pragma ENDDUMP
