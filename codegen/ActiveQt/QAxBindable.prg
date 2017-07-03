$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
#endif

CLASS QAxBindable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD readData
   METHOD reportError
   METHOD writeData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxBindable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes

/*
QAxBindable ()
*/
HB_FUNC_STATIC( QAXBINDABLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAxBindable * o = new QAxBindable ();
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual QAxAggregated * createAggregate ()
*/
HB_FUNC_STATIC( QAXBINDABLE_CREATEAGGREGATE )
{
  QAxBindable * obj = (QAxBindable *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAxAggregated * ptr = obj->createAggregate ();
    _qt5xhb_createReturnClass ( ptr, "QAXAGGREGATED" );
  }
}

/*
virtual bool readData ( QIODevice * source, const QString & format )
*/
$method=|bool|readData|QIODevice *,const QString &

/*
void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
*/
HB_FUNC_STATIC( QAXBINDABLE_REPORTERROR )
{
  QAxBindable * obj = (QAxBindable *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) && ISCHAR(3) && ISOPTCHAR(4) )
    {
      obj->reportError ( PINT(1), PQSTRING(2), PQSTRING(3), OPQSTRING(4,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool writeData ( QIODevice * sink )
*/
$method=|bool|writeData|QIODevice *

$extraMethods

#pragma ENDDUMP
