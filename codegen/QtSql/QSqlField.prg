$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSqlField

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
*/
void QSqlField_new1 ()
{
  int par2 = ISNIL(2)? (int) QVariant::Invalid : hb_parni(2);
  QSqlField * o = new QSqlField ( OPQSTRING(1,QString()), (QVariant::Type) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlField ( const QSqlField & other )
*/
void QSqlField_new2 ()
{
  QSqlField * o = new QSqlField ( *PQSQLFIELD(1) );
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

$deleteMethod

/*
void clear ()
*/
HB_FUNC_STATIC( QSQLFIELD_CLEAR )
{
  QSqlField * obj = (QSqlField *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
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
    QVariant * ptr = new QVariant( obj->defaultValue () );
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
      obj->setDefaultValue ( *PQVARIANT(1) );
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
    RBOOL( obj->isAutoValue () );
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
    RBOOL( obj->isGenerated () );
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
    RBOOL( obj->isNull () );
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
    RBOOL( obj->isReadOnly () );
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
    RBOOL( obj->isValid () );
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
    RINT( obj->length () );
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
    RQSTRING( obj->name () );
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
    RINT( obj->precision () );
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
    hb_retni( obj->requiredStatus () );
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
      obj->setRequiredStatus ( (QSqlField::RequiredStatus) hb_parni(1) );
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
    hb_retni( obj->type () );
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
      obj->setType ( (QVariant::Type) hb_parni(1) );
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
    QVariant * ptr = new QVariant( obj->value () );
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
      obj->setValue ( *PQVARIANT(1) );
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
    RINT( obj->typeID () );
  }
}

$extraMethods

#pragma ENDDUMP
