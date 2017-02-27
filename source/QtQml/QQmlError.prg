/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QQmlError

   DATA pointer
   DATA class_id INIT Class_Id_QQmlError
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQmlError>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQmlError>
#endif
#endif

/*
QQmlError()
*/
HB_FUNC_STATIC( QQMLERROR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlError * o = new QQmlError (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlError(const QQmlError & other)
*/
HB_FUNC_STATIC( QQMLERROR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlError * par1 = (QQmlError *) _qt5xhb_itemGetPtr(1);
  QQmlError * o = new QQmlError ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QQmlError()
//[2]QQmlError(const QQmlError & other)

HB_FUNC_STATIC( QQMLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLERROR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQQMLERROR(1) )
  {
    HB_FUNC_EXEC( QQMLERROR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLERROR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int column() const
*/
HB_FUNC_STATIC( QQMLERROR_COLUMN )
{
  QQmlError * obj = (QQmlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->column (  ) );
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
    hb_retc( (const char *) obj->description (  ).toLatin1().data() );
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
    hb_retl( obj->isValid (  ) );
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
    hb_retni( obj->line (  ) );
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
    obj->setColumn ( (int) hb_parni(1) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDescription ( par1 );
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
    obj->setLine ( (int) hb_parni(1) );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
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
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
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
    QUrl * ptr = new QUrl( obj->url (  ) );
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
