$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMediaServiceProviderHint

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD type
   METHOD mimeType
   METHOD codecs
   METHOD device
   METHOD features

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
QMediaServiceProviderHint()
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW1 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW2 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( PQSTRING(1), PQSTRINGLIST(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(const QByteArray &device)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW3 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( *PQBYTEARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(Features features)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW4 )
{
  int par1 = hb_parni(1);
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( (QMediaServiceProviderHint::Features) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(const QMediaServiceProviderHint &other)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW5 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( *PQMEDIASERVICEPROVIDERHINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMediaServiceProviderHint()
//[2]QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
//[3]QMediaServiceProviderHint(const QByteArray &device)
//[4]QMediaServiceProviderHint(Features features)
//[5]QMediaServiceProviderHint(const QMediaServiceProviderHint &other)

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2)  )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQMEDIASERVICEPROVIDERHINT(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_ISNULL )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_TYPE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
QString mimeType() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_MIMETYPE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->mimeType () );
  }
}


/*
QStringList codecs() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_CODECS )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->codecs () );
  }
}


/*
QByteArray device() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_DEVICE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->device () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
Features features() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_FEATURES )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->features () );
  }
}



$extraMethods

#pragma ENDDUMP
