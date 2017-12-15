$header

#include "hbclass.ch"

CLASS QDomText INHERIT QDomCharacterData

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType
   METHOD splitText

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomText ()
$constructor=|new1|

$prototype=QDomText ( const QDomText & x )
$constructor=|new2|const QDomText &

//[1]QDomText ()
//[2]QDomText ( const QDomText & x )

HB_FUNC_STATIC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomText splitText ( int offset )
$method=|QDomText|splitText|int

#pragma ENDDUMP
