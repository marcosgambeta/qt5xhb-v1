%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD createDocument
   METHOD createDocumentType
   METHOD hasFeature
   METHOD isNull
   METHOD invalidDataPolicy
   METHOD setInvalidDataPolicy

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomImplementation ()
$internalConstructor=|new1|

$prototype=QDomImplementation ( const QDomImplementation & x )
$internalConstructor=|new2|const QDomImplementation &

//[1]QDomImplementation ()
//[2]QDomImplementation ( const QDomImplementation & x )

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomImplementation_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMIMPLEMENTATION(1) )
  {
    QDomImplementation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomDocument createDocument ( const QString & nsURI, const QString & qName, const QDomDocumentType & doctype )
$method=|QDomDocument|createDocument|const QString &,const QString &,const QDomDocumentType &

$prototype=QDomDocumentType createDocumentType ( const QString & qName, const QString & publicId, const QString & systemId )
$method=|QDomDocumentType|createDocumentType|const QString &,const QString &,const QString &

$prototype=bool hasFeature ( const QString & feature, const QString & version ) const
$method=|bool|hasFeature|const QString &,const QString &

$prototype=bool isNull ()
$method=|bool|isNull|

$prototype=static InvalidDataPolicy invalidDataPolicy ()
$staticMethod=|QDomImplementation::InvalidDataPolicy|invalidDataPolicy|

$prototype=static void setInvalidDataPolicy ( InvalidDataPolicy policy )
$staticMethod=|void|setInvalidDataPolicy|QDomImplementation::InvalidDataPolicy

$extraMethods

#pragma ENDDUMP
