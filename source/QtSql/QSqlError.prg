/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSqlError

   DATA pointer
   DATA class_id INIT Class_Id_QSqlError
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD databaseText
   METHOD setDatabaseText
   METHOD driverText
   METHOD setDriverText
   METHOD isValid
   METHOD number
   METHOD setNumber
   METHOD text
   METHOD type
   METHOD setType
   METHOD nativeErrorCode
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlError>
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
#include <QSqlError>
#endif

/*
QSqlError ( const QString & driverText, const QString & databaseText, ErrorType type, int number )
*/
HB_FUNC_STATIC( QSQLERROR_NEW1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  QSqlError * o = new QSqlError ( par1, par2,  (QSqlError::ErrorType) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
*/
HB_FUNC_STATIC( QSQLERROR_NEW2 )
{
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QSqlError::NoError : hb_parni(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QSqlError * o = new QSqlError ( par1, par2,  (QSqlError::ErrorType) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QSqlError ( const QSqlError & other )
*/
HB_FUNC_STATIC( QSQLERROR_NEW3 )
{
  QSqlError * par1 = (QSqlError *) _qt5xhb_itemGetPtr(1);
  QSqlError * o = new QSqlError ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSqlError(const QString & driverText, const QString & databaseText, ErrorType type, int number )
//[2]QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
//[3]QSqlError(const QSqlError & other )

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QSQLERROR_NEW1 );
  }
  else if( ISBETWEEN(0,4) && (ISCHAR(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSQLERROR_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    HB_FUNC_EXEC( QSQLERROR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLERROR_DELETE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString databaseText () const
*/
HB_FUNC_STATIC( QSQLERROR_DATABASETEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->databaseText (  ).toLatin1().data() );
  }
}

/*
QT_DEPRECATED void setDatabaseText ( const QString & databaseText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDATABASETEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDatabaseText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString driverText () const
*/
HB_FUNC_STATIC( QSQLERROR_DRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->driverText (  ).toLatin1().data() );
  }
}

/*
QT_DEPRECATED void setDriverText ( const QString & driverText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDriverText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLERROR_ISVALID )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QT_DEPRECATED  int number () const
*/
HB_FUNC_STATIC( QSQLERROR_NUMBER )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->number (  ) );
  }
}

/*
QT_DEPRECATED void setNumber ( int number )
*/
HB_FUNC_STATIC( QSQLERROR_SETNUMBER )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNumber ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QSQLERROR_TEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
ErrorType type () const
*/
HB_FUNC_STATIC( QSQLERROR_TYPE )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

/*
QT_DEPRECATED void setType ( ErrorType type )
*/
HB_FUNC_STATIC( QSQLERROR_SETTYPE )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QSqlError::ErrorType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString nativeErrorCode() const
*/
HB_FUNC_STATIC( QSQLERROR_NATIVEERRORCODE )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->nativeErrorCode (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QSQLERROR_NEWFROM )
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

HB_FUNC_STATIC( QSQLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLERROR_SETSELFDESTRUCTION )
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