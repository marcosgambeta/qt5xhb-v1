%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QXMLDTDHANDLER
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER
#endif

$beginClass

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QXmlDTDHandler * DTDHandler () const = 0
$virtualMethod=|QXmlDTDHandler *|DTDHandler|

$prototype=virtual QXmlContentHandler * contentHandler () const = 0
$virtualMethod=|QXmlContentHandler *|contentHandler|

$prototype=virtual QXmlDeclHandler * declHandler () const = 0
$virtualMethod=|QXmlDeclHandler *|declHandler|

$prototype=virtual QXmlEntityResolver * entityResolver () const = 0
$virtualMethod=|QXmlEntityResolver *|entityResolver|

$prototype=virtual QXmlErrorHandler * errorHandler () const = 0
$virtualMethod=|QXmlErrorHandler *|errorHandler|

$prototype=virtual bool feature ( const QString & name, bool * ok = 0 ) const = 0
$virtualMethod=|bool|feature|const QString &,bool *=0

$prototype=virtual bool hasFeature ( const QString & name ) const = 0
$virtualMethod=|bool|hasFeature|const QString &

$prototype=virtual bool hasProperty ( const QString & name ) const = 0
$virtualMethod=|bool|hasProperty|const QString &

$prototype=virtual QXmlLexicalHandler * lexicalHandler () const = 0
$virtualMethod=|QXmlLexicalHandler *|lexicalHandler|

$prototype=virtual bool parse ( const QXmlInputSource * input ) = 0
$virtualMethod=|bool|parse|const QXmlInputSource *

$prototype=virtual void * property ( const QString & name, bool * ok = 0 ) const = 0
$virtualMethod=|void *|property|const QString &,bool *=0

$prototype=virtual void setContentHandler ( QXmlContentHandler * handler ) = 0
$virtualMethod=|void|setContentHandler|QXmlContentHandler *

$prototype=virtual void setDTDHandler ( QXmlDTDHandler * handler ) = 0
$virtualMethod=|void|setDTDHandler|QXmlDTDHandler *

$prototype=virtual void setDeclHandler ( QXmlDeclHandler * handler ) = 0
$virtualMethod=|void|setDeclHandler|QXmlDeclHandler *

$prototype=virtual void setEntityResolver ( QXmlEntityResolver * handler ) = 0
$virtualMethod=|void|setEntityResolver|QXmlEntityResolver *

$prototype=virtual void setErrorHandler ( QXmlErrorHandler * handler ) = 0
$virtualMethod=|void|setErrorHandler|QXmlErrorHandler *

$prototype=virtual void setFeature ( const QString & name, bool value ) = 0
$virtualMethod=|void|setFeature|const QString &,bool

$prototype=virtual void setLexicalHandler ( QXmlLexicalHandler * handler ) = 0
$virtualMethod=|void|setLexicalHandler|QXmlLexicalHandler *

$prototype=virtual void setProperty ( const QString & name, void * value ) = 0
$virtualMethod=|void|setProperty|const QString &,void *

$extraMethods

#pragma ENDDUMP
