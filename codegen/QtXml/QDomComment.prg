$header

#include "hbclass.ch"

CLASS QDomComment INHERIT QDomCharacterData

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomComment ()
$constructor=|new1|

$prototype=QDomComment ( const QDomComment & x )
$constructor=|new2|const QDomComment &

//[1]QDomComment ()
//[2]QDomComment ( const QDomComment & x )

HB_FUNC_STATIC( QDOMCOMMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCOMMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCOMMENT(1) )
  {
    HB_FUNC_EXEC( QDOMCOMMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode::NodeType nodeType () cons
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
