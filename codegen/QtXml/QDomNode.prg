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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomNode ()
$internalConstructor=|new1|

$prototype=QDomNode ( const QDomNode & n )
$internalConstructor=|new2|const QDomNode &

/*
[1]QDomNode ()
[2]QDomNode ( const QDomNode & n )
*/

HB_FUNC_STATIC( QDOMNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNode_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNODE(1) )
  {
    QDomNode_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode appendChild ( const QDomNode & newChild )
$method=|QDomNode|appendChild|const QDomNode &

$prototype=QDomNamedNodeMap attributes () const
$method=|QDomNamedNodeMap|attributes|

$prototype=QDomNodeList childNodes () const
$method=|QDomNodeList|childNodes|

$prototype=void clear ()
$method=|void|clear|

$prototype=QDomNode cloneNode ( bool deep = true ) const
$method=|QDomNode|cloneNode|bool=true

$prototype=int columnNumber () const
$method=|int|columnNumber|

$prototype=QDomNode firstChild () const
$method=|QDomNode|firstChild|

$prototype=QDomElement firstChildElement ( const QString & tagName = QString() ) const
$method=|QDomElement|firstChildElement|const QString &=QString()

$prototype=bool hasAttributes () const
$method=|bool|hasAttributes|

$prototype=bool hasChildNodes () const
$method=|bool|hasChildNodes|

$prototype=QDomNode insertAfter ( const QDomNode & newChild, const QDomNode & refChild )
$method=|QDomNode|insertAfter|const QDomNode &,const QDomNode &

$prototype=QDomNode insertBefore ( const QDomNode & newChild, const QDomNode & refChild )
$method=|QDomNode|insertBefore|const QDomNode &,const QDomNode &

$prototype=bool isAttr () const
$method=|bool|isAttr|

$prototype=bool isCDATASection () const
$method=|bool|isCDATASection|

$prototype=bool isCharacterData () const
$method=|bool|isCharacterData|

$prototype=bool isComment () const
$method=|bool|isComment|

$prototype=bool isDocument () const
$method=|bool|isDocument|

$prototype=bool isDocumentFragment () const
$method=|bool|isDocumentFragment|

$prototype=bool isDocumentType () const
$method=|bool|isDocumentType|

$prototype=bool isElement () const
$method=|bool|isElement|

$prototype=bool isEntity () const
$method=|bool|isEntity|

$prototype=bool isEntityReference () const
$method=|bool|isEntityReference|

$prototype=bool isNotation () const
$method=|bool|isNotation|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isProcessingInstruction () const
$method=|bool|isProcessingInstruction|

$prototype=bool isSupported ( const QString & feature, const QString & version ) const
$method=|bool|isSupported|const QString &,const QString &

$prototype=bool isText () const
$method=|bool|isText|

$prototype=QDomNode lastChild () const
$method=|QDomNode|lastChild|

$prototype=QDomElement lastChildElement ( const QString & tagName = QString() ) const
$method=|QDomElement|lastChildElement|const QString &=QString()

$prototype=int lineNumber () const
$method=|int|lineNumber|

$prototype=QString localName () const
$method=|QString|localName|

$prototype=QDomNode namedItem ( const QString & name ) const
$method=|QDomNode|namedItem|const QString &

$prototype=QString namespaceURI () const
$method=|QString|namespaceURI|

$prototype=QDomNode nextSibling () const
$method=|QDomNode|nextSibling|

$prototype=QDomElement nextSiblingElement ( const QString & tagName = QString() ) const
$method=|QDomElement|nextSiblingElement|const QString &=QString()

$prototype=QString nodeName () const
$method=|QString|nodeName|

$prototype=NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QString nodeValue () const
$method=|QString|nodeValue|

$prototype=void normalize ()
$method=|void|normalize|

$prototype=QDomDocument ownerDocument () const
$method=|QDomDocument|ownerDocument|

$prototype=QDomNode parentNode () const
$method=|QDomNode|parentNode|

$prototype=QString prefix () const
$method=|QString|prefix|

$prototype=QDomNode previousSibling () const
$method=|QDomNode|previousSibling|

$prototype=QDomElement previousSiblingElement ( const QString & tagName = QString() ) const
$method=|QDomElement|previousSiblingElement|const QString &=QString()

$prototype=QDomNode removeChild ( const QDomNode & oldChild )
$method=|QDomNode|removeChild|const QDomNode &

$prototype=QDomNode replaceChild ( const QDomNode & newChild, const QDomNode & oldChild )
$method=|QDomNode|replaceChild|const QDomNode &,const QDomNode &

$prototype=void save ( QTextStream & str, int indent ) const
$internalMethod=|void|save,save1|QTextStream &,int

$prototype=void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
$internalMethod=|void|save,save2|QTextStream &,int,QDomNode::EncodingPolicy

/*
[1]void save ( QTextStream & str, int indent ) const
[2]void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/

HB_FUNC_STATIC( QDOMNODE_SAVE )
{
  if( ISNUMPAR(2) && ISQTEXTSTREAM(1) && ISNUM(2) )
  {
    QDomNode_save1();
  }
  else if( ISNUMPAR(3) && ISQTEXTSTREAM(1) && ISNUM(2) && ISNUM(3) )
  {
    QDomNode_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=save

$prototype=void setNodeValue ( const QString & v )
$method=|void|setNodeValue|const QString &

$prototype=void setPrefix ( const QString & pre )
$method=|void|setPrefix|const QString &

$prototype=QDomAttr toAttr () const
$method=|QDomAttr|toAttr|

$prototype=QDomCDATASection toCDATASection () const
$method=|QDomCDATASection|toCDATASection|

$prototype=QDomCharacterData toCharacterData () const
$method=|QDomCharacterData|toCharacterData|

$prototype=QDomComment toComment () const
$method=|QDomComment|toComment|

$prototype=QDomDocument toDocument () const
$method=|QDomDocument|toDocument|

$prototype=QDomDocumentFragment toDocumentFragment () const
$method=|QDomDocumentFragment|toDocumentFragment|

$prototype=QDomDocumentType toDocumentType () const
$method=|QDomDocumentType|toDocumentType|

$prototype=QDomElement toElement () const
$method=|QDomElement|toElement|

$prototype=QDomEntity toEntity () const
$method=|QDomEntity|toEntity|

$prototype=QDomEntityReference toEntityReference () const
$method=|QDomEntityReference|toEntityReference|

$prototype=QDomNotation toNotation () const
$method=|QDomNotation|toNotation|

$prototype=QDomProcessingInstruction toProcessingInstruction () const
$method=|QDomProcessingInstruction|toProcessingInstruction|

$prototype=QDomText toText () const
$method=|QDomText|toText|

$extraMethods

#pragma ENDDUMP
