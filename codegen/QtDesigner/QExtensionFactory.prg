$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QExtensionFactory ( QExtensionManager * parent = 0 )
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQEXTENSIONMANAGER(1)||ISNIL(1)) )
  {
    QExtensionManager * par1 = ISNIL(1)? 0 : (QExtensionManager *) _qt5xhb_itemGetPtr(1);
    QExtensionFactory * o = new QExtensionFactory ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSIONMANAGER )
{
  QExtensionFactory * obj = (QExtensionFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QExtensionManager * ptr = obj->extensionManager ();
    _qt5xhb_createReturnClass ( ptr, "QEXTENSIONMANAGER" );
  }
}

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSION )
{
  QExtensionFactory * obj = (QExtensionFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      QObject * ptr = obj->extension ( PQOBJECT(1), PQSTRING(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
