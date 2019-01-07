%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAbstractMessageHandler>
#include <QNetworkAccessManager>
#include <QAbstractUriResolver>

$prototype=QXmlQuery ()
$internalConstructor=|new1|

$prototype=QXmlQuery ( const QXmlQuery & other )
$internalConstructor=|new2|const QXmlQuery &

$prototype=QXmlQuery ( const QXmlNamePool & np )
$internalConstructor=|new3|const QXmlNamePool &

$prototype=QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )
$internalConstructor=|new4|QXmlQuery::QueryLanguage,const QXmlNamePool &=QXmlNamePool()

//[1]QXmlQuery ()
//[2]QXmlQuery ( const QXmlQuery & other )
//[3]QXmlQuery ( const QXmlNamePool & np )
//[4]QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )

HB_FUNC_STATIC( QXMLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlQuery_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLQUERY(1) )
  {
    QXmlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    QXmlQuery_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQXMLNAMEPOOL(2)||ISNIL(2)) )
  {
    QXmlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void bindVariable ( const QXmlName & name, const QXmlItem & value )
$internalMethod=|void|bindVariable,bindVariable1|const QXmlName &,const QXmlItem &

$prototype=void bindVariable ( const QXmlName & name, QIODevice * device )
$internalMethod=|void|bindVariable,bindVariable2|const QXmlName &,QIODevice *

$prototype=void bindVariable ( const QXmlName & name, const QXmlQuery & query )
$internalMethod=|void|bindVariable,bindVariable3|const QXmlName &,const QXmlQuery &

$prototype=void bindVariable ( const QString & localName, const QXmlItem & value )
$internalMethod=|void|bindVariable,bindVariable4|const QString &,const QXmlItem &

$prototype=void bindVariable ( const QString & localName, QIODevice * device )
$internalMethod=|void|bindVariable,bindVariable5|const QString &,QIODevice *

$prototype=void bindVariable ( const QString & localName, const QXmlQuery & query )
$internalMethod=|void|bindVariable,bindVariable6|const QString &,const QXmlQuery &

//[1]void bindVariable ( const QXmlName & name, const QXmlItem & value )
//[2]void bindVariable ( const QXmlName & name, QIODevice * device )
//[3]void bindVariable ( const QXmlName & name, const QXmlQuery & query )
//[4]void bindVariable ( const QString & localName, const QXmlItem & value )
//[5]void bindVariable ( const QString & localName, QIODevice * device )
//[6]void bindVariable ( const QString & localName, const QXmlQuery & query )

HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE )
{
  if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLITEM(2) )
  {
    QXmlQuery_bindVariable1();
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQIODEVICE(2) )
  {
    QXmlQuery_bindVariable2();
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLQUERY(2) )
  {
    QXmlQuery_bindVariable3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLITEM(2) )
  {
    QXmlQuery_bindVariable4();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    QXmlQuery_bindVariable5();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLQUERY(2) )
  {
    QXmlQuery_bindVariable6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindVariable

$prototype=void evaluateTo ( QXmlResultItems * result ) const
$internalMethod=|void|evaluateTo,evaluateTo1|QXmlResultItems *

$prototype=bool evaluateTo ( QAbstractXmlReceiver * callback ) const
$internalMethod=|bool|evaluateTo,evaluateTo2|QAbstractXmlReceiver *

$prototype=bool evaluateTo ( QStringList * target ) const
%% TODO: implementar
%% $internalMethod=|bool|evaluateTo,evaluateTo3|QStringList *

$prototype=bool evaluateTo ( QString * output ) const
%% TODO: implementar
%% $internalMethod=|bool|evaluateTo,evaluateTo4|QString *

$prototype=bool evaluateTo ( QIODevice * target ) const
$internalMethod=|bool|evaluateTo,evaluateTo5|QIODevice *

//[1]void evaluateTo ( QXmlResultItems * result ) const
//[2]bool evaluateTo ( QAbstractXmlReceiver * callback ) const
//[3]bool evaluateTo ( QStringList * target ) const
//[4]bool evaluateTo ( QString * output ) const
//[5]bool evaluateTo ( QIODevice * target ) const

HB_FUNC_STATIC( QXMLQUERY_EVALUATETO )
{
  if( ISNUMPAR(1) && ISQXMLRESULTITEMS(1) )
  {
    QXmlQuery_evaluateTo1();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTXMLRECEIVER(1) )
  {
    QXmlQuery_evaluateTo2();
  }
%%  //else if( ISNUMPAR(1) && ISARRAY(1) )
%%  //{
%%  //  QXmlQuery_evaluateTo3();
%%  //}
%%  else if( ISNUMPAR(1) && ISCHAR(1) )
%%  {
%%    QXmlQuery_evaluateTo4();
%%  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlQuery_evaluateTo5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=evaluateTo

$prototype=QXmlName initialTemplateName () const
$method=|QXmlName|initialTemplateName|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QAbstractMessageHandler * messageHandler () const
$method=|QAbstractMessageHandler *|messageHandler|

$prototype=QXmlNamePool namePool () const
$method=|QXmlNamePool|namePool|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QueryLanguage queryLanguage () const
$method=|QXmlQuery::QueryLanguage|queryLanguage|

$prototype=void setFocus ( const QXmlItem & item )
$internalMethod=|void|setFocus,setFocus1|const QXmlItem &

$prototype=bool setFocus ( const QUrl & documentURI )
$internalMethod=|bool|setFocus,setFocus2|const QUrl &

$prototype=bool setFocus ( QIODevice * document )
$internalMethod=|bool|setFocus,setFocus3|QIODevice *

$prototype=bool setFocus ( const QString & focus )
$internalMethod=|bool|setFocus,setFocus4|const QString &

//[1]void setFocus ( const QXmlItem & item )
//[2]bool setFocus ( const QUrl & documentURI )
//[3]bool setFocus ( QIODevice * document )
//[4]bool setFocus ( const QString & focus )

HB_FUNC_STATIC( QXMLQUERY_SETFOCUS )
{
  if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    QXmlQuery_setFocus1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QXmlQuery_setFocus2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlQuery_setFocus3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlQuery_setFocus4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFocus

$prototype=void setInitialTemplateName ( const QXmlName & name )
$internalMethod=|void|setInitialTemplateName,setInitialTemplateName1|const QXmlName &

$prototype=void setInitialTemplateName ( const QString & localName )
$internalMethod=|void|setInitialTemplateName,setInitialTemplateName2|const QString &

//[1]void setInitialTemplateName ( const QXmlName & name )
//[2]void setInitialTemplateName ( const QString & localName )

HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME )
{
  if( ISNUMPAR(1) && ISQXMLNAME(1) )
  {
    QXmlQuery_setInitialTemplateName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlQuery_setInitialTemplateName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setInitialTemplateName

$prototype=void setMessageHandler ( QAbstractMessageHandler * aMessageHandler )
$method=|void|setMessageHandler|QAbstractMessageHandler *

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * newManager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
$internalMethod=|void|setQuery,setQuery1|QIODevice *,const QUrl &=QUrl()

$prototype=void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
$internalMethod=|void|setQuery,setQuery2|const QUrl &,const QUrl &=QUrl()

$prototype=void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )
$internalMethod=|void|setQuery,setQuery3|const QString &,const QUrl &=QUrl()

//[1]void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
//[2]void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
//[3]void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )

HB_FUNC_STATIC( QXMLQUERY_SETQUERY )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlQuery_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlQuery_setQuery2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlQuery_setQuery3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setQuery

$prototype=void setUriResolver ( const QAbstractUriResolver * resolver )
$method=|void|setUriResolver|const QAbstractUriResolver *

$prototype=const QAbstractUriResolver * uriResolver () const
$method=|const QAbstractUriResolver *|uriResolver|

$extraMethods

#pragma ENDDUMP
