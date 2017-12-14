$header

#include "hbclass.ch"

CLASS QScriptString

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD toString

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

$prototype=QScriptString()
$internalConstructor=|new1|

$prototype=QScriptString(const QScriptString & other)
$internalConstructor=|new2|const QScriptString &

//[1]QScriptString()
//[2]QScriptString(const QScriptString & other)

HB_FUNC_STATIC( QSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTSTRING(1) )
  {
    QScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QString toString() const
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
