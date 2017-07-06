$header

#include "hbclass.ch"

CLASS QHelpSearchQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

/*
QHelpSearchQuery ()
*/
HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW1 )
{
  QHelpSearchQuery * o = new QHelpSearchQuery ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QHelpSearchQuery ( FieldName field, const QStringList & wordList )
*/
HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW2 )
{
  QHelpSearchQuery * o = new QHelpSearchQuery ( (QHelpSearchQuery::FieldName) hb_parni(1), PQSTRINGLIST(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QHelpSearchQuery ()
//[2]QHelpSearchQuery ( FieldName field, const QStringList & wordList )

HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHELPSEARCHQUERY_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QHELPSEARCHQUERY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
