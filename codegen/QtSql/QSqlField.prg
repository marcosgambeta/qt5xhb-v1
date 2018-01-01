%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
$internalConstructor=|new1|const QString &=QString(),QVariant::Type=QVariant::Invalid

$prototype=QSqlField ( const QSqlField & other )
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

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant defaultValue () const
$method=|QVariant|defaultValue|

$prototype=void setDefaultValue ( const QVariant & value )
$method=|void|setDefaultValue|const QVariant &

$prototype=bool isAutoValue () const
$method=|bool|isAutoValue|

$prototype=void setAutoValue ( bool autoVal )
$method=|void|setAutoValue|bool

$prototype=bool isGenerated () const
$method=|bool|isGenerated|

$prototype=void setGenerated ( bool gen )
$method=|void|setGenerated|bool

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=void setReadOnly ( bool readOnly )
$method=|void|setReadOnly|bool

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int length () const
$method=|int|length|

$prototype=void setLength ( int fieldLength )
$method=|void|setLength|int

$prototype=QString name () const
$method=|QString|name|

$prototype=void setName ( const QString & name )
$method=|void|setName|const QString &

$prototype=int precision () const
$method=|int|precision|

$prototype=void setPrecision ( int precision )
$method=|void|setPrecision|int

$prototype=RequiredStatus requiredStatus () const
$method=|QSqlField::RequiredStatus|requiredStatus|

$prototype=void setRequiredStatus ( RequiredStatus required )
$method=|void|setRequiredStatus|QSqlField::RequiredStatus

$prototype=void setRequired ( bool required )
$method=|void|setRequired|bool

$prototype=QVariant::Type type () const
$method=|QVariant::Type|type|

$prototype=void setType ( QVariant::Type type )
$method=|void|setType|QVariant::Type

$prototype=QVariant value () const
$method=|QVariant|value|

$prototype=void setValue ( const QVariant & value )
$method=|void|setValue|const QVariant &

$prototype=void setSqlType(int type)
$method=|void|setSqlType|int

$prototype=int typeID() const
$method=|int|typeID|

$extraMethods

#pragma ENDDUMP
