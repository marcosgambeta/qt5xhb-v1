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
$internalConstructor=|new1|const QString &=QString(),QVariant::Type=QVariant::Invalid

/*
QSqlField ( const QSqlField & other )
*/
$internalConstructor=|new2|const QSqlField &

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
$method=|void|clear|

/*
QVariant defaultValue () const
*/
$method=|QVariant|defaultValue|

/*
void setDefaultValue ( const QVariant & value )
*/
$method=|void|setDefaultValue|const QVariant &

/*
bool isAutoValue () const
*/
$method=|bool|isAutoValue|

/*
void setAutoValue ( bool autoVal )
*/
$method=|void|setAutoValue|bool

/*
bool isGenerated () const
*/
$method=|bool|isGenerated|

/*
void setGenerated ( bool gen )
*/
$method=|void|setGenerated|bool

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
void setReadOnly ( bool readOnly )
*/
$method=|void|setReadOnly|bool

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int length () const
*/
$method=|int|length|

/*
void setLength ( int fieldLength )
*/
$method=|void|setLength|int

/*
QString name () const
*/
$method=|QString|name|

/*
void setName ( const QString & name )
*/
$method=|void|setName|const QString &

/*
int precision () const
*/
$method=|int|precision|

/*
void setPrecision ( int precision )
*/
$method=|void|setPrecision|int

/*
RequiredStatus requiredStatus () const
*/
$method=|QSqlField::RequiredStatus|requiredStatus|

/*
void setRequiredStatus ( RequiredStatus required )
*/
$method=|void|setRequiredStatus|QSqlField::RequiredStatus

/*
void setRequired ( bool required )
*/
$method=|void|setRequired|bool

/*
QVariant::Type type () const
*/
$method=|QVariant::Type|type|

/*
void setType ( QVariant::Type type )
*/
$method=|void|setType|QVariant::Type

/*
QVariant value () const
*/
$method=|QVariant|value|

/*
void setValue ( const QVariant & value )
*/
$method=|void|setValue|const QVariant &

/*
void setSqlType(int type)
*/
$method=|void|setSqlType|int

/*
int typeID() const
*/
$method=|int|typeID|

$extraMethods

#pragma ENDDUMP
