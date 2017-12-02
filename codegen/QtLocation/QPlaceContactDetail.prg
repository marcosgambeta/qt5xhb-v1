$header

#include "hbclass.ch"

CLASS QPlaceContactDetail

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD value
   METHOD setValue
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceContactDetail()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceContactDetail(const QPlaceContactDetail &other)
$internalConstructor=5,4,0|new2|const QPlaceContactDetail &

//[1]QPlaceContactDetail()
//[2]QPlaceContactDetail(const QPlaceContactDetail &other)

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContactDetail_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTACTDETAIL(1) )
  {
    QPlaceContactDetail_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QString label() const
$method=5,4,0|QString|label|

$prototype=void setLabel(const QString &label)
$method=5,4,0|void|setLabel|const QString &

$prototype=QString value() const
$method=5,4,0|QString|value|

$prototype=void setValue(const QString &value)
$method=5,4,0|void|setValue|const QString &

$prototype=void clear()
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
