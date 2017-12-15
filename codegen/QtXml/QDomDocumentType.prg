$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNAMEDNODEMAP
#endif

CLASS QDomDocumentType INHERIT QDomNode

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD entities
   METHOD internalSubset
   METHOD name
   METHOD nodeType
   METHOD notations
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomDocumentType ()
$constructor=|new1|

$prototype=QDomDocumentType ( const QDomDocumentType & n )
$constructor=|new2|const QDomDocumentType &

//[1]QDomDocumentType ()
//[2]QDomDocumentType ( const QDomDocumentType & n )

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTTYPE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTTYPE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNamedNodeMap entities () const
$method=|QDomNamedNodeMap|entities|

$prototype=QString internalSubset () const
$method=|QString|internalSubset|

$prototype=QString name () const
$method=|QString|name|

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomNamedNodeMap notations () const
$method=|QDomNamedNodeMap|notations|

$prototype=QString publicId () const
$method=|QString|publicId|

$prototype=QString systemId () const
$method=|QString|systemId|

#pragma ENDDUMP
