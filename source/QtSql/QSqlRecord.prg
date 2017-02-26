/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSQLFIELD
REQUEST QVARIANT
#endif

CLASS QSqlRecord

   DATA pointer
   DATA class_id INIT Class_Id_QSqlRecord
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD clearValues
   METHOD contains
   METHOD count
   METHOD field1
   METHOD field2
   METHOD field
   METHOD fieldName
   METHOD indexOf
   METHOD insert
   METHOD isEmpty
   METHOD isGenerated1
   METHOD isGenerated2
   METHOD isGenerated
   METHOD isNull1
   METHOD isNull2
   METHOD isNull
   METHOD remove
   METHOD replace
   METHOD setGenerated1
   METHOD setGenerated2
   METHOD setGenerated
   METHOD setNull1
   METHOD setNull2
   METHOD setNull
   METHOD setValue1
   METHOD setValue2
   METHOD setValue
   METHOD value1
   METHOD value2
   METHOD value
   METHOD keyValues
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlRecord>
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
#include <QSqlRecord>
#endif
#endif

#include <QSqlField>
#include <QVariant>

/*
QSqlRecord ()
*/
HB_FUNC_STATIC( QSQLRECORD_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlRecord * o = new QSqlRecord (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSqlRecord ( const QSqlRecord & other )
*/
HB_FUNC_STATIC( QSQLRECORD_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlRecord * par1 = (QSqlRecord *) _qtxhb_itemGetPtr(1);
  QSqlRecord * o = new QSqlRecord ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QSqlRecord ()
//[2]QSqlRecord ( const QSqlRecord & other )

HB_FUNC_STATIC( QSQLRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLRECORD(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLRECORD_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append ( const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_APPEND )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlField * par1 = (QSqlField *) _qtxhb_itemGetPtr(1);
    obj->append ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSQLRECORD_CLEAR )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearValues ()
*/
HB_FUNC_STATIC( QSQLRECORD_CLEARVALUES )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearValues (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_CONTAINS )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QSQLRECORD_COUNT )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
QSqlField field ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELD1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlField * ptr = new QSqlField( obj->field ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLFIELD", true );
  }
}

/*
QSqlField field ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELD2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSqlField * ptr = new QSqlField( obj->field ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLFIELD", true );
  }
}


//[1]QSqlField field ( int index ) const
//[2]QSqlField field ( const QString & name ) const

HB_FUNC_STATIC( QSQLRECORD_FIELD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_FIELD1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_FIELD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString fieldName ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELDNAME )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fieldName ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
int indexOf ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_INDEXOF )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
void insert ( int pos, const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_INSERT )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlField * par2 = (QSqlField *) _qtxhb_itemGetPtr(2);
    obj->insert ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QSQLRECORD_ISEMPTY )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isGenerated ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISGENERATED1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->isGenerated ( par1 ) );
  }
}

/*
bool isGenerated ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISGENERATED2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isGenerated ( (int) hb_parni(1) ) );
  }
}


//[1]bool isGenerated ( const QString & name ) const
//[2]bool isGenerated ( int index ) const

HB_FUNC_STATIC( QSQLRECORD_ISGENERATED )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISGENERATED1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISGENERATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isNull ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISNULL1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->isNull ( par1 ) );
  }
}

/*
bool isNull ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISNULL2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull ( (int) hb_parni(1) ) );
  }
}


//[1]bool isNull ( const QString & name ) const
//[2]bool isNull ( int index ) const

HB_FUNC_STATIC( QSQLRECORD_ISNULL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISNULL1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISNULL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove ( int pos )
*/
HB_FUNC_STATIC( QSQLRECORD_REMOVE )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->remove ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void replace ( int pos, const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_REPLACE )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlField * par2 = (QSqlField *) _qtxhb_itemGetPtr(2);
    obj->replace ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGenerated ( const QString & name, bool generated )
*/
HB_FUNC_STATIC( QSQLRECORD_SETGENERATED1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setGenerated ( par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGenerated ( int index, bool generated )
*/
HB_FUNC_STATIC( QSQLRECORD_SETGENERATED2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGenerated ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGenerated ( const QString & name, bool generated )
//[2]void setGenerated ( int index, bool generated )

HB_FUNC_STATIC( QSQLRECORD_SETGENERATED )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETGENERATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETGENERATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setNull ( int index )
*/
HB_FUNC_STATIC( QSQLRECORD_SETNULL1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNull ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNull ( const QString & name )
*/
HB_FUNC_STATIC( QSQLRECORD_SETNULL2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNull ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setNull ( int index )
//[2]void setNull ( const QString & name )

HB_FUNC_STATIC( QSQLRECORD_SETNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETNULL1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETNULL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValue ( int index, const QVariant & val )
*/
HB_FUNC_STATIC( QSQLRECORD_SETVALUE1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setValue ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setValue ( const QString & name, const QVariant & val )
*/
HB_FUNC_STATIC( QSQLRECORD_SETVALUE2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setValue ( int index, const QVariant & val )
//[2]void setValue ( const QString & name, const QVariant & val )

HB_FUNC_STATIC( QSQLRECORD_SETVALUE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETVALUE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETVALUE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant value ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_VALUE1 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant value ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_VALUE2 )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant value ( int index ) const
//[2]QVariant value ( const QString & name ) const

HB_FUNC_STATIC( QSQLRECORD_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_VALUE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlRecord keyValues(const QSqlRecord &keyFields) const
*/
HB_FUNC_STATIC( QSQLRECORD_KEYVALUES )
{
  QSqlRecord * obj = (QSqlRecord *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlRecord * par1 = (QSqlRecord *) _qtxhb_itemGetPtr(1);
    QSqlRecord * ptr = new QSqlRecord( obj->keyValues ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}



HB_FUNC_STATIC( QSQLRECORD_NEWFROM )
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

HB_FUNC_STATIC( QSQLRECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLRECORD_NEWFROM );
}

HB_FUNC_STATIC( QSQLRECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLRECORD_NEWFROM );
}

HB_FUNC_STATIC( QSQLRECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLRECORD_SETSELFDESTRUCTION )
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