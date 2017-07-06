$header

#include "hbclass.ch"

CLASS QDBusError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD name
   METHOD message
   METHOD isValid
   METHOD errorString

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
QDBusError()
*/
void QDBusError_new1 ()
{
  QDBusError * o = new QDBusError ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(const DBusError *error)
*/
void QDBusError_new2 ()
{
  DBusError * par1 = (DBusError *) _qt5xhb_itemGetPtr(1);
  QDBusError * o = new QDBusError ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(const QDBusMessage& msg)
*/
void QDBusError_new3 ()
{
  QDBusError * o = new QDBusError ( *PQDBUSMESSAGE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(ErrorType error, const QString &message)
*/
void QDBusError_new4 ()
{
  QDBusError * o = new QDBusError ( (QDBusError::ErrorType) hb_parni(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(const QDBusError &other)
*/
void QDBusError_new5 ()
{
  QDBusError * o = new QDBusError ();
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDBusError()
//[2]QDBusError(const DBusError *error)
//[3]QDBusError(const QDBusMessage& msg)
//[4]QDBusError(ErrorType error, const QString &message)
//[5]QDBusError(const QDBusError &other)

HB_FUNC_STATIC( QDBUSERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusError_new1();
  }
  //else if( ISNUMPAR(1) && ISDBUSERROR(1) )
  //{
  //  QDBusError_new2();
  //}
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusError_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusError_new4();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusError_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
ErrorType type() const
*/
HB_FUNC_STATIC( QDBUSERROR_TYPE )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QDBUSERROR_NAME )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->name () );
  }
}

/*
QString message() const
*/
HB_FUNC_STATIC( QDBUSERROR_MESSAGE )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->message () );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSERROR_ISVALID )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
static QString errorString(ErrorType error)
*/
HB_FUNC_STATIC( QDBUSERROR_ERRORSTRING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    RQSTRING( QDBusError::errorString ( (QDBusError::ErrorType) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
