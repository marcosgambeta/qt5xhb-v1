/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QSqlField

   DATA pointer
   DATA class_id INIT Class_Id_QSqlField
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clear
   METHOD defaultValue
   METHOD setDefaultValue
   METHOD isAutoValue
   METHOD setAutoValue
   METHOD isGenerated
   METHOD setGenerated
   METHOD isNull
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD isValid
   METHOD length
   METHOD setLength
   METHOD name
   METHOD setName
   METHOD precision
   METHOD setPrecision
   METHOD requiredStatus
   METHOD setRequiredStatus
   METHOD setRequired
   METHOD type
   METHOD setType
   METHOD value
   METHOD setValue
   METHOD setSqlType
   METHOD typeID
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlField
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlField>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSqlField>
#endif
#endif

/*
explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
*/
HB_FUNC_STATIC( QSQLFIELD_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) QVariant::Invalid : hb_parni(2);
  QSqlField * o = new QSqlField ( par1,  (QVariant::Type) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlField *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSqlField ( const QSqlField & other )
*/
HB_FUNC_STATIC( QSQLFIELD_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlField * par1 = (QSqlField *) _qtxhb_itemGetPtr(1);
  QSqlField * o = new QSqlField ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlField *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
//[2]QSqlField ( const QSqlField & other )

HB_FUNC_STATIC( QSQLFIELD_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLFIELD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    HB_FUNC_EXEC( QSQLFIELD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLFIELD_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QSQLFIELD_CLEAR )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant defaultValue () const
*/
HB_FUNC_STATIC( QSQLFIELD_DEFAULTVALUE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->defaultValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void setDefaultValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QSQLFIELD_SETDEFAULTVALUE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setDefaultValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isAutoValue () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAutoValue (  ) );
  }
}

/*
void setAutoValue ( bool autoVal )
*/
HB_FUNC_STATIC( QSQLFIELD_SETAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoValue ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isGenerated () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISGENERATED )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isGenerated (  ) );
  }
}

/*
void setGenerated ( bool gen )
*/
HB_FUNC_STATIC( QSQLFIELD_SETGENERATED )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGenerated ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISNULL )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISREADONLY )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
}

/*
void setReadOnly ( bool readOnly )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREADONLY )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISVALID )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int length () const
*/
HB_FUNC_STATIC( QSQLFIELD_LENGTH )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}

/*
void setLength ( int fieldLength )
*/
HB_FUNC_STATIC( QSQLFIELD_SETLENGTH )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLength ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString name () const
*/
HB_FUNC_STATIC( QSQLFIELD_NAME )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}

/*
void setName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLFIELD_SETNAME )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int precision () const
*/
HB_FUNC_STATIC( QSQLFIELD_PRECISION )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->precision (  ) );
  }
}

/*
void setPrecision ( int precision )
*/
HB_FUNC_STATIC( QSQLFIELD_SETPRECISION )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPrecision ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
RequiredStatus requiredStatus () const
*/
HB_FUNC_STATIC( QSQLFIELD_REQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->requiredStatus (  );
    hb_retni( i );
  }
}

/*
void setRequiredStatus ( RequiredStatus required )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRequiredStatus (  (QSqlField::RequiredStatus) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRequired ( bool required )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREQUIRED )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRequired ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant::Type type () const
*/
HB_FUNC_STATIC( QSQLFIELD_TYPE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}

/*
void setType ( QVariant::Type type )
*/
HB_FUNC_STATIC( QSQLFIELD_SETTYPE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QVariant::Type) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value () const
*/
HB_FUNC_STATIC( QSQLFIELD_VALUE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void setValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QSQLFIELD_SETVALUE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSqlType(int type)
*/
HB_FUNC_STATIC( QSQLFIELD_SETSQLTYPE )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSqlType ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int typeID() const
*/
HB_FUNC_STATIC( QSQLFIELD_TYPEID )
{
  QSqlField * obj = (QSqlField *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->typeID (  ) );
  }
}



HB_FUNC_STATIC( QSQLFIELD_NEWFROM )
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

HB_FUNC_STATIC( QSQLFIELD_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QSQLFIELD_NEWFROM );
}

HB_FUNC_STATIC( QSQLFIELD_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QSQLFIELD_NEWFROM );
}

HB_FUNC_STATIC( QSQLFIELD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLFIELD_SETSELFDESTRUCTION )
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