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

$prototype=QSizePolicy()
$internalConstructor=|new1|

$prototype=QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)
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

$prototype=ControlType controlType() const
$method=|QSizePolicy::ControlType|controlType|

$prototype=Qt::Orientations expandingDirections() const
$method=|Qt::Orientations|expandingDirections|

$prototype=bool hasHeightForWidth() const
$method=|bool|hasHeightForWidth|

$prototype=bool hasWidthForHeight() const
$method=|bool|hasWidthForHeight|

$prototype=Policy horizontalPolicy() const
$method=|QSizePolicy::Policy|horizontalPolicy|

$prototype=int horizontalStretch() const
$method=|int|horizontalStretch|

$prototype=void setControlType(ControlType type)
$method=|void|setControlType|QSizePolicy::ControlType

$prototype=void setHeightForWidth(bool dependent)
$method=|void|setHeightForWidth|bool

$prototype=void setHorizontalPolicy(Policy policy)
$method=|void|setHorizontalPolicy|QSizePolicy::Policy

$prototype=void setHorizontalStretch(int stretchFactor)
$method=|void|setHorizontalStretch|int

$prototype=void setVerticalPolicy(Policy policy)
$method=|void|setVerticalPolicy|QSizePolicy::Policy

$prototype=void setVerticalStretch(int stretchFactor)
$method=|void|setVerticalStretch|int

$prototype=void setWidthForHeight(bool dependent)
$method=|void|setWidthForHeight|bool

$prototype=void transpose()
$method=|void|transpose|

$prototype=Policy verticalPolicy() const
$method=|QSizePolicy::Policy|verticalPolicy|

$prototype=int verticalStretch() const
$method=|int|verticalStretch|

$extraMethods

#pragma ENDDUMP
