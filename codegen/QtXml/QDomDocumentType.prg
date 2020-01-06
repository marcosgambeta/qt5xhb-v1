%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomDocumentType ()
$internalConstructor=|new1|

$prototype=QDomDocumentType ( const QDomDocumentType & n )
$internalConstructor=|new2|const QDomDocumentType &

//[1]QDomDocumentType ()
//[2]QDomDocumentType ( const QDomDocumentType & n )

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentType_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocumentType_new2();
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
