%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QDomCharacterData ()
$internalConstructor=|new1|

$prototype=QDomCharacterData ( const QDomCharacterData & x )
$internalConstructor=|new2|const QDomCharacterData &

//[1]QDomCharacterData ()
//[2]QDomCharacterData ( const QDomCharacterData & x )

HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomCharacterData_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    QDomCharacterData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void appendData ( const QString & arg )
$method=|void|appendData|const QString &

$prototype=QString data () const
$method=|QString|data|

$prototype=void deleteData ( unsigned long offset, unsigned long count )
$method=|void|deleteData|unsigned long,unsigned long

$prototype=void insertData ( unsigned long offset, const QString & arg )
$method=|void|insertData|unsigned long,const QString &

$prototype=uint length () const
$method=|uint|length|

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=void replaceData ( unsigned long offset, unsigned long count, const QString & arg )
$method=|void|replaceData|unsigned long,unsigned long,const QString &

$prototype=void setData ( const QString & v )
$method=|void|setData|const QString &

$prototype=QString substringData ( unsigned long offset, unsigned long count )
$method=|QString|substringData|unsigned long,unsigned long

#pragma ENDDUMP
