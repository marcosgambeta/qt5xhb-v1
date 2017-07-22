$header

#include "hbclass.ch"

CLASS QMimeType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD isDefault
   METHOD name
   METHOD comment
   METHOD genericIconName
   METHOD iconName
   METHOD globPatterns
   METHOD parentMimeTypes
   METHOD allAncestors
   METHOD aliases
   METHOD suffixes
   METHOD preferredSuffix
   METHOD inherits
   METHOD filterString

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

#include <QStringList>

/*
QMimeType()
*/
$internalConstructor=|new1|

/*
QMimeType(const QMimeType &other)
*/
$internalConstructor=|new2|const QMimeType &

//[1]QMimeType()
//[2]QMimeType(const QMimeType &other)

HB_FUNC_STATIC( QMIMETYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMimeType_new1();
  }
  else if( ISNUMPAR(1) && ISQMIMETYPE(1) )
  {
    QMimeType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QMimeType &other)
*/
$method=|void|swap|QMimeType &

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool isDefault() const
*/
$method=|bool|isDefault|

/*
QString name() const
*/
$method=|QString|name|

/*
QString comment() const
*/
$method=|QString|comment|

/*
QString genericIconName() const
*/
$method=|QString|genericIconName|

/*
QString iconName() const
*/
$method=|QString|iconName|

/*
QStringList globPatterns() const
*/
$method=|QStringList|globPatterns|

/*
QStringList parentMimeTypes() const
*/
$method=|QStringList|parentMimeTypes|

/*
QStringList allAncestors() const
*/
$method=|QStringList|allAncestors|

/*
QStringList aliases() const
*/
$method=|QStringList|aliases|

/*
QStringList suffixes() const
*/
$method=|QStringList|suffixes|

/*
QString preferredSuffix() const
*/
$method=|QString|preferredSuffix|

/*
bool inherits(const QString &mimeTypeName) const
*/
$method=|bool|inherits|const QString &

/*
QString filterString() const
*/
$method=|QString|filterString|

$extraMethods

#pragma ENDDUMP
