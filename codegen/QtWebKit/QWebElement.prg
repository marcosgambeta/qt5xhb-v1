$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QRECT
REQUEST QWEBFRAME
#endif

CLASS QWebElement

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addClass
   METHOD appendInside
   METHOD appendOutside
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNames
   METHOD classes
   METHOD clone
   METHOD document
   METHOD encloseContentsWith
   METHOD encloseWith
   METHOD evaluateJavaScript
   METHOD findAll
   METHOD findFirst
   METHOD firstChild
   METHOD geometry
   METHOD hasAttribute
   METHOD hasAttributeNS
   METHOD hasAttributes
   METHOD hasClass
   METHOD hasFocus
   METHOD isNull
   METHOD lastChild
   METHOD localName
   METHOD namespaceUri
   METHOD nextSibling
   METHOD parent
   METHOD prefix
   METHOD prependInside
   METHOD prependOutside
   METHOD previousSibling
   METHOD removeAllChildren
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeClass
   METHOD removeFromDocument
   METHOD render
   METHOD replace
   METHOD setAttribute
   METHOD setAttributeNS
   METHOD setFocus
   METHOD setInnerXml
   METHOD setOuterXml
   METHOD setPlainText
   METHOD setStyleProperty
   METHOD styleProperty
   METHOD tagName
   METHOD takeFromDocument
   METHOD toInnerXml
   METHOD toOuterXml
   METHOD toPlainText
   METHOD toggleClass
   METHOD webFrame

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
QWebElement ()
*/
$internalConstructor=|new1|

/*
QWebElement ( const QWebElement & other )
*/
$internalConstructor=|new2|const QWebElement &

//[1]QWebElement ()
//[2]QWebElement ( const QWebElement & other )

HB_FUNC_STATIC( QWEBELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebElement_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addClass ( const QString & name )
*/
$method=|void|addClass|const QString &

/*
void appendInside ( const QString & markup )
*/
$internalMethod=|void|appendInside,appendInside1|const QString &

/*
void appendInside ( const QWebElement & element )
*/
$internalMethod=|void|appendInside,appendInside2|const QWebElement &

//[1]void appendInside ( const QString & markup )
//[2]void appendInside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_appendInside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_appendInside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendOutside ( const QString & markup )
*/
$internalMethod=|void|appendOutside,appendOutside1|const QString &

/*
void appendOutside ( const QWebElement & element )
*/
$internalMethod=|void|appendOutside,appendOutside2|const QWebElement &

//[1]void appendOutside ( const QString & markup )
//[2]void appendOutside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_appendOutside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_appendOutside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString attribute ( const QString & name, const QString & defaultValue = QString() ) const
*/
$method=|QString|attribute|const QString &,const QString &=QString()

/*
QString attributeNS ( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const
*/
$method=|QString|attributeNS|const QString &,const QString &,const QString &=QString()

/*
QStringList attributeNames ( const QString & namespaceUri = QString() ) const
*/
$method=|QStringList|attributeNames|const QString &=QString()

/*
QStringList classes () const
*/
$method=|QStringList|classes|

/*
QWebElement clone () const
*/
$method=|QWebElement|clone|

/*
QWebElement document () const
*/
$method=|QWebElement|document|

/*
void encloseContentsWith ( const QWebElement & element )
*/
$internalMethod=|void|encloseContentsWith,encloseContentsWith1|const QWebElement &

/*
void encloseContentsWith ( const QString & markup )
*/
$internalMethod=|void|encloseContentsWith,encloseContentsWith2|const QString &

//[1]void encloseContentsWith ( const QWebElement & element )
//[2]void encloseContentsWith ( const QString & markup )

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH )
{
  if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_encloseContentsWith1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_encloseContentsWith2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void encloseWith ( const QString & markup )
*/
$internalMethod=|void|encloseWith,encloseWith1|const QString &

/*
void encloseWith ( const QWebElement & element )
*/
$internalMethod=|void|encloseWith,encloseWith2|const QWebElement &

//[1]void encloseWith ( const QString & markup )
//[2]void encloseWith ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_encloseWith1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_encloseWith2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant evaluateJavaScript ( const QString & scriptSource )
*/
$method=|QVariant|evaluateJavaScript|const QString &

/*
QWebElementCollection findAll ( const QString & selectorQuery ) const
*/
$method=|QWebElementCollection|findAll|const QString &

/*
QWebElement findFirst ( const QString & selectorQuery ) const
*/
$method=|QWebElement|findFirst|const QString &

/*
QWebElement firstChild () const
*/
$method=|QWebElement|firstChild|

/*
QRect geometry () const
*/
$method=|QRect|geometry|

/*
bool hasAttribute ( const QString & name ) const
*/
$method=|bool|hasAttribute|const QString &

/*
bool hasAttributeNS ( const QString & namespaceUri, const QString & name ) const
*/
$method=|bool|hasAttributeNS|const QString &,const QString &

/*
bool hasAttributes () const
*/
$method=|bool|hasAttributes|

/*
bool hasClass ( const QString & name ) const
*/
$method=|bool|hasClass|const QString &

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QWebElement lastChild () const
*/
$method=|QWebElement|lastChild|

/*
QString localName () const
*/
$method=|QString|localName|

/*
QString namespaceUri () const
*/
$method=|QString|namespaceUri|

/*
QWebElement nextSibling () const
*/
$method=|QWebElement|nextSibling|

/*
QWebElement parent () const
*/
$method=|QWebElement|parent|

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
void prependInside ( const QString & markup )
*/
$internalMethod=|void|prependInside,prependInside1|const QString &

/*
void prependInside ( const QWebElement & element )
*/
$internalMethod=|void|prependInside,prependInside2|const QWebElement &

//[1]void prependInside ( const QString & markup )
//[2]void prependInside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_prependInside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_prependInside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void prependOutside ( const QString & markup )
*/
$internalMethod=|void|prependOutside,prependOutside1|const QString &

/*
void prependOutside ( const QWebElement & element )
*/
$internalMethod=|void|prependOutside,prependOutside2|const QWebElement &

//[1]void prependOutside ( const QString & markup )
//[2]void prependOutside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_prependOutside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_prependOutside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebElement previousSibling () const
*/
$method=|QWebElement|previousSibling|

/*
void removeAllChildren ()
*/
$method=|void|removeAllChildren|

/*
void removeAttribute ( const QString & name )
*/
$method=|void|removeAttribute|const QString &

/*
void removeAttributeNS ( const QString & namespaceUri, const QString & name )
*/
$method=|void|removeAttributeNS|const QString &,const QString &

/*
void removeClass ( const QString & name )
*/
$method=|void|removeClass|const QString &

/*
void removeFromDocument ()
*/
$method=|void|removeFromDocument|

/*
void render ( QPainter * painter )
*/
$internalMethod=|void|render,render1|QPainter *

/*
void render ( QPainter * painter, const QRect & clip )
*/
$internalMethod=|void|render,render2|QPainter *,const QRect &

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRect & clip )

