/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSqlField

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlField>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlField>
#endif

/*
explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
*/
void QSqlField_new1 ()
{
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) QVariant::Invalid : hb_parni(2);
  QSqlField * o = new QSqlField ( par1,  (QVariant::Type) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlField ( const QSqlField & other )
*/
void QSqlField_new2 ()
{
  QSqlField * par1 = (QSqlField *) _qt5xhb_itemGetPtr(1);
  QSqlField * o = new QSqlField ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
//[2]QSqlField ( const QSqlField & other )

HB_FUNC_STATIC( QSQLFIELD_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && ISOPTNUM(2) )
  {
    QSqlField_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    QSqlField_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLFIELD_DELETE )
{
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
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSQLFIELD_CLEAR )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->defaultValue (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void setDefaultValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QSQLFIELD_SETDEFAULTVALUE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
      obj->setDefaultValue ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isAutoValue () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoValue ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isGenerated () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISGENERATED )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setGenerated ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISNULL )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISVALID )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLength ( PINT(1) );
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
HB_FUNC_STATIC( QSQLFIELD_NAME )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int precision () const
*/
HB_FUNC_STATIC( QSQLFIELD_PRECISION )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPrecision ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
RequiredStatus requiredStatus () const
*/
HB_FUNC_STATIC( QSQLFIELD_REQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->requiredStatus (  ) );
  }
}

/*
void setRequiredStatus ( RequiredStatus required )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setRequiredStatus (  (QSqlField::RequiredStatus) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRequired ( bool required )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREQUIRED )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setRequired ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant::Type type () const
*/
HB_FUNC_STATIC( QSQLFIELD_TYPE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

/*
void setType ( QVariant::Type type )
*/
HB_FUNC_STATIC( QSQLFIELD_SETTYPE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setType (  (QVariant::Type) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value () const
*/
HB_FUNC_STATIC( QSQLFIELD_VALUE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void setValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QSQLFIELD_SETVALUE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
      obj->setValue ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSqlType(int type)
*/
HB_FUNC_STATIC( QSQLFIELD_SETSQLTYPE )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setSqlType ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int typeID() const
*/
HB_FUNC_STATIC( QSQLFIELD_TYPEID )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

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
  HB_FUNC_EXEC( QSQLFIELD_NEWFROM );
}

HB_FUNC_STATIC( QSQLFIELD_NEWFROMPOINTER )
{
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
