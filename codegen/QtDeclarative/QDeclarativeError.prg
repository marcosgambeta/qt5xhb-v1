$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QDeclarativeError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD column
   METHOD description
   METHOD isValid
   METHOD line
   METHOD setColumn
   METHOD setDescription
   METHOD setLine
   METHOD setUrl
   METHOD toString
   METHOD url

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
QDeclarativeError ()
*/
void QDeclarativeError_new1 ()
{
  QDeclarativeError * o = new QDeclarativeError ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeError ( const QDeclarativeError & other )
*/
void QDeclarativeError_new2 ()
{
  QDeclarativeError * o = new QDeclarativeError ( *PQDECLARATIVEERROR(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeError ()
//[2]QDeclarativeError ( const QDeclarativeError & other )

HB_FUNC_STATIC( QDECLARATIVEERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeError_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEERROR(1) )
  {
    QDeclarativeError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int column () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_COLUMN )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->column () );
  }
}

/*
QString description () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_DESCRIPTION )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->description () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_ISVALID )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
int line () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_LINE )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->line () );
  }
}

/*
void setColumn ( int column )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETCOLUMN )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDescription ( const QString & description )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETDESCRIPTION )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine ( int line )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETLINE )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLine ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETURL )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      obj->setUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toString () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_TOSTRING )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString () );
  }
}

/*
QUrl url () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_URL )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

$extraMethods

#pragma ENDDUMP
