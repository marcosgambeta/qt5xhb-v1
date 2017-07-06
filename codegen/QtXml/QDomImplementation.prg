$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMDOCUMENT
REQUEST QDOMDOCUMENTTYPE
#endif

CLASS QDomImplementation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD createDocument
   METHOD createDocumentType
   METHOD hasFeature
   METHOD isNull
   METHOD invalidDataPolicy
   METHOD setInvalidDataPolicy

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
QDomImplementation ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW1 )
{
  QDomImplementation * o = new QDomImplementation ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomImplementation ( const QDomImplementation & x )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW2 )
{
  QDomImplementation * o = new QDomImplementation ( *PQDOMIMPLEMENTATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomImplementation ()
//[2]QDomImplementation ( const QDomImplementation & x )

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMIMPLEMENTATION(1) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomDocument createDocument ( const QString & nsURI, const QString & qName, const QDomDocumentType & doctype )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_CREATEDOCUMENT )
{
  QDomImplementation * obj = (QDomImplementation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomDocumentType * par3 = (QDomDocumentType *) _qt5xhb_itemGetPtr(3);
    QDomDocument * ptr = new QDomDocument( obj->createDocument ( PQSTRING(1), PQSTRING(2), *par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMDOCUMENT", true );
  }
}


/*
QDomDocumentType createDocumentType ( const QString & qName, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_CREATEDOCUMENTTYPE )
{
  QDomImplementation * obj = (QDomImplementation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomDocumentType * ptr = new QDomDocumentType( obj->createDocumentType ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );
  }
}


/*
bool hasFeature ( const QString & feature, const QString & version ) const
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_HASFEATURE )
{
  QDomImplementation * obj = (QDomImplementation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasFeature ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
bool isNull ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_ISNULL )
{
  QDomImplementation * obj = (QDomImplementation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
static InvalidDataPolicy invalidDataPolicy ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_INVALIDDATAPOLICY )
{
  hb_retni( QDomImplementation::invalidDataPolicy () );
}


/*
static void setInvalidDataPolicy ( InvalidDataPolicy policy )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_SETINVALIDDATAPOLICY )
{
  QDomImplementation::setInvalidDataPolicy ( (QDomImplementation::InvalidDataPolicy) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
