/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QSqlIndex INHERIT QSqlRecord

   METHOD new
   METHOD delete
   METHOD append
   METHOD cursorName
   METHOD setCursorName
   METHOD isDescending
   METHOD setDescending
   METHOD name
   METHOD setName

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlIndex>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlIndex>
#endif

/*
explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
*/
void QSqlIndex_new1 ()
{
  QSqlIndex * o = new QSqlIndex ( OPQSTRING(1,QString()), OPQSTRING(2,QString()) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QSqlIndex ( const QSqlIndex & other )
*/
void QSqlIndex_new2 ()
{
  QSqlIndex * o = new QSqlIndex ( *PQSQLINDEX(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
//[2]QSqlIndex ( const QSqlIndex & other )

HB_FUNC_STATIC( QSQLINDEX_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && ISOPTCHAR(2) )
  {
    QSqlIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLINDEX(1) )
  {
    QSqlIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLINDEX_DELETE )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

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
void append ( const QSqlField & field )
*/
void QSqlIndex_append1 ()
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->append ( *PQSQLFIELD(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append ( const QSqlField & field, bool desc )
*/
void QSqlIndex_append2 ()
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->append ( *PQSQLFIELD(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void append ( const QSqlField & field )
//[2]void append ( const QSqlField & field, bool desc )

HB_FUNC_STATIC( QSQLINDEX_APPEND )
{
  if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    QSqlIndex_append1();
  }
  else if( ISNUMPAR(2) && ISQSQLFIELD(1) && ISLOG(2) )
  {
    QSqlIndex_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString cursorName () const
*/
HB_FUNC_STATIC( QSQLINDEX_CURSORNAME )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->cursorName () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCursorName ( const QString & cursorName )
*/
HB_FUNC_STATIC( QSQLINDEX_SETCURSORNAME )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setCursorName ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDescending ( int i ) const
*/
HB_FUNC_STATIC( QSQLINDEX_ISDESCENDING )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isDescending ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDescending ( int i, bool desc )
*/
HB_FUNC_STATIC( QSQLINDEX_SETDESCENDING )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
    {
#endif
      obj->setDescending ( PINT(1), PBOOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString name () const
*/
HB_FUNC_STATIC( QSQLINDEX_NAME )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLINDEX_SETNAME )
{
  QSqlIndex * obj = (QSqlIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setName ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
