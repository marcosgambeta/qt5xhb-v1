$header

#include "hbclass.ch"

CLASS QDomCDATASection INHERIT QDomText

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

$prototype=QDomCDATASection ()
$constructor=|new1|

$prototype=QDomCDATASection ( const QDomCDATASection & x )
$constructor=|new2|const QDomCDATASection &

//[1]QDomCDATASection ()
//[2]QDomCDATASection ( const QDomCDATASection & x )

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
