$header

#include "hbclass.ch"

CLASS QPlaceUser

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD userId
   METHOD setUserId
   METHOD name
   METHOD setName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceUser()
*/
void QPlaceUser_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * o = new QPlaceUser ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceUser(const QPlaceUser &other)
*/
void QPlaceUser_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * o = new QPlaceUser ( *PQPLACEUSER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceUser()
//[2]QPlaceUser(const QPlaceUser &other)

HB_FUNC_STATIC( QPLACEUSER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceUser_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEUSER(1) )
  {
    QPlaceUser_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QString userId() const
*/
HB_FUNC_STATIC( QPLACEUSER_USERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->userId () );
  }
#endif
}

/*
void setUserId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACEUSER_SETUSERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUserId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QPLACEUSER_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
#endif
}

/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QPLACEUSER_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
