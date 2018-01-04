/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QQmlError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlError>
#endif

/*
QQmlError()
*/
void QQmlError_new1 ()
{
  QQmlError * o = new QQmlError ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QQmlError(const QQmlError & other)
*/
void QQmlError_new2 ()
{
  QQmlError * o = new QQmlError ( *PQQMLERROR(1) );
  _qt5xhb_returnNewObject( o, true );
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

HB_FUNC_STATIC( QQMLERROR_DELETE )
{
  QQmlError * obj = (QQmlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

HB_FUNC_STATIC( QQMLERROR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QQMLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLERROR_NEWFROM );
}

HB_FUNC_STATIC( QQMLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLERROR_NEWFROM );
}

HB_FUNC_STATIC( QQMLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLERROR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
