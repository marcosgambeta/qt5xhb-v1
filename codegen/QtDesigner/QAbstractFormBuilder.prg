$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QAbstractFormBuilder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD load
   METHOD save
   METHOD setWorkingDirectory
   METHOD workingDirectory

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
QAbstractFormBuilder ()
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAbstractFormBuilder * o = new QAbstractFormBuilder ();
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual QWidget * load ( QIODevice * device, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_LOAD )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) && ISOPTQWIDGET(2) )
    {
      QWidget * ptr = obj->load ( PQIODEVICE(1), OPQWIDGET(2,0) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void save ( QIODevice * device, QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SAVE )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) && ISQWIDGET(2) )
    {
      obj->save ( PQIODEVICE(1), PQWIDGET(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWorkingDirectory ( const QDir & directory )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SETWORKINGDIRECTORY )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDIR(1) )
    {
      obj->setWorkingDirectory ( *PQDIR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir workingDirectory () const
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_WORKINGDIRECTORY )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDir * ptr = new QDir( obj->workingDirectory () );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

$extraMethods

#pragma ENDDUMP
