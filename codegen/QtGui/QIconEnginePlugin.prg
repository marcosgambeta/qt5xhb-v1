$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICONENGINE
#endif

CLASS QIconEnginePlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QIconEngine * create(const QString & filename = QString()) = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGIN_CREATE )
{
  QIconEnginePlugin * obj = (QIconEnginePlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTCHAR(1) )
    {
      QIconEngine * ptr = obj->create ( OPQSTRING(1,QString()) );
      _qt5xhb_createReturnClass ( ptr, "QICONENGINE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
