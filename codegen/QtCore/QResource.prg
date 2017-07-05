$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QLOCALE
#endif

CLASS QResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD data
   METHOD fileName
   METHOD isCompressed
   METHOD isValid
   METHOD locale
   METHOD setFileName
   METHOD setLocale
   METHOD size
   METHOD registerResource
   METHOD unregisterResource

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
QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
*/
HB_FUNC_STATIC( QRESOURCE_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && (ISQLOCALE(2)||ISNIL(2)) )
  {
    QLocale par2 = ISNIL(2)? QLocale() : *(QLocale *) _qt5xhb_itemGetPtr(2);
    QResource * o = new QResource ( OPQSTRING(1,QString()), par2 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString absoluteFilePath () const
*/
$method=|QString|absoluteFilePath|

/*
const uchar * data () const
*/
HB_FUNC_STATIC( QRESOURCE_DATA )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const uchar * ptr = obj->data ();
    _qt5xhb_createReturnClass ( ptr, "UCHAR" );
  }
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool isCompressed () const
*/
$method=|bool|isCompressed|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QLocale locale () const
*/
HB_FUNC_STATIC( QRESOURCE_LOCALE )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setFileName ( const QString & file )
*/
$method=|void|setFileName|const QString &

/*
void setLocale ( const QLocale & locale )
*/
$method=|void|setLocale|const QLocale &

/*
qint64 size () const
*/
$method=|qint64|size|

/*
static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC_STATIC( QRESOURCE_REGISTERRESOURCE )
{
  if( ISCHAR(1) && ISOPTCHAR(2) )
  {
    RBOOL( QResource::registerResource ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC_STATIC( QRESOURCE_UNREGISTERRESOURCE )
{
  if( ISCHAR(1) && ISOPTCHAR(2) )
  {
    RBOOL( QResource::unregisterResource ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
