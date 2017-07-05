$header

#include "hbclass.ch"

CLASS QAbstractNativeEventFilter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD nativeEventFilter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool nativeEventFilter(const QByteArray & eventType, void * message, long * result) = 0
*/
HB_FUNC_STATIC( QABSTRACTNATIVEEVENTFILTER_NATIVEEVENTFILTER )
{
  QAbstractNativeEventFilter * obj = (QAbstractNativeEventFilter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) && ISPOINTER(2) && ISNUM(3) )
    {
      long par3;
      RBOOL( obj->nativeEventFilter ( *PQBYTEARRAY(1), (void *) hb_parptr(2), &par3 ) );
      hb_stornl( par3, 3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
