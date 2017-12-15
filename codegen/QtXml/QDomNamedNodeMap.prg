$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNODE
#endif

CLASS QDomNamedNodeMap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD contains
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD length
   METHOD namedItem
   METHOD namedItemNS
   METHOD removeNamedItem
   METHOD removeNamedItemNS
   METHOD setNamedItem
   METHOD setNamedItemNS
   METHOD size

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

$prototype=QDomNamedNodeMap ()
$constructor=|new1|

$prototype=QDomNamedNodeMap ( const QDomNamedNodeMap & n )
$constructor=|new2|const QDomNamedNodeMap &

//[1]QDomNamedNodeMap ()
//[2]QDomNamedNodeMap ( const QDomNamedNodeMap & n )

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNAMEDNODEMAP(1) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool contains ( const QString & name ) const
$method=|bool|contains|const QString &

$prototype=int count () const
$method=|int|count|

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=QDomNode item ( int index ) const
$method=|QDomNode|item|int

$prototype=uint length () const
$method=|uint|length|

$prototype=QDomNode namedItem ( const QString & name ) const
$method=|QDomNode|namedItem|const QString &

$prototype=QDomNode namedItemNS ( const QString & nsURI, const QString & localName ) const
$method=|QDomNode|namedItemNS|const QString &,const QString &

$prototype=QDomNode removeNamedItem ( const QString & name )
$method=|QDomNode|removeNamedItem|const QString &

$prototype=QDomNode removeNamedItemNS ( const QString & nsURI, const QString & localName )
$method=|QDomNode|removeNamedItemNS|const QString &,const QString &

$prototype=QDomNode setNamedItem ( const QDomNode & newNode )
$method=|QDomNode|setNamedItem|const QDomNode &

$prototype=QDomNode setNamedItemNS ( const QDomNode & newNode )
$method=|QDomNode|setNamedItemNS|const QDomNode &

$prototype=int size () const
$method=|int|size|

$extraMethods

#pragma ENDDUMP
