$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
REQUEST QDOMELEMENT
REQUEST QDOMDOCUMENT
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCHARACTERDATA
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMENTITY
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMNOTATION
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
#endif

CLASS QDomNode

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD appendChild
   METHOD attributes
   METHOD childNodes
   METHOD clear
   METHOD cloneNode
   METHOD columnNumber
   METHOD firstChild
   METHOD firstChildElement
   METHOD hasAttributes
   METHOD hasChildNodes
   METHOD insertAfter
   METHOD insertBefore
   METHOD isAttr
   METHOD isCDATASection
   METHOD isCharacterData
   METHOD isComment
   METHOD isDocument
   METHOD isDocumentFragment
   METHOD isDocumentType
   METHOD isElement
   METHOD isEntity
   METHOD isEntityReference
   METHOD isNotation
   METHOD isNull
   METHOD isProcessingInstruction
   METHOD isSupported
   METHOD isText
   METHOD lastChild
   METHOD lastChildElement
   METHOD lineNumber
   METHOD localName
   METHOD namedItem
   METHOD namespaceURI
   METHOD nextSibling
   METHOD nextSiblingElement
   METHOD nodeName
   METHOD nodeType
   METHOD nodeValue
   METHOD normalize
   METHOD ownerDocument
   METHOD parentNode
   METHOD prefix
   METHOD previousSibling
   METHOD previousSiblingElement
   METHOD removeChild
   METHOD replaceChild
   METHOD save1
   METHOD save2
   METHOD save
   METHOD setNodeValue
   METHOD setPrefix
   METHOD toAttr
   METHOD toCDATASection
   METHOD toCharacterData
   METHOD toComment
   METHOD toDocument
   METHOD toDocumentFragment
   METHOD toDocumentType
   METHOD toElement
   METHOD toEntity
   METHOD toEntityReference
   METHOD toNotation
   METHOD toProcessingInstruction
   METHOD toText

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
QDomNode ()
*/
$constructor=|new1|

/*
QDomNode ( const QDomNode & n )
*/
$constructor=|new2|const QDomNode &

//[1]QDomNode ()
//[2]QDomNode ( const QDomNode & n )

