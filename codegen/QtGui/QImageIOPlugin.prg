$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEIOHANDLER
#endif

CLASS QImageIOPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD capabilities
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual Capabilities capabilities ( QIODevice * device, const QByteArray & format ) const = 0
*/
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CAPABILITIES )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) && ISQBYTEARRAY(2) )
    {
      hb_retni( obj->capabilities ( PQIODEVICE(1), *PQBYTEARRAY(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QImageIOHandler * create ( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
*/
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CREATE )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) && ISOPTQBYTEARRAY(2) )
    {
      QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
      QImageIOHandler * ptr = obj->create ( PQIODEVICE(1), par2 );
      _qt5xhb_createReturnClass ( ptr, "QIMAGEIOHANDLER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
