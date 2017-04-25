/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QSqlIndex INHERIT QSqlRecord

   //DATA class_id INIT Class_Id_QSqlIndex
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlIndex>
#endif

/*
explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
*/
void QSqlIndex_new1 ()
{
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QSqlIndex * o = new QSqlIndex ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlIndex ( const QSqlIndex & other )
*/
void QSqlIndex_new2 ()
{
  QSqlIndex * par1 = (QSqlIndex *) _qt5xhb_itemGetPtr(1);
  QSqlIndex * o = new QSqlIndex ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
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
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
    QSqlField * par1 = (QSqlField *) _qt5xhb_itemGetPtr(1);
    obj->append ( *par1 );
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
    QSqlField * par1 = (QSqlField *) _qt5xhb_itemGetPtr(1);
    obj->append ( *par1, (bool) hb_parl(2) );
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
    hb_retc( (const char *) obj->cursorName (  ).toLatin1().data() );
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
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setCursorName ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      hb_retl( obj->isDescending ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setDescending ( (int) hb_parni(1), (bool) hb_parl(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
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
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setName ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
