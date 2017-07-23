$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD name
   METHOD namespaceUri
   METHOD prefix
   METHOD qualifiedName
   METHOD value

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
QXmlStreamAttribute()
*/
$internalConstructor=|new1|

/*
QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
*/
$internalConstructor=|new2|const QString &,const QString &

/*
QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
$internalConstructor=|new3|const QString &,const QString &,const QString &

/*
QXmlStreamAttribute(const QXmlStreamAttribute & other)
*/
$internalConstructor=|new4|const QXmlStreamAttribute &

//[1]QXmlStreamAttribute()
//[2]QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
//[3]QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[4]QXmlStreamAttribute(const QXmlStreamAttribute & other)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamAttribute_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttribute_new2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamAttribute_new3();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTES(1) )
  {
    QXmlStreamAttribute_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isDefault() const
*/
$method=|bool|isDefault|

/*
QStringRef name() const
*/
$method=|QStringRef|name|

/*
QStringRef namespaceUri() const
*/
$method=|QStringRef|namespaceUri|

/*
QStringRef prefix() const
*/
$method=|QStringRef|prefix|

/*
QStringRef qualifiedName() const
*/
$method=|QStringRef|qualifiedName|

/*
QStringRef value() const
*/
$method=|QStringRef|value|

$extraMethods

#pragma ENDDUMP