HB_FUNC_STATIC( QWEBELEMENT_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QWebElement_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECT(2) )
  {
    QWebElement_render2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void replace ( const QString & markup )
*/
$internalMethod=|void|replace,replace1|const QString &

/*
void replace ( const QWebElement & element )
*/
$internalMethod=|void|replace,replace2|const QWebElement &

//[1]void replace ( const QString & markup )
//[2]void replace ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_REPLACE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_replace1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_replace2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute ( const QString & name, const QString & value )
*/
$method=|void|setAttribute|const QString &,const QString &

/*
void setAttributeNS ( const QString & namespaceUri, const QString & name, const QString & value )
*/
$method=|void|setAttributeNS|const QString &,const QString &,const QString &

/*
void setFocus ()
*/
$method=|void|setFocus|

/*
void setInnerXml ( const QString & markup )
*/
$method=|void|setInnerXml|const QString &

/*
void setOuterXml ( const QString & markup )
*/
$method=|void|setOuterXml|const QString &

/*
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void setStyleProperty ( const QString & name, const QString & value )
*/
$method=|void|setStyleProperty|const QString &,const QString &

/*
QString styleProperty ( const QString & name, StyleResolveStrategy strategy ) const
*/
$method=|QString|styleProperty|const QString &,QWebElement::StyleResolveStrategy

/*
QString tagName () const
*/
$method=|QString|tagName|

/*
QWebElement & takeFromDocument ()
*/
$method=|QWebElement &|takeFromDocument|

/*
QString toInnerXml () const
*/
$method=|QString|toInnerXml|

/*
QString toOuterXml () const
*/
$method=|QString|toOuterXml|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
void toggleClass ( const QString & name )
*/
$method=|void|toggleClass|const QString &

/*
QWebFrame * webFrame () const
*/
$method=|QWebFrame *|webFrame|

$extraMethods

#pragma ENDDUMP
