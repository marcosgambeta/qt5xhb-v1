$header

#include "hbclass.ch"

CLASS QHelpSearchQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

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

$prototype=QHelpSearchQuery ()
$internalConstructor=|new1|

$prototype=QHelpSearchQuery ( FieldName field, const QStringList & wordList )
$internalConstructor=|new2|QHelpSearchQuery::FieldName,const QStringList &

//[1]QHelpSearchQuery ()
//[2]QHelpSearchQuery ( FieldName field, const QStringList & wordList )

HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHelpSearchQuery_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QHelpSearchQuery_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
