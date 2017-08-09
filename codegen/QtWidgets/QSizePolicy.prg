$header

#include "hbclass.ch"

CLASS QSizePolicy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD controlType
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD hasWidthForHeight
   METHOD horizontalPolicy
   METHOD horizontalStretch
   METHOD setControlType
   METHOD setHeightForWidth
   METHOD setHorizontalPolicy
   METHOD setHorizontalStretch
   METHOD setVerticalPolicy
   METHOD setVerticalStretch
   METHOD setWidthForHeight
   METHOD transpose
   METHOD verticalPolicy
   METHOD verticalStretch

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
QSizePolicy()
*/
$internalConstructor=|new1|

/*
QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)
*/
$internalConstructor=|new2|QSizePolicy::Policy,QSizePolicy::Policy,QSizePolicy::ControlType=QSizePolicy::DefaultType

//[1]QSizePolicy()
//[2]QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)

HB_FUNC_STATIC( QSIZEPOLICY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSizePolicy_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QSizePolicy_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
ControlType controlType() const
*/
$method=|QSizePolicy::ControlType|controlType|

/*
Qt::Orientations expandingDirections() const
*/
$method=|Qt::Orientations|expandingDirections|

/*
bool hasHeightForWidth() const
*/
$method=|bool|hasHeightForWidth|

/*
bool hasWidthForHeight() const
*/
$method=|bool|hasWidthForHeight|

/*
Policy horizontalPolicy() const
*/
$method=|QSizePolicy::Policy|horizontalPolicy|

/*
int horizontalStretch() const
*/
$method=|int|horizontalStretch|

/*
void setControlType(ControlType type)
*/
$method=|void|setControlType|QSizePolicy::ControlType

/*
void setHeightForWidth(bool dependent)
*/
$method=|void|setHeightForWidth|bool

/*
void setHorizontalPolicy(Policy policy)
*/
$method=|void|setHorizontalPolicy|QSizePolicy::Policy

/*
void setHorizontalStretch(int stretchFactor)
*/
$method=|void|setHorizontalStretch|int

/*
void setVerticalPolicy(Policy policy)
*/
$method=|void|setVerticalPolicy|QSizePolicy::Policy

/*
void setVerticalStretch(int stretchFactor)
*/
$method=|void|setVerticalStretch|int

/*
void setWidthForHeight(bool dependent)
*/
$method=|void|setWidthForHeight|bool

/*
void transpose()
*/
$method=|void|transpose|

/*
Policy verticalPolicy() const
*/
$method=|QSizePolicy::Policy|verticalPolicy|

/*
int verticalStretch() const
*/
$method=|int|verticalStretch|

$extraMethods

#pragma ENDDUMP
