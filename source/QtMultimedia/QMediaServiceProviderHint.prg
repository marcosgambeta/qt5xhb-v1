/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMediaServiceProviderHint

   DATA pointer
   DATA class_id INIT Class_Id_QMediaServiceProviderHint
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QMediaServiceProviderHint
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaServiceProviderHint>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaServiceProviderHint>
#endif

/*
QMediaServiceProviderHint()
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW1 )
{
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QStringList par2 = _qt5xhb_convert_array_parameter_to_qstringlist(2);
  //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
  //int i2;
  //int nLen2 = hb_arrayLen(aStrings2);
  //for (i2=0;i2<nLen2;i2++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
  //  par2 << temp;
  //}
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(const QByteArray &device)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW3 )
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(Features features)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW4 )
{
  int par1 = hb_parni(1);
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint (  (QMediaServiceProviderHint::Features) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaServiceProviderHint(const QMediaServiceProviderHint &other)
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW5 )
{
  QMediaServiceProviderHint * par1 = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtr(1);
  QMediaServiceProviderHint * o = new QMediaServiceProviderHint ( *par1 );
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

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_DELETE )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_ISNULL )
{
  QMediaServiceProviderHint * obj = (QMediaServiceProviderHint *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
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
    hb_retni( obj->type (  ) );
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
    hb_retc( (const char *) obj->mimeType (  ).toLatin1().data() );
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
    QStringList strl = obj->codecs (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    QByteArray * ptr = new QByteArray( obj->device (  ) );
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
    hb_retni( obj->features (  ) );
  }
}



HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
