%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKitWidgets/QWebFrame>

$prototype=QWebElement ()
$internalConstructor=|new1|

$prototype=QWebElement ( const QWebElement & other )
$internalConstructor=|new2|const QWebElement &

/*
[1]QWebElement ()
[2]QWebElement ( const QWebElement & other )
*/

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

$prototype=void addClass ( const QString & name )
$method=|void|addClass|const QString &

$prototype=void appendInside ( const QString & markup )
$internalMethod=|void|appendInside,appendInside1|const QString &

$prototype=void appendInside ( const QWebElement & element )
$internalMethod=|void|appendInside,appendInside2|const QWebElement &

/*
[1]void appendInside ( const QString & markup )
[2]void appendInside ( const QWebElement & element )
*/

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
$addMethod=appendInside

$prototype=void appendOutside ( const QString & markup )
$internalMethod=|void|appendOutside,appendOutside1|const QString &

$prototype=void appendOutside ( const QWebElement & element )
$internalMethod=|void|appendOutside,appendOutside2|const QWebElement &

/*
[1]void appendOutside ( const QString & markup )
[2]void appendOutside ( const QWebElement & element )
*/

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
$addMethod=appendOutside

$prototype=QString attribute ( const QString & name, const QString & defaultValue = QString() ) const
$method=|QString|attribute|const QString &,const QString &=QString()

$prototype=QString attributeNS ( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const
$method=|QString|attributeNS|const QString &,const QString &,const QString &=QString()

$prototype=QStringList attributeNames ( const QString & namespaceUri = QString() ) const
$method=|QStringList|attributeNames|const QString &=QString()

$prototype=QStringList classes () const
$method=|QStringList|classes|

$prototype=QWebElement clone () const
$method=|QWebElement|clone|

$prototype=QWebElement document () const
$method=|QWebElement|document|

$prototype=void encloseContentsWith ( const QWebElement & element )
$internalMethod=|void|encloseContentsWith,encloseContentsWith1|const QWebElement &

$prototype=void encloseContentsWith ( const QString & markup )
$internalMethod=|void|encloseContentsWith,encloseContentsWith2|const QString &

/*
[1]void encloseContentsWith ( const QWebElement & element )
[2]void encloseContentsWith ( const QString & markup )
*/

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
$addMethod=encloseContentsWith

$prototype=void encloseWith ( const QString & markup )
$internalMethod=|void|encloseWith,encloseWith1|const QString &

$prototype=void encloseWith ( const QWebElement & element )
$internalMethod=|void|encloseWith,encloseWith2|const QWebElement &

/*
[1]void encloseWith ( const QString & markup )
[2]void encloseWith ( const QWebElement & element )
*/

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
$addMethod=encloseWith

$prototype=QVariant evaluateJavaScript ( const QString & scriptSource )
$method=|QVariant|evaluateJavaScript|const QString &

$prototype=QWebElementCollection findAll ( const QString & selectorQuery ) const
$method=|QWebElementCollection|findAll|const QString &

$prototype=QWebElement findFirst ( const QString & selectorQuery ) const
$method=|QWebElement|findFirst|const QString &

$prototype=QWebElement firstChild () const
$method=|QWebElement|firstChild|

$prototype=QRect geometry () const
$method=|QRect|geometry|

$prototype=bool hasAttribute ( const QString & name ) const
$method=|bool|hasAttribute|const QString &

$prototype=bool hasAttributeNS ( const QString & namespaceUri, const QString & name ) const
$method=|bool|hasAttributeNS|const QString &,const QString &

$prototype=bool hasAttributes () const
$method=|bool|hasAttributes|

$prototype=bool hasClass ( const QString & name ) const
$method=|bool|hasClass|const QString &

$prototype=bool hasFocus () const
$method=|bool|hasFocus|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QWebElement lastChild () const
$method=|QWebElement|lastChild|

$prototype=QString localName () const
$method=|QString|localName|

$prototype=QString namespaceUri () const
$method=|QString|namespaceUri|

$prototype=QWebElement nextSibling () const
$method=|QWebElement|nextSibling|

$prototype=QWebElement parent () const
$method=|QWebElement|parent|

$prototype=QString prefix () const
$method=|QString|prefix|

$prototype=void prependInside ( const QString & markup )
$internalMethod=|void|prependInside,prependInside1|const QString &

$prototype=void prependInside ( const QWebElement & element )
$internalMethod=|void|prependInside,prependInside2|const QWebElement &

/*
[1]void prependInside ( const QString & markup )
[2]void prependInside ( const QWebElement & element )
*/

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
$addMethod=prependInside

$prototype=void prependOutside ( const QString & markup )
$internalMethod=|void|prependOutside,prependOutside1|const QString &

$prototype=void prependOutside ( const QWebElement & element )
$internalMethod=|void|prependOutside,prependOutside2|const QWebElement &

/*
[1]void prependOutside ( const QString & markup )
[2]void prependOutside ( const QWebElement & element )
*/

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
$addMethod=prependOutside

$prototype=QWebElement previousSibling () const
$method=|QWebElement|previousSibling|

$prototype=void removeAllChildren ()
$method=|void|removeAllChildren|

$prototype=void removeAttribute ( const QString & name )
$method=|void|removeAttribute|const QString &

$prototype=void removeAttributeNS ( const QString & namespaceUri, const QString & name )
$method=|void|removeAttributeNS|const QString &,const QString &

$prototype=void removeClass ( const QString & name )
$method=|void|removeClass|const QString &

$prototype=void removeFromDocument ()
$method=|void|removeFromDocument|

$prototype=void render ( QPainter * painter )
$internalMethod=|void|render,render1|QPainter *

$prototype=void render ( QPainter * painter, const QRect & clip )
$internalMethod=|void|render,render2|QPainter *,const QRect &

/*
[1]void render ( QPainter * painter )
[2]void render ( QPainter * painter, const QRect & clip )
*/

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
$addMethod=render

$prototype=void replace ( const QString & markup )
$internalMethod=|void|replace,replace1|const QString &

$prototype=void replace ( const QWebElement & element )
$internalMethod=|void|replace,replace2|const QWebElement &

/*
[1]void replace ( const QString & markup )
[2]void replace ( const QWebElement & element )
*/

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
$addMethod=replace

$prototype=void setAttribute ( const QString & name, const QString & value )
$method=|void|setAttribute|const QString &,const QString &

$prototype=void setAttributeNS ( const QString & namespaceUri, const QString & name, const QString & value )
$method=|void|setAttributeNS|const QString &,const QString &,const QString &

$prototype=void setFocus ()
$method=|void|setFocus|

$prototype=void setInnerXml ( const QString & markup )
$method=|void|setInnerXml|const QString &

$prototype=void setOuterXml ( const QString & markup )
$method=|void|setOuterXml|const QString &

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void setStyleProperty ( const QString & name, const QString & value )
$method=|void|setStyleProperty|const QString &,const QString &

$prototype=QString styleProperty ( const QString & name, StyleResolveStrategy strategy ) const
$method=|QString|styleProperty|const QString &,QWebElement::StyleResolveStrategy

$prototype=QString tagName () const
$method=|QString|tagName|

$prototype=QWebElement & takeFromDocument ()
$method=|QWebElement &|takeFromDocument|

$prototype=QString toInnerXml () const
$method=|QString|toInnerXml|

$prototype=QString toOuterXml () const
$method=|QString|toOuterXml|

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=void toggleClass ( const QString & name )
$method=|void|toggleClass|const QString &

$prototype=QWebFrame * webFrame () const
$method=|QWebFrame *|webFrame|

$extraMethods

#pragma ENDDUMP
