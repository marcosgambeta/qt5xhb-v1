$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QQmlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
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
QQmlError()
*/
void QQmlError_new1 ()
{
  QQmlError * o = new QQmlError ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QQmlError(const QQmlError & other)
*/
void QQmlError_new2 ()
{
  QQmlError * o = new QQmlError ( *PQQMLERROR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QQmlError()
//[2]QQmlError(const QQmlError & other)

HB_FUNC_STATIC( QQMLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlError_new1();
  }
  else if( ISNUMPAR(1) && ISQQMLERROR(1) )
  {
    QQmlError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int column() const
*/
HB_FUNC_STATIC( QQMLERROR_COLUMN )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->column () );
  }
}

/*
QString description() const
*/
HB_FUNC_STATIC( QQMLERROR_DESCRIPTION )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->description () );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLERROR_ISVALID )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
int line() const
*/
HB_FUNC_STATIC( QQMLERROR_LINE )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->line () );
  }
}

/*
void setColumn(int column)
*/
HB_FUNC_STATIC( QQMLERROR_SETCOLUMN )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setDescription(const QString & description)
*/
HB_FUNC_STATIC( QQMLERROR_SETDESCRIPTION )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setLine(int line)
*/
HB_FUNC_STATIC( QQMLERROR_SETLINE )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setUrl(const QUrl & url)
*/
HB_FUNC_STATIC( QQMLERROR_SETURL )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString toString() const
*/
HB_FUNC_STATIC( QQMLERROR_TOSTRING )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString () );
  }
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QQMLERROR_URL )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

$extraMethods

#pragma ENDDUMP
