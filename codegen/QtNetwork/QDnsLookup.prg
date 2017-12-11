$header

#include "hbclass.ch"

CLASS QDnsLookup INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD error
   METHOD errorString
   METHOD isFinished
   METHOD name
   METHOD setName
   METHOD setType
   METHOD type
   METHOD abort
   METHOD lookup

   METHOD onFinished
   METHOD onNameChanged
   METHOD onTypeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDnsLookup(QObject * parent = 0)
$constructor=|new1|QObject *=0

$prototype=QDnsLookup(Type type, const QString & name, QObject * parent = 0)
$constructor=|new2|QDnsLookup::Type,const QString &,QObject *=0

//[1]QDnsLookup(QObject * parent = 0)
//[2]QDnsLookup(Type type, const QString & name, QObject * parent = 0)

HB_FUNC_STATIC( QDNSLOOKUP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDNSLOOKUP_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QDNSLOOKUP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Error error() const
$method=|QDnsLookup::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString & name)
$method=|void|setName|const QString &

$prototype=void setType(QDnsLookup::Type)
$method=|void|setType|QDnsLookup::Type

$prototype=Type type() const
$method=|QDnsLookup::Type|type|

$prototype=void abort()
$method=|void|abort|

$prototype=void lookup()
$method=|void|lookup|

#pragma ENDDUMP