HB_FUNC_STATIC( QDOMNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNODE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNODE(1) )
  {
    HB_FUNC_EXEC( QDOMNODE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomNode appendChild ( const QDomNode & newChild )
*/
$method=|QDomNode|appendChild|const QDomNode &

/*
QDomNamedNodeMap attributes () const
*/
$method=|QDomNamedNodeMap|attributes|

/*
QDomNodeList childNodes () const
*/
$method=|QDomNodeList|childNodes|

/*
void clear ()
*/
$method=|void|clear|

/*
QDomNode cloneNode ( bool deep = true ) const
*/
$method=|QDomNode|cloneNode|bool=true

/*
int columnNumber () const
*/
$method=|int|columnNumber|

/*
QDomNode firstChild () const
*/
$method=|QDomNode|firstChild|

/*
QDomElement firstChildElement ( const QString & tagName = QString() ) const
*/
$method=|QDomElement|firstChildElement|const QString &=QString()

/*
bool hasAttributes () const
*/
$method=|bool|hasAttributes|

/*
bool hasChildNodes () const
*/
$method=|bool|hasChildNodes|

/*
QDomNode insertAfter ( const QDomNode & newChild, const QDomNode & refChild )
*/
$method=|QDomNode|insertAfter|const QDomNode &,const QDomNode &

/*
QDomNode insertBefore ( const QDomNode & newChild, const QDomNode & refChild )
*/
$method=|QDomNode|insertBefore|const QDomNode &,const QDomNode &

/*
bool isAttr () const
*/
$method=|bool|isAttr|

/*
bool isCDATASection () const
*/
$method=|bool|isCDATASection|

/*
bool isCharacterData () const
*/
$method=|bool|isCharacterData|

/*
bool isComment () const
*/
$method=|bool|isComment|

/*
bool isDocument () const
*/
$method=|bool|isDocument|

/*
bool isDocumentFragment () const
*/
$method=|bool|isDocumentFragment|

/*
bool isDocumentType () const
*/
$method=|bool|isDocumentType|

/*
bool isElement () const
*/
$method=|bool|isElement|

/*
bool isEntity () const
*/
$method=|bool|isEntity|

/*
bool isEntityReference () const
*/
$method=|bool|isEntityReference|

/*
bool isNotation () const
*/
$method=|bool|isNotation|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isProcessingInstruction () const
*/
$method=|bool|isProcessingInstruction|

/*
bool isSupported ( const QString & feature, const QString & version ) const
*/
$method=|bool|isSupported|const QString &,const QString &

/*
bool isText () const
*/
$method=|bool|isText|

/*
QDomNode lastChild () const
*/
$method=|QDomNode|lastChild|

/*
QDomElement lastChildElement ( const QString & tagName = QString() ) const
*/
$method=|QDomElement|lastChildElement|const QString &=QString()

/*
int lineNumber () const
*/
$method=|int|lineNumber|

/*
QString localName () const
*/
$method=|QString|localName|

/*
QDomNode namedItem ( const QString & name ) const
*/
$method=|QDomNode|namedItem|const QString &

/*
QString namespaceURI () const
*/
$method=|QString|namespaceURI|

/*
QDomNode nextSibling () const
*/
$method=|QDomNode|nextSibling|

/*
QDomElement nextSiblingElement ( const QString & tagName = QString() ) const
*/
$method=|QDomElement|nextSiblingElement|const QString &=QString()

/*
QString nodeName () const
*/
$method=|QString|nodeName|

/*
NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

/*
QString nodeValue () const
*/
$method=|QString|nodeValue|

/*
void normalize ()
*/
$method=|void|normalize|

/*
QDomDocument ownerDocument () const
*/
$method=|QDomDocument|ownerDocument|

/*
QDomNode parentNode () const
*/
$method=|QDomNode|parentNode|

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
QDomNode previousSibling () const
*/
$method=|QDomNode|previousSibling|

/*
QDomElement previousSiblingElement ( const QString & tagName = QString() ) const
*/
$method=|QDomElement|previousSiblingElement|const QString &=QString()

/*
QDomNode removeChild ( const QDomNode & oldChild )
*/
$method=|QDomNode|removeChild|const QDomNode &

/*
QDomNode replaceChild ( const QDomNode & newChild, const QDomNode & oldChild )
*/
$method=|QDomNode|replaceChild|const QDomNode &,const QDomNode &

/*
void save ( QTextStream & str, int indent ) const
*/
$method=|void|save,save1|QTextStream &,int

/*
void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/
$method=|void|save|QTextStream &,int,QDomNode::EncodingPolicy

//[1]void save ( QTextStream & str, int indent ) const
//[2]void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const

HB_FUNC_STATIC( QDOMNODE_SAVE )
{
  if( ISNUMPAR(2) && ISQTEXTSTREAM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDOMNODE_SAVE1 );
  }
  else if( ISNUMPAR(3) && ISQTEXTSTREAM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDOMNODE_SAVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setNodeValue ( const QString & v )
*/
$method=|void|setNodeValue|const QString &

/*
void setPrefix ( const QString & pre )
*/
$method=|void|setPrefix|const QString &

/*
QDomAttr toAttr () const
*/
$method=|QDomAttr|toAttr|

/*
QDomCDATASection toCDATASection () const
*/
$method=|QDomCDATASection|toCDATASection|

/*
QDomCharacterData toCharacterData () const
*/
$method=|QDomCharacterData|toCharacterData|

/*
QDomComment toComment () const
*/
$method=|QDomComment|toComment|

/*
QDomDocument toDocument () const
*/
$method=|QDomDocument|toDocument|

/*
QDomDocumentFragment toDocumentFragment () const
*/
$method=|QDomDocumentFragment|toDocumentFragment|

/*
QDomDocumentType toDocumentType () const
*/
$method=|QDomDocumentType|toDocumentType|

/*
QDomElement toElement () const
*/
$method=|QDomElement|toElement|

/*
QDomEntity toEntity () const
*/
$method=|QDomEntity|toEntity|

/*
QDomEntityReference toEntityReference () const
*/
$method=|QDomEntityReference|toEntityReference|

/*
QDomNotation toNotation () const
*/
$method=|QDomNotation|toNotation|

/*
QDomProcessingInstruction toProcessingInstruction () const
*/
$method=|QDomProcessingInstruction|toProcessingInstruction|

/*
QDomText toText () const
*/
$method=|QDomText|toText|

$extraMethods

#pragma ENDDUMP
