%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlStreamNamespaceDeclaration()
$internalConstructor=|new1|

$prototype=QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
$internalConstructor=|new2|const QXmlStreamNamespaceDeclaration &

$prototype=QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)
$internalConstructor=|new3|const QString &,const QString &

//[1]QXmlStreamNamespaceDeclaration()
//[2]QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
//[3]QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamNamespaceDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNAMESPACEDECLARATION(1) )
  {
    QXmlStreamNamespaceDeclaration_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamNamespaceDeclaration_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStringRef namespaceUri() const
$method=|QStringRef|namespaceUri|

$prototype=QStringRef prefix() const
$method=|QStringRef|prefix|

$extraMethods

#pragma ENDDUMP
